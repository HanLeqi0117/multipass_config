if [[ -f /tmp/proxy_is_setup.flag ]]; then
    rm /tmp/proxy_is_setup.flag
elif [[ -f /tmp/proxy_is_not_setup.flag ]]; then
    rm /tmp/proxy_is_not_setup.flag
fi
source ~/.bashrc
