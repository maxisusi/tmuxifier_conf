# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/Documents/dev/gammadia/tipee"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "tipee"; then

  # Create a new window inline within session layout definition.
  new_window "editor"
  run_cmd "make up && nvim ."

  new_window "devbox"
  run_cmd "./devbox"

  new_window "shell"
  run_cmd "clear"

  # Select editor window
  select_window 0


fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
