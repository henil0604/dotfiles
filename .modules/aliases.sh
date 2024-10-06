alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias python=python3

function _gccbin() {
   filepath="$1"
   filename=$(basename "$filepath" .c)
   dir=$(dirname "$filepath")
   output_file="$dir/$filename.bin"
   gcc -o "$output_file" "$filepath" 2> >(tee /dev/stderr)
   if [ $? -eq 0 ]; then
       "$output_file"
   else
       echo "Compilation failed. Check the errors above."
   fi
};
alias gccbin=_gccbin