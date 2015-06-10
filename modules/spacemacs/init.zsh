if  [[ "$OSTYPE" = darwin* ]]; then
    local _emacs_native_darwin_paths > /dev/null 2>&1
    _emacs_native_darwin_paths=(
        "/Applications/Emacs.app/Contents/MacOS/Emacs"
        "$HOME/Applications/Emacs.app/Contents/MacOS/Emacs"
    )

    for _emacs_native_path in $_emacs_native_darwin_paths; do
        if [[ -a $_emacs_native_path ]]; then
            alias smacs="'$_emacs_native_path'"
            break
        fi
    done
fi
