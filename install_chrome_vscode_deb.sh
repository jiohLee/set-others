code_pkg='code_1.55.2-1618307277_amd64.deb'
chrome_pkg='google-chrome-stable_current_amd64.deb'

echo '
install Visual Studio Code
'
sudo dpkg -i ${code_pkg}

echo '
install google-crhome-stable
'
sudo dpkg -i ${chrome_pkg}
