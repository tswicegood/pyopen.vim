pyopen.vim
==========
Mixing Python + Vim to suck in files from the internet.

Ever find yourself wanting to load a URL from GitHub or some other site into
Vim so you can have proper syntax highlighting or reflow the text?
``pyopen.vim`` does that for you.


Usage
-----
You can invoke it manually from the command prompt like this::

    :py pyopen()

This prompts you for a URL.  And opens it using the ``:new`` command.  You can
change that by adding a ``cmd`` kwarg.  For example, to open in a new tab::

    :py pyopen(cmd="newtab")

You can explicitly provide a URL by providing a ``url`` kwarg.  That's useful
if you want to add a command that grabs a file from a particular URL and opens
it for -- such as a generic ``setup.py`` or some such.

There are two settings to do with the naming of the new buffer.  By default,
all new "files" are prefixed with ``pyopen-``.  You can change this by
providing an alternate ``prefix`` kwarg.  You can set the entire name by adding
a ``name`` kwarg.

Here's an example using most of the features.  This creates a new tab ``setup.py``
based on the file in `armstrong.cli`_.

::

    py pyopen(url="https://raw.github.com/armstrong/armstrong.cli/master/setup.py", cmd="tabnew", name="setup.py")

.. _armstrong.cli: https://github.com/armstrong/armstrong.cli/

Installation
------------
Either copy the ``pyopen.vim`` file into your ``.vim/plugins/`` directory or
add it as a submodule to your ``.vim/bundle/`` directory if you're using
Pathogen.

That's it.


License
-------
Copyright 2011 Travis Swicegood

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

