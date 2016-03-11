case "${OSTYPE}" in
darwin*)
  # Mac
  zplug "simnalamburt/shellder"
  ;;
linux*)
  # Linux
  zplug "zenorocha/dracula-theme", of:"zsh/dracula.zsh-theme"
  ;;
esac
