#!/bin/bash

environment=$(uname -s)

if [[ "$OSTYPE" == "darwin"* ]]; then
   brew install ffmpeg
else
   sudo apt-get update
   sudo apt install ffmpeg
fi

python3.11 -m venv venv
source venv/bin/activate
pip install -r requirements.txt


# Example cmd:
 
python inference-cli.py \
    --model "F5-TTS" \
    --ref_audio "reference_data/wheatley.mp3" \
    --ref_text "And 40 potato batteries. Embarrassing. I mean, I realize they're children, but still, you know, low hanging fruit and all that. Barely science really is it?" \
    --gen_text "Generative AI is one of the most groundbreaking innovations of recent years. By leveraging machine learning models, it enables the creation of new data, such as text, images, music, and much more."


deactivate