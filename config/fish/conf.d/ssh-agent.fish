# set SSH_AUTH_SOCK if not set
if test -z "$SSH_AUTH_SOCK";
  set -gx SSH_AUTH_SOCK $XDG_RUNTIME_DIR/ssh-agent.socket 
end

# if test -z (pgrep ssh-agent)
#   eval (ssh-agent -c) > /dev/null
#   set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
#   set -Ux SSH_AGENT_PID $SSH_AGENT_PID
#   set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
# end
