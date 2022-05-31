#/usr/bin/env bash
_pass_completions()
{
  if [ "${#COMP_WORDS[@]}" -lt 2 ] ; then
    COMPREPLY=($(compgen -W "list get add del ssh help" "${COMP_WORDS[1]}"))
  elif [[ "${COMP_WORDS[1]}" == "get" || "${COMP_WORDS[1]}" == "del" ]] ; then
    COMPREPLY=($(compgen -W "$(cat $PW_PATH/pw.txt | awk -F ':::::' 'BEGIN { ORS=" " }; {print $1}')" -- "${COMP_WORDS[2]}"))
  else
    COMPREPLY=()
  fi
}

complete -F _pass_completions pw
