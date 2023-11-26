if [[ -n "$1" ]]; then
    mkdir -p temp;  # Create 'temp' folder if it doesn't exist
    touch temp/files.txt;  # Create 'files.txt' inside 'temp' folder
    counter=1;

    while read line; do
        if [[ "$line" == "http"* ]]; then
            curl --silent -o temp/${counter}.mp4 "$line";
            echo "file ${counter}.mp4" >> temp/files.txt;
            ((counter++));
        fi;
    done < "$1";

    ffmpeg -protocol_whitelist file,http,https,tcp,tls,crypto -f concat -safe 0 -i temp/files.txt -codec copy temp/output.mp4;

    echo "Files and files.txt moved to 'temp' folder.";

else
    echo 'Usage: video <file.m3u8>';
fi