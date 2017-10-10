### These Git hooks allow to improve a work process for PHP developers ###
## Install ##
1. Clone this project somewhere to your machine (let it be `~/projects`)
Now we have hooks directory and if you want to take something new you can go on with `git pull`
2. Install hooks to your project

* Go to the project root (for example `cd ~/projects/my_best_project/`)
* Drop standard git hooks (`rm -rf .git/hooks`)
* Make a symlink from `.git/hooks` to place where we have cloned repository, for example `ln -s ~/projects/git_hooks .git/hooks `

## Install PHP-CS-Fixer ##
1. Download and install PHP-CS-Fixer using such commangd
`wget https://github.com/FriendsOfPHP/PHP-CS-Fixer/releases/download/v1.12.3/php-cs-fixer.phar -O php-cs-fixer`
or usrng cURL
`curl -L https://github.com/FriendsOfPHP/PHP-CS-Fixer/releases/download/v1.12.3/php-cs-fixer.phar -o php-cs-fixer`
2. `sudo chmod a+x php-cs-fixer`
3. `sudo mv php-cs-fixer /usr/local/bin/php-cs-fixer`


### Done! Now these hooks won`t allow you to make some common mistakes :) ###
