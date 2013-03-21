# bash_functions
# Last modified: 2013-03-21
# Author: François LASSERRE <choiz@me.com>
# License: GNU GPL http://www.gnu.org/licenses/gpl.html

# Rm '.svn' folder
svnclean () {
	find . -name ".svn" -type d -exec rm -rf {} \;
}

# Unzip in a folder
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
	ip=`curl -s $1|tail -n1|cut -d " " -f3|base64 -D`
	echo $ip
}
