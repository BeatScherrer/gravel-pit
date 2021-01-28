#!/usr/bin/zsh

# this script should take the colors from a given .Xresource file (or the one in ~ if not specified) and paste it to the jsonnet color theme file to get a consistent experience in the vscode terminal

function main() {
  verbose=1
  xresources_file="$HOME/.Xresources"

  theme_file=$1
  
  while getopts "hfv" opt; do
    case "$opt" in
      v)
        verbose=true
        ;;
      f)
        file=${OPTARG}
        echo ${OPTARG}
        xresources_file=${file}
        ;;
      h)
        showHelp
        exit 0
        ;;
      *)
        showHelp
        exit 0
        ;;
    esac
  done
  shift $((OPTIND-1))

  # start extracting the colors
  echo "extracting colors from: $xresources_file..."

  # get all colors
  foreground=$(getColorFromXresources foreground)
  background=$(getColorFromXresources background)
  cursor_color=$(getColorFromXresources cursorColor)

  # black
  color0=$(getColorFromXresources color0)
  color8=$(getColorFromXresources color8)

  # red
  color1=$(getColorFromXresources color1)
  color9=$(getColorFromXresources color9)

  # green
  color2=$(getColorFromXresources color2)
  color10=$(getColorFromXresources color10)

  # yellow
  color3=$(getColorFromXresources color3)
  color11=$(getColorFromXresources color11)

  # blue
  color4=$(getColorFromXresources color4)
  color12=$(getColorFromXresources color12)

  # magenta
  color5=$(getColorFromXresources color5)
  color13=$(getColorFromXresources color13)

  # cyan
  color6=$(getColorFromXresources color6)
  color14=$(getColorFromXresources color14)

  # white
  color7=$(getColorFromXresources color7)
  color15=$(getColorFromXresources color15)

  # done extracting colors
  echo "... colors extracted!"

  # replace the colors in the theme file
  replaceInJsonnet $theme_file
}

function showHelp() {
  echo "Usage: $0 [-v|f|h] -- theme_file"
}


function getColorFromXresources() {
  input_color=$1

  if [[ -n $1 ]]; then
    color=$(cat ${xresources_file} | grep ${input_color} | xargs | cut -d ' ' -f 2)
    echo ${color}
  fi
}

function replaceInJsonnet() {
  local theme_file=$1

  if [[ -z $theme_file ]];then
    echo "error: pass theme file name (.jsonnet) to $0"
    exit 1
  fi

  # jsonnet_file="../vscode_theme/gravel-pit/gravel-pit-color-theme-dark.jsonnet"
  echo "replacing in jsonnet file ${theme_file}"

  # insert color block
  string=$(cat << EOF
\    foreground:      \"${foreground}\",\n\
    background:      \"${background}\",\n\
    cursor_color:    \"${cursor_color}\",\n\
    // terminal colors\n\
    black:           \"${color0}\",\n\
    bright_black:    \"${color8}\",\n\
    white:           \"${color7}\",\n\
    bright_white:    \"${color15}\",\n\
    red:             \"${color1}\",\n\
    bright_red:      \"${color15}\",\n\
    green:           \"${color2}\",\n\
    bright_green:    \"${color10}\",\n\
    blue:            \"${color4}\",\n\
    bright_blue:     \"${color12}\",\n\
    yellow:          \"${color3}\",\n\
    bright_yellow:   \"${color11}\",\n\
    magenta:         \"${color5}\",\n\
    bright_magenta:  \"${color13}\",\n\
    cyan:            \"${color6}\",\n\
    bright_cyan:     \"${color14}\",
EOF
)

  # delete from foreground to bright_cyan
  sed -i '/foreground:\s*".*"/,/bright_cyan:\s*".*"/d' ${theme_file} 

  # insert the color block 
  sed -i "\|special colors|a ${string}" ${theme_file}
}

# --------
# run main
# --------
main "$@"
