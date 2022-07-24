# Emacs Init File (Dot Emacs)

Some useful emacs snippets. Tested on Windows & Linux with Emacs 27 & 28 (GUI version).

You can locate your init file by:

```
M-x describe-variable RET user-init-file RET
```

Ref: https://www.emacswiki.org/emacs/InitFile

## [Dot Emacs](.emacs)

The full init file that combines all snippets.
- Requires manually download Dark Solarized Theme.
- Comment out update package code after first launch
- (Optional) Requires download Microsoft YaHei Mono Font.

## [Evil](evil.el)

The extensible vi layer for Emacs. (https://github.com/emacs-evil/evil)

Fix `TAB` key conflict with OrgMode.

Ref: https://emacs.stackexchange.com/a/28224

## [Dark Solarized Theme](color-theme-solarized.el)

Emacs highlighting using Ethan Schoonover’s Solarized color scheme. (https://github.com/sellout/emacs-color-theme-solarized)

You should download the theme beforehand:

```sh
cd ~/.emacs.d # or `%APPDATA%\.emacs.d` on Windows
mkdir -p themes && cd themes
git clone https://github.com/sellout/emacs-color-theme-solarized
```

## [(Optional) Microsoft YaHei Mono Font 12pt](microsoft-yahei-mono-font-12pt.el)

You should download and install the font beforehand:

https://www.onlinewebfonts.com/download/9798f64007ae3426b2336e57dae4149c

## Miscellaneous

- [Inhibit Start Up Message](inhibit-startup-message.el)

## OrgMode

### [Activation](orgmode-activation.el)

Ref: https://orgmode.org/manual/Activation.html

### [Indent Mode](orgmode-indent-mode.el)

Ref: https://orgmode.org/manual/Org-Indent-Mode.html

### [Columns](orgmode-columns.el)

Ref: https://orgmode.org/worg/org-tutorials/org-column-view-tutorial.html

### [Change Entry State Based On Child](change-entry-state-based-on-child.el)

Ref: https://orgmode.org/manual/Breaking-Down-Tasks.html

Ref: https://orgmode.org/manual/TODO-dependencies.html

### [Clock History Length](orgmode-clock-history-length.el)

Ref: https://lists.gnu.org/archive/html/emacs-orgmode/2018-10/msg00013.html

### [Keywords](orgmode-keywords.el)

Ref: https://orgmode.org/manual/TODO-types.html

Ref: https://orgmode.org/manual/Fast-access-to-TODO-states.html

Ref: https://orgmode.org/manual/Faces-for-TODO-keywords.html

Ref: https://www.gnu.org/software/emacs/manual/html_node/org/Closing-items.html

### [Custom Agenda Commands](custom-orgmode-agenda-commands.el)

Show `TODO`/`NEXT` tasks with deadline/schedule/timestamps (ascending order)

Ref: https://orgmode.org/worg/org-tutorials/org-custom-agenda-commands.html

Ref: https://orgmode.org/manual/Matching-tags-and-properties.html

Ref: https://orgmode.org/worg/org-tutorials/org-column-view-tutorial.html

Potential Improvements (Single `q` to quit): https://www.mail-archive.com/emacs-orgmode@gnu.org/msg101093.html

## Debugging

```sh
emacs --debug-init
```
