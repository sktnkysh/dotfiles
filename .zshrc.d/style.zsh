#zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme
case "$HOST" in
  "KUROVO")
    zplug "modules/prompt", from:prezto
    zstyle ':prezto:module:prompt' theme 'giddie'
  ;;
  "tomatowk")
    zplug denysdovhan/spaceship-prompt, use:spaceship.zsh, from:github, as:theme
  ;;
  "conohatan")
    zplug denysdovhan/spaceship-prompt, use:spaceship.zsh, from:github, as:theme
  ;;
  "ringbell.local")
    zplug "modules/osx", from:prezto, if:"[[ $OSTYPE == *darwin* ]]"
    zplug "modules/prompt", from:prezto
    zstyle ':prezto:module:prompt' theme 'giddie'
  ;;
esac