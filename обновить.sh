#!/bin/sh
# Пересобрать доску и выложить её на GitHub Pages.
V="/Users/uliaudacina/Documents/Вархаммер"
S="/Users/uliaudacina/Documents/Вархаммер-сайт"
python3 "$V/Разбор/.сборка-доски.py" || exit 1
cp "$V/Разбор/Доска заговора.html" "$S/index.html"
rm -rf "$S/img"
[ -d "$V/Разбор/img" ] && cp -R "$V/Разбор/img" "$S/img"
cd "$S" || exit 1
git add -A && git commit -m "Доска заговора: обновление" && git push
