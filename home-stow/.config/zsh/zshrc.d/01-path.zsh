### HomeBrew ###
export PATH=/opt/homebrew/bin:$PATH
export PATH=/opt/homebrew/sbin:$PATH
if [[ "$(uname -s)" == "Darwin" ]]; then
	echo 'To install homebrew:'
	echo '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'
fi

### Package Manager ###
export PATH="$HOME/.local/share/cargo/bin:$PATH"
#export PATH="$HOME/.krew/bin:$PATH"
#export PATH="$HOME/.local/bin:$PATH"

### My local ###
#export PATH=$CTG/bin:$PATH
