alias ll='ls -lFhp'
alias la='ls -alFhp'
alias cp='cp --interactive --verbose'
alias mv='mv --interactive --verbose'
alias mkdir='mkdir --parents --verbose'
alias less='less -FSRXc'
cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias editBash='subl ~/.bash/.bash_profile'
alias gradlew='./gradlew'
alias editGradle='sublime ~/.gradle/gradle.properties'
alias editNpm='sublime ~/.npmrc'
alias editSsh='sublime ~/.ssh/config'
alias analyzeDiskSpace='du -sch .[!.]* * | sort -h | more'
alias reloadBash='source ~/.bash_profile'
alias home='cd ~'
alias g='git'
