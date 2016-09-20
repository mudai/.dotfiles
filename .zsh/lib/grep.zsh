#
# Color grep results
# Examples: http://rubyurl.com/ZXv
#
GREP_OPTIONS='--color=auto --binary-files=without-match'
alias grep="grep $GREP_OPTIONS"
export GREP_COLOR='1;32'
