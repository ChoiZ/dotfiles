# ~/.bash_functions
# Author: François LASSERRE <choiz@me.com>
# License: GNU GPL http://www.gnu.org/licenses/gpl.html

# Rm '.svn' folder
svnclean () {
  find . -name ".svn" -type d -exec rm -rf {} \;
}

# Unzip in a folder
xzip() {
  var=`zipinfo $1|sed -n 2p|cut -d 'r' -f1`
  s=$1
  # maybe we can use ${$1%.zip} with antislash?
  folder=${s%.zip}

  if [ "$var" = "d" ]; then
    echo "The folder exist in zip file nothing to do (except unzip)."
    unzip $1
  else
    if [ -d $folder ]; then
      echo "The folder $folder already exist!"
    else
      echo "Unzip in the folder $folder."
      unzip $1 -d $folder
    fi
  fi
}

extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2) tar xvjf $1 && cd $(basename "$1" .tar.bz2) ;;
      *.tar.gz) tar xvzf $1 && cd $(basename "$1" .tar.gz) ;;
      *.tar.xz) tar Jxvf $1 && cd $(basename "$1" .tar.xz) ;;
      *.bz2) bunzip2 $1 && cd $(basename "$1" /bz2) ;;
      *.rar) unrar x $1 && cd $(basename "$1" .rar) ;;
      *.gz) gunzip $1 && cd $(basename "$1" .gz) ;;
      *.tar) tar xvf $1 && cd $(basename "$1" .tar) ;;
      *.tbz2) tar xvjf $1 && cd $(basename "$1" .tbz2) ;;
      *.tgz) tar xvzf $1 && cd $(basename "$1" .tgz) ;;
      *.zip) xzip $1 && cd $(basename "$1" .zip) ;; # unzip replace by my custom unzip `xzip`
      *.Z) uncompress $1 && cd $(basename "$1" .Z) ;;
      *.7z) 7z x $1 && cd $(basename "$1" .7z) ;;
      *) echo "don't know how to extract '$1'..." ;;
    esac
  else
    echo "'$1' is not a valid file!"
  fi
}

# Copy with progress
cpro() {
  rsync -WavP --human-readable --progress $1 $2
}

# Make directory and cd
mkc() {
  if [ $# -ne 1 ]; then
    echo "Usage: mkc <dir>"
    return 1
  else
    mkdir -p "$@" && cd "$_"
  fi
}

# Check PHP syntax
chkphp() {
  for file in `find .`
  do
    EXT="${file##*.}"
    if [ "$EXT" == "php" ]
    then
      RESULTS=`php -l $file`
      if [ "$RESULTS" != "No syntax errors detected in $file" ]
      then
        echo $RESULTS
      fi
    fi
  done
}

# Get Ip
# @param url $1
# get page with content like "my ip MTI3LjAuMC4x" MTI3LjAuMC4x == 127.0.0.1 base64
getIp() {
  ip=`curl -s $1|tail -n1|cut -d " " -f3|base64 -d`
  echo $ip
}

# Route this Ip to VPN
# @param ip $1
routeToVpn() {
  sudo route -v add -host $1 -interface ppp0
}

# Random password (without I,L,O,i,l,o,0)
function randompass() {
    < /dev/urandom tr -dc _A-H-J-K-M-N-P-Z-a-h-j-k-m-n-p-z-1-9 | head -c16
    echo
}
