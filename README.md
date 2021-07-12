<img src="https://cdn.rawgit.com/oh-my-fish/oh-my-fish/e4f1c2e0219a17e2c748b824004c8d0b38055c16/docs/logo.svg" align="left" width="144px" height="144px"/>

#### Ortega
> A minimal fish prompt theme for [Oh My Fish][omf-link].

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v2.2.0-007EC7.svg?style=flat-square)](https://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-007EC7.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)

<br/>


A clean minimal vcs aware theme.

## Install

```fish
$ omf install https://github.com/folws/ortega
```


## Features

* vcs aware (git, mercurial, svn)


## Configuration

```
set -g theme_short_path "no"
```

* `set -g theme_abbr_path` - set to yes to abbreviate path (default: no)
* `set -g theme_short_path` - set to yes to only display the current directory name (default: no)
* `set -g theme_display_err_code` - set yes to display error code of previous command (default: no)
* `set -g theme_timestamp_shown` - set yes to display timestamp at end of your prompt (default: no)
* `set -g theme_prompt_symbol` - set to whatever you want to show up before prompt (default: 🢂)
* `set -g theme_show_user - set to yes to display user running command (default: 🢂)


## Screenshots

Coming!

<p align="center">
<img src="{{SCREENSHOT_URL}}">
</p>

## Unlicensed

This are my personal dots so do what you want.
Find the full [unlicense][] in the `UNLICENSE` file, but here's a snippet.

>This is free and unencumbered software released into the public domain.
>
>Anyone is free to copy, modify, publish, use, compile, sell, or distribute this software, either in source code form or as a compiled binary, for any purpose, commercial or non-commercial, and by any means.

Do what you want. Learn as much as you can. Unlicense more software.

[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish
[unlicense]: http://unlicense.org/
