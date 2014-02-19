# Emacs and Cheese

This `emacs.d` was created by @piisalie and @bjoska as a joint venture after discussion on twitter.

The initial commits where made while pairing, as time passes more additions will be made through pull requests.

## Target users

As we are both Ruby developers this config will be most useful to programmers working with said language and environment.

## Specific Keyboard Shortcuts

### Multiple cursors

- `C-c m l` - multiple cursors edit line
- `C-c m n` - mark next like this
- `C-c m p` - mark previous like this
- `C-c m a` - mark all like this

### Ruby mode

- `C-c r l` - rspec-compile-on-line
- `C-c r f` - rspec-compile-file
- `C-c r p` - rspec-compile-project
- `C-c r P` - minitest-compile-project
- `C-c r F` - minitest-compile-file

### Undo tree

- `C-x u` - view undo-tree

### Web mode

Keyboard shortcuts for web mode can be found here:
[WebMode](http://web-mode.org/)

### Hippie expand

- `<escape>` - expand in place

## Themes

The configuration comes packagede with the following themes and theme collections:
- sanityinc-tomorrow - includes day, night, eighties, blue and a few more
- sanityinc-solarized - includes dark and light (not terminal mode friendly)
- ample-zen - a simple theme similar to sanityinc-tomorrow-eighties

To pick theme just alter the `load-theme` line in `./custom/00-general-setup.el`

## Dependencies

This configuration utilizes [Pallet](https://github.com/rdallasgray/pallet) and [Cask](https://github.com/cask/cask) to bundle the needed packages.

## TODO

- Robe mode
- Rainbow mode
- Yasnippet
- Rubocop?
- Flyspell
- Textmate.el
- Configuration for Org mode
- Swank.js
- Cleanup the bottom status bar with a nicer look.
- Magit
- HAML mode
- Highlight and indentation mode?

## Contribute

If you would like to contribute feel free.

Follow the following process:

- fork the repo 
- add your feature in a new branch
- create a pull request
