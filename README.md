# lgettext - gettext module for lua

Referred to the [implentation of python](https://github.com/python/cpython/blob/3.6/Lib/gettext.py).

## Usage

### Installation

Download lgettext.lua and place it in your project.

Below is quick example how to use lgettext:

    local gettext = require 'lgettext'

    local _ = gettext.gettext

    gettext.bindtextdomain('messages', './locale')
    gettext.bind_textdomain_codeset('messages', 'UTF-8')
    gettext.textdomain('messages')

    message = _('gettext translation test')

## License

MIT Licensed. View LICENSE file for more details.
