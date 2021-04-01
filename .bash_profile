# Ensures the JAVA_HOME and JDK_HOME are set based off of the current update_alternatives java path
export JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")
export JDK_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")

# Configures git-radar from https://github.com/dwdking/git-radar
export PATH=$PATH:$HOME/.git-radar:/opt/gradle/gradle-6.8.3/bin:/usr/local/go/bin
export PS1="$PS1\$(git-radar --bash --fetch)"

export EDITOR=subl

extract () {
        if [ -f $1 ] ; then
          case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *.jar)       unzip $1       ;;
            *.war)       unzip $1       ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
             esac
         else
             echo "'$1' is not a valid file"
         fi
    }

#Node Version Manager configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
