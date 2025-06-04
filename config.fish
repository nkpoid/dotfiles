if status is-interactive
    # Commands to run in interactive sessions can go here
    eval (/opt/homebrew/bin/brew shellenv)
    mise activate fish | source
    starship init fish | source
    zoxide init fish | source
else
    mise activate fish --shims | source
end

alias ls="lsd"
alias cat="bat"

abbr -a be bundle exec
