function zip_bin(){
}
function git_bin(){
}

NotoColorEmoji="https://github.com/googlei18n/noto-emoji/raw/master/fonts/NotoColorEmoji.ttf"
Materia="https://github.com/nana-4/materia-theme"

fonts_dir=$XDG_DATA_HOME/fonts
themes_dir=$XDG_DATA_HOME/themes

zip_bin $font_dir $NotoColorEmoji
git_bin $theme_dir $Materia src
