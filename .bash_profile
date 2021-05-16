# check whether the current user has a $HOME/bin and if so add it to the PATH
[ -d "${HOME}/bin" ] && export PATH="${HOME}/bin:${PATH}";
# add node_modules/.bin as a relative path to the PATH
export PATH="node_modules/.bin:${PATH}";
# remove duplicates from the path
export PATH=$(awk -F: '{for(i=1;i<=NF;i++){if(!($i in a)){a[$i];printf s$i;s=":"}}}'<<<"${PATH}");

# use solarized dircolors if available
if command -v dircolors > /dev/null; then
  [[ -e $HOME/dircolors ]] && eval $(dircolors "${HOME}/dircolors");
fi;

for file in "$(dirname "${BASH_SOURCE}")"/.bash/{exports,aliases,prompt,completion}; do
  [[ -r ${file} ]] && source "${file}";
done;
unset file;
