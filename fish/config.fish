set -g fish_greeting ""

if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_vi_key_bindings
fish_vi_cursor

alias ls=exa

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

function setproxy
	set -g http_proxy http://127.0.0.1:7897
	set -g https_proxy http://127.0.0.1:7897
	set -g all_proxy socks5://127.0.0.1:7897
end

function unsetproxy
	set -e http_proxy
	set -e https_proxy
	set -e all_proxy
end
