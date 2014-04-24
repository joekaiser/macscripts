export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced


alias prettyjson="python -mjson.tool"
alias reloadzsh="source ~/.zshrc"
alias mci="mvn clean install -DskipITs -DskipTests"
alias mcit="mvn clean install -PITEST"
alias jira="open 'http://jira.bellevue.ad.local/secure/Dashboard.jspa'"
alias gerrit="open 'https://gerrit.bellevue.agilysys.com:8443/#/q/status:open,n,z'"

function ps2
{
    ps ax | grep $1 --color=always
}

function aclone
{
  pushd ~/dev
  git clone ssh://joek@gerrit.bellevue.agilysys.com:29418/$1.git
  cd $1
  scp -p -P 29418 joek@gerrit.bellevue.agilysys.com:hooks/commit-msg .git/hooks/
  popd
}

function vag
{
  cd ~/dev/Vagrant-PV
  vagrant $1
}

export JAVA_HOME=`/usr/libexec/java_home`
export MAVEN_OPTS="-Xmx2048m -Xms512m -XX:PermSize=768m -XX:MaxPermSize=3000m"
export CATALINA_OPTS="-XX:PermSize=2048m -XX:MaxPermSize=3000m"
export CATALINA_HOME="/opt/tomcat/latest"
#source ~/scripts/git-completion.sh
#source ~/scripts/git-prompt.sh
