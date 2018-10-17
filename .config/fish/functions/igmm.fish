# Defined in - @ line 0
function igmm --description 'alias igmm ssh -L 4321:localhost:4321 -L 8100:localhost:8100 dom@129.215.158.86'
	ssh -L 4321:localhost:4321 -L 8100:localhost:8100 dom@129.215.158.86 $argv;
end
