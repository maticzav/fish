set PATH /usr/local/Cellar/node/8.5.0/bin /usr/local/bin $PATH
set code /Users/maticzavadlal/Code

function code
  cd $code
end

function activate
  source ./venv/bin/activate.fish
end

function reload_spotlight
  sudo mdutil -a -i off
  sudo mdutil -a -i on
end

function fish_prompt
  echo "❯" (basename $PWD) "~" ""
end

function spoof_mac
  sudo ifconfig en0 ether `openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//'`
end

function list_devices
  ls /dev/tty.*
end

function sleep
  pmset sleepnow
end

function wake
  pmset noidle
end

function init_py3
  python3 -m venv venv
end
