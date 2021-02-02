#!/bin/bash

pip install chime
pip install gdown

theme_path=$(python -c "import chime; print('/'.join(str(chime.current_theme_dir()).split('/')[:-1]))")
theme_path=$theme_path"/gachi"
mkdir "$theme_path"
cd /tmp
mkdir chimes
cd chimes
gdown https://drive.google.com/uc?id=1uo4ObQuPfZsk68b1980j0VdAlhROk5Yd
tar -xf gachi_wavs.tar.xz
cp *.wav $theme_path
rm -rf /tmp/chimes
