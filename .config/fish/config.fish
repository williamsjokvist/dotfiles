set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin
set -x GOPROXY https://proxy.golang.org,direct
set -x GOSUMDB off
set -x GOPRIVATE github.com/shipwallet

fish_add_path /opt/homebrew/bin -a
fish_add_path /Applications/Docker.app/Contents/Resources/bin -a
fish_add_path /google-cloud-sdk/bin -a

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/william/rd-test/google-cloud-sdk/path.fish.inc' ]; . '/home/william/rd-test/google-cloud-sdk/path.fish.inc'; end
