# BLS Image Stitcher
Helper script to vertically stitch together standings sheet images produced by
BLS.

The script is written as a Windows batch file. With the help of ImageMagick,
the script takes a series of images (e.g. standings sheets) exported by BLS and
produces a single image of those images stitched vertically. The single image
can then be displayed on the web.

The script performs the following:
* Stitches (appends) the images vertically into a single image
* Deletes the original images after completion

BLS - developed by CDE Software, https://www.cdesoftware.com/.

ImageMagick - free software used to create, edit, compose, or convert digital
images, https://imagemagick.org/.

---

## Requirements
* ImageMagick installed and added to the Windows PATH environment variable
* BLS exported images (e.g. Standings Sheets)

---

## Export BLS Images (Standing Sheet)
1. Open League in BLS
2. Click 'Weekly' -> 'Finalize' -> 'Standing Sheet'
3. Click 'Export' -> 'Image (.bpm, .jpg, .png)
    * File name: Browse to location (should be same directory as script)
    * Save as type: PNG Image (*.png) [script default]
4. Click 'Save'

---

## Script Configuration
Edit the variables in the bls_image_stitcher.cmd script to match your
environment.
* base_filename - File name prefix from step #3 above (without extension)
* base_extension - The extension from step #3 above (e.g. '.png')

---

## Example
The script can be run a number of ways, one being to double-click on the
bls_image_stitcher.cmd

```
Run 'bls_image_stitcher.cmd' in Command Prompt
```
```
Run '.\bls_image_stitcher.cmd' in Windows PowerShell
```