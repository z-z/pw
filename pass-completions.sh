#/usr/bin/env bash
_pass_completions()
{
	if [[ "${COMP_WORDS[1]}" == "-" ]] ; then
		COMPREPLY=($(compgen -W "-a -h -l -r -s" "${COMP_WORDS[1]}"))
	elif [[ "${COMP_WORDS[1]}" == "--" ]] ; then
		COMPREPLY=($(compgen -W "--add --help --list --remove --ssh" "${COMP_WORDS[1]}"))
	elif [[ "${#COMP_WORDS[@]}" -lt 2 ||
			"${COMP_WORDS[1]}" == "-s" ||
			"${COMP_WORDS[1]}" == "-r" ||
			"${COMP_WORDS[1]}" == "--ssh" ||
			"${COMP_WORDS[1]}" == "--remove" ]] ; then
		COMPREPLY=($(compgen -W "$(cat $PW_PATH/pw.txt | awk -F ':::::' 'BEGIN { ORS=" " }; {print $1}')" -- "${COMP_WORDS[2]}"))
	fi
}

complete -F _pass_completions pw
