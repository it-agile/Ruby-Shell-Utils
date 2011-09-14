gem push `gem build shell-utils.gemspec | grep 'File:' | awk '{print $2}'`
mv shell-utils-*.gem deploy
