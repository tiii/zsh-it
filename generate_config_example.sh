get_needed_env_variables () {
  get_env_variables "Needed" "# - Needed:"
}

get_optional_env_variables () {
  get_env_variables "Optional" "# - Optional:"
}


get_env_variables () {
  for i in ./installers/*; do
    line=$(cat $i | grep -e $1)
    new_variables=$(echo $line | sed "s/$2//")
    if [[ -n $new_variables ]]; then
      variables="$variables $new_variables"
    fi
  done
  echo $variables
}

if [[ ! -e ./config ]]; then
  echo "ERROR: Script needs to be run from inside the containing folder"
  exit 1
fi

NEEDED_ENV_VARIABLES=$(get_needed_env_variables)
OPTIONAL_ENV_VARIABLES=$(get_optional_env_variables)

echo "# required parameters:\n" > config.example
for variable in $NEEDED_ENV_VARIABLES; do
  echo "export $variable=" >> config.example
done
echo "\n# optional parameters:\n" >> config.example
for variable in $OPTIONAL_ENV_VARIABLES; do
  echo "# export $variable=" >> config.example
done
