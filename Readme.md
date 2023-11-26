# Download videos from m3u8 playlist files

## Prerequisites

- **ffmpeg:**
    - Ensure that `ffmpeg` is installed on your system. This script relies on `ffmpeg` for video processing.

## Single Mode: Run `video.sh`

### Purpose
This script is designed to process individual `m3u8` files. It reads a given `m3u8` file, downloads the video segments specified in the file, concatenates them into a single video file, you can find video in temp folder with name `output.mp4`.

### Usage
```bash
./video.sh [file.m3u8]
```

### Example
```bash
./video.sh /path/to/your/file.m3u8
```

or Mac
```bash
sh video.sh /path/to/your/file.m3u8
```

# Multiple mode: Run `downloader.sh`

## Purpose

This script automates the processing of multiple `m3u8` files in a batch mode. It iterates through all `m3u8` files in the specified or default 'input' folder, runs the `video.sh` script for each, and then moves the output files to the 'video' folder. The name of video files will be the same as of m3u8 files.

## Usage

```bash
./downloader.sh [input_folder](optional)
```

or Mac

```bash
sh downloader.sh /path/to/your/file.m3u8
```