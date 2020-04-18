# Sublime
if [ ! -d "$HOME/bin/" ]; then
  mkdir "$HOME/bin"
fi
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" "$HOME/bin/subl"
cp "./sublime_snippets/*" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/"

cp ./.zshrc "$HOME/.zshrc"
cp ./.pryrc "$HOME/.pryrc"

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
