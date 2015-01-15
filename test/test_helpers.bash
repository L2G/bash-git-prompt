# GIT_PROMPT_TEST_GITSTATUS_EXT can be set to override the default
# of "sh"
if [ -z $GIT_PROMPT_TEST_GITSTATUS_EXT ]; then
  GIT_PROMPT_TEST_GITSTATUS_EXT=sh
fi

# The filename of the script, useful for including in test messages
gitstatus_basename="gitstatus.$GIT_PROMPT_TEST_GITSTATUS_EXT"

# The full path to the script
gitstatus="$BATS_TEST_DIRNAME/../$gitstatus_basename"
