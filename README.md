# Netflix Series Liked Filter

**For windows computer.**

This script generates a list of your most-liked Netflix series. It identifies series where you watched 3 or more episodes in a row and saves those titles to a new file.

### 1. Download your Netflix History
1. Go to https://www.netflix.com/settings/viewed, or do it manually:
   * Log in to **Netflix.com** on a web browser.
   * Go to **Account** > **Edit Settings** > **Viewing activity**.
4. Scroll to the very bottom and click **Download all**.
5. You will receive a file named `NetflixViewingHistory.csv`.
6. Move this file into the same folder as this script.

### 2. How to Use
1. Download this project as a ZIP and **Extract All**.
2. Ensure your `NetflixViewingHistory.csv` is in the extracted folder.
3. Double-click the file named `run_filter.bat`.
4. A new file named `NetflixLiked.txt` will be created containing your filtered series list.

### 3. Feed to Gemini
Feed it to AI and tell him to recommend you Series based on the provided list. Ask him to further filter the selection if you want, e.g. 
```
Ignore addictive, superficial, and formulaic titles during your selection-based recommendation.
```
