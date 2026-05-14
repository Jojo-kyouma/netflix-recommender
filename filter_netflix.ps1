$inputFile = "NetflixViewingHistory.csv"
$outputFile = "NetflixLiked.txt"

if (-not (Test-Path $inputFile)) { 
    Write-Host "Error: $inputFile not found."
    exit 
}

$csv = Import-Csv $inputFile
$uniqueHits = New-Object System.Collections.Generic.HashSet[string]
$currentStreak = 0
$lastShow = ""

foreach ($row in $csv) {
    # Extract show name (before the first colon)
    $showName = ($row.Title -split ':')[0].Trim()

    if ($showName -eq $lastShow) {
        $currentStreak++
    } else {
        # Check if the previous streak qualifies (3 or more)
        if ($currentStreak -ge 3) { [void]$uniqueHits.Add($lastShow) }
        
        $lastShow = $showName
        $currentStreak = 1
    }
}

# Final check for the trailing streak
if ($currentStreak -ge 3) { [void]$uniqueHits.Add($lastShow) }

# Write raw strings to file (no header)
$uniqueHits | Set-Content $outputFile -Encoding utf8
Write-Host "Success! Filtered series saved to $outputFile."