# Switch between testing gitstatus.sh and gitstatus.py
if [ -z $GIT_PROMPT_TEST_GITSTATUS_EXT ]; then
  GIT_PROMPT_TEST_GITSTATUS_EXT=sh
fi

gitstatus_basename="gitstatus.$GIT_PROMPT_TEST_GITSTATUS_EXT"
gitstatus="$BATS_TEST_DIRNAME/../$gitstatus_basename"
