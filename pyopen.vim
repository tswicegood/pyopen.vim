function! DefPython()
python << PYEND
"""
Quick and dirty script for pulling in URLs and creating a new buffer with
its contents.

The ``python_input`` code below was taken from `Tip 1616`_.

.. _Tip 1616: http://vim.wikia.com/wiki/User_input_from_a_script
"""
import os
import urllib
import vim


def pyopen(url=None, cmd="new", name=None, prefix="pyopen-"):
    def python_input(message = 'input'):
        vim.command('call inputsave()')
        vim.command("let user_input = input('" + message + ": ')")
        vim.command('call inputrestore()')
        return vim.eval('user_input')


    if url is None:
        url = python_input('URL')
    # TODO: check for Esc and such
    if url.strip() == "":
        return

    f, m = urllib.urlretrieve(url)

    if name is None:
        name = "%s%s" % (prefix, os.path.basename(url))
    vim.command("%s %s" % (cmd, name))
    vim.current.buffer.append(open(f).read().split("\n"))

    # Remove the empty first line
    del vim.current.buffer[0]
PYEND
endfunction
call DefPython()
