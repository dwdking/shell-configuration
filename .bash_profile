#if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
#    GIT_PROMPT_ONLY_IN_REPO=1
#    source $HOME/.bash-git-prompt/gitprompt.sh
#fi

# Ensures the JAVA_HOME and JDK_HOME are set based off of the current update_alternatives java path
export JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")
export JDK_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")

# Configures git-radar from https://github.com/michaeldfallen/git-radar
export PATH=$PATH:$HOME/.git-radar
export PS1="$PS1\$(git-radar --bash --fetch)"

alias editBash='subl ~/.bash/.bash_profile'
alias gw='./gradlew'

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
