# add rbenv to path
export PATH="/root/.rbenv/bin:$PATH"

# set default env vars
export RAILS_ENV=${RAILS_ENV:-test}

# initialize and set ruby version
eval "$(rbenv init -)"
