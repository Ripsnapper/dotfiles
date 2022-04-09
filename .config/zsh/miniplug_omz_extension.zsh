#!/bin/zsh

OMZ_PATH="$HOME/.local/share/ohmyzsh"
[ -z "$OMZ_PLUGINS" ] && declare OMZ_PLUGINS=()

function __omz_check_loaded() {
  local target_path="$1" plugin_path

  for plugin_path in ${OMZ_PLUGINS[*]}; do
    [ "$target_path" = "$plugin_path" ] && return
  done

  return 1
}

function omz_plugin() {
    local plugin_path="$1"
    __omz_check_loaded "$plugin_path" && return

    source_zsh_plugin="$(__miniplug_find ${OMZ_PATH}/$plugin_path '*.plugin.zsh')"
    if [ -n "$source_zsh_plugin" ]; then
      source "$source_zsh_plugin"
      OMZ_PLUGINS+=("$plugin_path")

      return
    fi

    lib_path="${OMZ_PATH}/$plugin_path"
    if [ -e "$lib_path" ]; then
      source "$lib_path"
      OMZ_PLUGINS+=("$plugin_path")

      return
    fi
}
