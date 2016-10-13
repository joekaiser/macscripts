export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced


alias prettyjson="python -mjson.tool"
alias reloadzsh="source ~/.zshrc"

function ps2
{
    ps ax | grep $1 --color=always
}


export JAVA_HOME=`/usr/libexec/java_home`
export MAVEN_OPTS="-Xmx2048m -Xms512m -XX:PermSize=768m -XX:MaxPermSize=3000m"
export CATALINA_OPTS="-XX:PermSize=2048m -XX:MaxPermSize=3000m"
export CATALINA_HOME="/opt/tomcat/latest"
#source ~/scripts/git-completion.sh
#source ~/scripts/git-prompt.sh
