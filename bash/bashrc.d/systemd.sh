start() {
  sudo systemctl start $1.service
}

restart() {
  sudo systemctl restart $1.service
}

stop() {
  sudo systemctl stop $1.service
}

enable() {
  sudo systemctl enable $1.service
}

status() {
  sudo systemctl status $1.service
}

disable() {
  sudo systemctl disable $1.service
}
