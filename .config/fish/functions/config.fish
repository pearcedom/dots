# Defined in - @ line 0
function config --description 'alias config=/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'
	/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME $argv;
end
