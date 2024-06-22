set -q fisher_path; or set -l fisher_path $__fish_config_dir

if test -f $fisher_path/functions/__custom_aliases.fish
  source $fisher_path/functions/__custom_aliases.fish
  __custom_aliases
end
