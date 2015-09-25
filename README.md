### Lite Configuration for VIM/GVIM/MACVIM

This configuration is intended to be used on remote servers.

Configurations are intentionally kept minimal. No YCM.

### Usage
It should be fairly easy. Just follow the following instructions step by step.

If you have Vundle.vim installed, you may get an error, but you can ignore it.

#### How to Install
1. Checkout this repository (preferable to your home directory)
    
    `git checkout https://github.com/njzhangyifei/config-lite-vim ~/config-lite-vim`

2. Change directory into config-lite-vim
    
    `cd ~/config-lite-vim`

3. Change the permission on the file ./install

    `chmod u+x ./install`

4. Run install script and follow the prompt

    `./install`

5. Start your vim, press enter to ignore all the error messages.

   ***Type after you see the welcome screen***

    `:PluginInstall` and press enter

6. Wait until everything is done. ***Restart your VIM***

7. Enjoy!


### //TODO Plugin List
