if [[ -f /etc/bashrc ]]; then
  . /etc/bashrc
fi

# see https://github.com/janmoesen/tilde/blob/master/.bashrc
if [[ -n ${PS1} ]]; then
  . "${HOME}/.bash_profile";
fi;
