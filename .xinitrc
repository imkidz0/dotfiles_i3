if [ -f "$HOME/.xprofile" ]; then
    . "$HOME/.xprofile"
fi

exec i3
