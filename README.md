# Temporary File Cleaner with Progress Bar

This is a simple Windows batch script that cleans temporary files with a visual progress bar and a 10-second timer.

## Features

- Clean temporary files from the user's temp folder.
- Display a visual progress bar during the cleaning process.
- Automatically exit after cleaning or allow the user to exit manually.
- Timer-based cleaning to ensure that the cleaning process does not run indefinitely.

## Prerequisites

- Windows operating system.
- A basic understanding of batch scripting.

## Usage

1. Download the batch script (`.bat`) from this repository.

2. Double-click the batch script to run it.

3. Choose option `1` to clean temporary files:

   - The script will display a progress bar and clean temporary files.
   - The cleaning process will continue for 10 seconds, after which it will complete.

4. After the cleaning process is complete, you can choose to exit the script by selecting option `2`.

## Customization

You can customize the script by modifying the following variables:

- `tempFolder`: Set the folder path where you want to clean temporary files.
- `barSize`: Adjust the size of the progress bar.
- Delay duration: Modify the delay duration for controlling the speed of the progress bar.


