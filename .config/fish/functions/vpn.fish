# Defined in - @ line 0
function vpn --description 'alias vpn sudo openvpn --config ~/.config/trustzone/Trust.Zone-Netherlands.ovpn'
	sudo openvpn --config ~/.config/trustzone/Trust.Zone-Netherlands.ovpn $argv;
end
