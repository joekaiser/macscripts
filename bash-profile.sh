export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced


alias prettyjson="python -mjson.tool"

function ps2
{
    ps ax | grep $1 --color=always
}

source ~/scripts/git-completion.sh
source ~/scripts/git-prompt.sh
