#!/usr/bin/env bash

# We want to run from the context of this script's directory
cd "$(dirname "${BASH_SOURCE[0]}")" \
  || exit 1

declare -r BASE46_REPO="https://github.com/NvChad/base46"
declare -r TMP_DIR="$(mktemp -d)"

# Write the colors table file
write_colors_lua() {
  declare -r theme_name="$1"
  declare -r theme_fullpath="$2"

  # Each base46 colors definition file ends with a call to some "override_theme" function, and a
  # "return". We only want the table, so we're discarding those things.
  theme_contents="$(sed '/override_theme/d' "$theme_fullpath" | sed '/return M/d')"

  # Will be written the to lua/themes/ folder
  theme_dest="../lua/nvim-base46/themes/$theme_name.lua"

  cat <<EOF > "$theme_dest"
-- AUTO-GENERATED FILE. DO NOT MODIFY.
-- This theme was ported from https://github.com/NvChad/base46

$theme_contents

M = vim.tbl_extend("force", {}, M, M.base_16, M.base_30)

return M
EOF
}

# Write the colorscheme file to the plugin's rtp
write_colors_rtp() {
  declare -r theme_name="$1"

  # Will be written the to colors/ folder
  theme_dest="../colors/base46-$theme_name.lua"

  cat <<EOF > "$theme_dest"
-- AUTO-GENERATED FILE. DO NOT MODIFY.
-- This theme was ported from https://github.com/NvChad/base46

local status_ok, base46 = pcall(require, "nvim-base46")
if status_ok then
  base46.setup({ theme = "$theme_name" })
end
EOF
}

main() {
  # Clone the base46's repo
  git clone --depth=1 "$BASE46_REPO" "$TMP_DIR"

  for theme_fullpath in "$TMP_DIR"/lua/base46/themes/*.lua; do

    theme_name="$(basename "$theme_fullpath")"
    theme_name=${theme_name%.lua}

    write_colors_lua "$theme_name" "$theme_fullpath"
    write_colors_rtp "$theme_name"

    echo "Written $theme_name"
  done
}

main "$@"
