grappele.vim
============

Provides a way to repeat the last `G` command.

Example scenario:

1. Type 398G
2. Switch to a different buffer
3. Use Grappele's `gG` command to go to line 398 in our new current buffer

This way if you mistake the currently active window for example, there's an easy
way to get to the right line without having to manually type out the line number
again.


## Installation
Install using any of the various Vim plugin managers. If you use
[pathogen](https://github.com/tpope/vim-pathogen), you can run the following to
install:

	cd ~/.vim/bundle
	git clone https://github.com/teddywing/vim-grappele.git


## License
Licensed under the MIT license. See the included LICENSE file.
