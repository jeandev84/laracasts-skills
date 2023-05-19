### PHP Learning


1. Install Homebrew
- https://brew.sh/
```bash 
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
$ echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/yao/.profile
$ eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
```



2. Install PHP via brew
```php 
But now lunch command
$ brew 
$ brew search php
$ brew install php
$ php -v 
```


2. Install MYSQL via brew
```bash
$ brew install mysql 
$ mysql
$ mysql -u root
$ sudo mysql -uroot -psecret123456!
mysql: [Warning] Using a password on the command line interface can be insecure.
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 19
Server version: 8.0.30 MySQL Community Server - GPL

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> 

```

```
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
==> Checking for `sudo` access (which may request your password)...
[sudo] password for yao: 
Sorry, try again.
[sudo] password for yao: 
==> This script will install:
/home/linuxbrew/.linuxbrew/bin/brew
/home/linuxbrew/.linuxbrew/share/doc/homebrew
/home/linuxbrew/.linuxbrew/share/man/man1/brew.1
/home/linuxbrew/.linuxbrew/share/zsh/site-functions/_brew
/home/linuxbrew/.linuxbrew/etc/bash_completion.d/brew
/home/linuxbrew/.linuxbrew/Homebrew
==> The following new directories will be created:
/home/linuxbrew/.linuxbrew/bin
/home/linuxbrew/.linuxbrew/etc
/home/linuxbrew/.linuxbrew/include
/home/linuxbrew/.linuxbrew/lib
/home/linuxbrew/.linuxbrew/sbin
/home/linuxbrew/.linuxbrew/share
/home/linuxbrew/.linuxbrew/var
/home/linuxbrew/.linuxbrew/opt
/home/linuxbrew/.linuxbrew/share/zsh
/home/linuxbrew/.linuxbrew/share/zsh/site-functions
/home/linuxbrew/.linuxbrew/var/homebrew
/home/linuxbrew/.linuxbrew/var/homebrew/linked
/home/linuxbrew/.linuxbrew/Cellar
/home/linuxbrew/.linuxbrew/Caskroom
/home/linuxbrew/.linuxbrew/Frameworks

Press RETURN/ENTER to continue or any other key to abort:
==> /usr/bin/sudo /usr/bin/install -d -o yao -g yao -m 0755 /home/linuxbrew/.linuxbrew
==> /usr/bin/sudo /bin/mkdir -p /home/linuxbrew/.linuxbrew/bin /home/linuxbrew/.linuxbrew/etc /home/linuxbrew/.linuxbrew/include /home/linuxbrew/.linuxbrew/lib /home/linuxbrew/.linuxbrew/sbin /home/linuxbrew/.linuxbrew/share /home/linuxbrew/.linuxbrew/var /home/linuxbrew/.linuxbrew/opt /home/linuxbrew/.linuxbrew/share/zsh /home/linuxbrew/.linuxbrew/share/zsh/site-functions /home/linuxbrew/.linuxbrew/var/homebrew /home/linuxbrew/.linuxbrew/var/homebrew/linked /home/linuxbrew/.linuxbrew/Cellar /home/linuxbrew/.linuxbrew/Caskroom /home/linuxbrew/.linuxbrew/Frameworks
==> /usr/bin/sudo /bin/chmod ug=rwx /home/linuxbrew/.linuxbrew/bin /home/linuxbrew/.linuxbrew/etc /home/linuxbrew/.linuxbrew/include /home/linuxbrew/.linuxbrew/lib /home/linuxbrew/.linuxbrew/sbin /home/linuxbrew/.linuxbrew/share /home/linuxbrew/.linuxbrew/var /home/linuxbrew/.linuxbrew/opt /home/linuxbrew/.linuxbrew/share/zsh /home/linuxbrew/.linuxbrew/share/zsh/site-functions /home/linuxbrew/.linuxbrew/var/homebrew /home/linuxbrew/.linuxbrew/var/homebrew/linked /home/linuxbrew/.linuxbrew/Cellar /home/linuxbrew/.linuxbrew/Caskroom /home/linuxbrew/.linuxbrew/Frameworks
==> /usr/bin/sudo /bin/chmod go-w /home/linuxbrew/.linuxbrew/share/zsh /home/linuxbrew/.linuxbrew/share/zsh/site-functions
==> /usr/bin/sudo /bin/chown yao /home/linuxbrew/.linuxbrew/bin /home/linuxbrew/.linuxbrew/etc /home/linuxbrew/.linuxbrew/include /home/linuxbrew/.linuxbrew/lib /home/linuxbrew/.linuxbrew/sbin /home/linuxbrew/.linuxbrew/share /home/linuxbrew/.linuxbrew/var /home/linuxbrew/.linuxbrew/opt /home/linuxbrew/.linuxbrew/share/zsh /home/linuxbrew/.linuxbrew/share/zsh/site-functions /home/linuxbrew/.linuxbrew/var/homebrew /home/linuxbrew/.linuxbrew/var/homebrew/linked /home/linuxbrew/.linuxbrew/Cellar /home/linuxbrew/.linuxbrew/Caskroom /home/linuxbrew/.linuxbrew/Frameworks
==> /usr/bin/sudo /bin/chgrp yao /home/linuxbrew/.linuxbrew/bin /home/linuxbrew/.linuxbrew/etc /home/linuxbrew/.linuxbrew/include /home/linuxbrew/.linuxbrew/lib /home/linuxbrew/.linuxbrew/sbin /home/linuxbrew/.linuxbrew/share /home/linuxbrew/.linuxbrew/var /home/linuxbrew/.linuxbrew/opt /home/linuxbrew/.linuxbrew/share/zsh /home/linuxbrew/.linuxbrew/share/zsh/site-functions /home/linuxbrew/.linuxbrew/var/homebrew /home/linuxbrew/.linuxbrew/var/homebrew/linked /home/linuxbrew/.linuxbrew/Cellar /home/linuxbrew/.linuxbrew/Caskroom /home/linuxbrew/.linuxbrew/Frameworks
==> /usr/bin/sudo /bin/mkdir -p /home/linuxbrew/.linuxbrew/Homebrew
==> /usr/bin/sudo /bin/chown -R yao:yao /home/linuxbrew/.linuxbrew/Homebrew
==> Downloading and installing Homebrew...
remote: Enumerating objects: 241443, done.
remote: Counting objects: 100% (868/868), done.
remote: Compressing objects: 100% (487/487), done.
remote: Total 241443 (delta 437), reused 759 (delta 367), pack-reused 240575
Receiving objects: 100% (241443/241443), 70.06 MiB | 1.41 MiB/s, done.
Resolving deltas: 100% (176788/176788), done.
From https://github.com/Homebrew/brew
 * [new branch]          master     -> origin/master
 * [new tag]             0.1        -> 0.1
 * [new tag]             0.2        -> 0.2
 * [new tag]             0.3        -> 0.3
 * [new tag]             0.4        -> 0.4
 * [new tag]             0.5        -> 0.5
 * [new tag]             0.6        -> 0.6
 * [new tag]             0.7        -> 0.7
 * [new tag]             0.7.1      -> 0.7.1
 * [new tag]             0.8        -> 0.8
 * [new tag]             0.8.1      -> 0.8.1
 * [new tag]             0.9        -> 0.9
 * [new tag]             0.9.1      -> 0.9.1
 * [new tag]             0.9.2      -> 0.9.2
 * [new tag]             0.9.3      -> 0.9.3
 * [new tag]             0.9.4      -> 0.9.4
 * [new tag]             0.9.5      -> 0.9.5
 * [new tag]             0.9.8      -> 0.9.8
 * [new tag]             0.9.9      -> 0.9.9
 * [new tag]             1.0.0      -> 1.0.0
 * [new tag]             1.0.1      -> 1.0.1
 * [new tag]             1.0.2      -> 1.0.2
 * [new tag]             1.0.3      -> 1.0.3
 * [new tag]             1.0.4      -> 1.0.4
 * [new tag]             1.0.5      -> 1.0.5
 * [new tag]             1.0.6      -> 1.0.6
 * [new tag]             1.0.7      -> 1.0.7
 * [new tag]             1.0.8      -> 1.0.8
 * [new tag]             1.0.9      -> 1.0.9
 * [new tag]             1.1.0      -> 1.1.0
 * [new tag]             1.1.1      -> 1.1.1
 * [new tag]             1.1.10     -> 1.1.10
 * [new tag]             1.1.11     -> 1.1.11
 * [new tag]             1.1.12     -> 1.1.12
 * [new tag]             1.1.13     -> 1.1.13
 * [new tag]             1.1.2      -> 1.1.2
 * [new tag]             1.1.3      -> 1.1.3
 * [new tag]             1.1.4      -> 1.1.4
 * [new tag]             1.1.5      -> 1.1.5
 * [new tag]             1.1.6      -> 1.1.6
 * [new tag]             1.1.7      -> 1.1.7
 * [new tag]             1.1.8      -> 1.1.8
 * [new tag]             1.1.9      -> 1.1.9
 * [new tag]             1.2.0      -> 1.2.0
 * [new tag]             1.2.1      -> 1.2.1
 * [new tag]             1.2.2      -> 1.2.2
 * [new tag]             1.2.3      -> 1.2.3
 * [new tag]             1.2.4      -> 1.2.4
 * [new tag]             1.2.5      -> 1.2.5
 * [new tag]             1.2.6      -> 1.2.6
 * [new tag]             1.3.0      -> 1.3.0
 * [new tag]             1.3.1      -> 1.3.1
 * [new tag]             1.3.2      -> 1.3.2
 * [new tag]             1.3.3      -> 1.3.3
 * [new tag]             1.3.4      -> 1.3.4
 * [new tag]             1.3.5      -> 1.3.5
 * [new tag]             1.3.6      -> 1.3.6
 * [new tag]             1.3.7      -> 1.3.7
 * [new tag]             1.3.8      -> 1.3.8
 * [new tag]             1.3.9      -> 1.3.9
 * [new tag]             1.4.0      -> 1.4.0
 * [new tag]             1.4.1      -> 1.4.1
 * [new tag]             1.4.2      -> 1.4.2
 * [new tag]             1.4.3      -> 1.4.3
 * [new tag]             1.5.0      -> 1.5.0
 * [new tag]             1.5.1      -> 1.5.1
 * [new tag]             1.5.10     -> 1.5.10
 * [new tag]             1.5.11     -> 1.5.11
 * [new tag]             1.5.12     -> 1.5.12
 * [new tag]             1.5.13     -> 1.5.13
 * [new tag]             1.5.14     -> 1.5.14
 * [new tag]             1.5.2      -> 1.5.2
 * [new tag]             1.5.3      -> 1.5.3
 * [new tag]             1.5.4      -> 1.5.4
 * [new tag]             1.5.5      -> 1.5.5
 * [new tag]             1.5.6      -> 1.5.6
 * [new tag]             1.5.7      -> 1.5.7
 * [new tag]             1.5.8      -> 1.5.8
 * [new tag]             1.5.9      -> 1.5.9
 * [new tag]             1.6.0      -> 1.6.0
 * [new tag]             1.6.1      -> 1.6.1
 * [new tag]             1.6.10     -> 1.6.10
 * [new tag]             1.6.11     -> 1.6.11
 * [new tag]             1.6.12     -> 1.6.12
 * [new tag]             1.6.13     -> 1.6.13
 * [new tag]             1.6.14     -> 1.6.14
 * [new tag]             1.6.15     -> 1.6.15
 * [new tag]             1.6.16     -> 1.6.16
 * [new tag]             1.6.17     -> 1.6.17
 * [new tag]             1.6.2      -> 1.6.2
 * [new tag]             1.6.3      -> 1.6.3
 * [new tag]             1.6.4      -> 1.6.4
 * [new tag]             1.6.5      -> 1.6.5
 * [new tag]             1.6.6      -> 1.6.6
 * [new tag]             1.6.7      -> 1.6.7
 * [new tag]             1.6.8      -> 1.6.8
 * [new tag]             1.6.9      -> 1.6.9
 * [new tag]             1.7.0      -> 1.7.0
 * [new tag]             1.7.1      -> 1.7.1
 * [new tag]             1.7.2      -> 1.7.2
 * [new tag]             1.7.3      -> 1.7.3
 * [new tag]             1.7.4      -> 1.7.4
 * [new tag]             1.7.5      -> 1.7.5
 * [new tag]             1.7.6      -> 1.7.6
 * [new tag]             1.7.7      -> 1.7.7
 * [new tag]             1.8.0      -> 1.8.0
 * [new tag]             1.8.1      -> 1.8.1
 * [new tag]             1.8.2      -> 1.8.2
 * [new tag]             1.8.3      -> 1.8.3
 * [new tag]             1.8.4      -> 1.8.4
 * [new tag]             1.8.5      -> 1.8.5
 * [new tag]             1.8.6      -> 1.8.6
 * [new tag]             1.9.0      -> 1.9.0
 * [new tag]             1.9.1      -> 1.9.1
 * [new tag]             1.9.2      -> 1.9.2
 * [new tag]             1.9.3      -> 1.9.3
 * [new tag]             2.0.0      -> 2.0.0
 * [new tag]             2.0.1      -> 2.0.1
 * [new tag]             2.0.2      -> 2.0.2
 * [new tag]             2.0.3      -> 2.0.3
 * [new tag]             2.0.4      -> 2.0.4
 * [new tag]             2.0.5      -> 2.0.5
 * [new tag]             2.0.6      -> 2.0.6
 * [new tag]             2.1.0      -> 2.1.0
 * [new tag]             2.1.1      -> 2.1.1
 * [new tag]             2.1.10     -> 2.1.10
 * [new tag]             2.1.11     -> 2.1.11
 * [new tag]             2.1.12     -> 2.1.12
 * [new tag]             2.1.13     -> 2.1.13
 * [new tag]             2.1.14     -> 2.1.14
 * [new tag]             2.1.15     -> 2.1.15
 * [new tag]             2.1.16     -> 2.1.16
 * [new tag]             2.1.2      -> 2.1.2
 * [new tag]             2.1.3      -> 2.1.3
 * [new tag]             2.1.4      -> 2.1.4
 * [new tag]             2.1.5      -> 2.1.5
 * [new tag]             2.1.6      -> 2.1.6
 * [new tag]             2.1.7      -> 2.1.7
 * [new tag]             2.1.8      -> 2.1.8
 * [new tag]             2.1.9      -> 2.1.9
 * [new tag]             2.2.0      -> 2.2.0
 * [new tag]             2.2.1      -> 2.2.1
 * [new tag]             2.2.10     -> 2.2.10
 * [new tag]             2.2.11     -> 2.2.11
 * [new tag]             2.2.12     -> 2.2.12
 * [new tag]             2.2.13     -> 2.2.13
 * [new tag]             2.2.14     -> 2.2.14
 * [new tag]             2.2.15     -> 2.2.15
 * [new tag]             2.2.16     -> 2.2.16
 * [new tag]             2.2.17     -> 2.2.17
 * [new tag]             2.2.2      -> 2.2.2
 * [new tag]             2.2.3      -> 2.2.3
 * [new tag]             2.2.4      -> 2.2.4
 * [new tag]             2.2.5      -> 2.2.5
 * [new tag]             2.2.6      -> 2.2.6
 * [new tag]             2.2.7      -> 2.2.7
 * [new tag]             2.2.8      -> 2.2.8
 * [new tag]             2.2.9      -> 2.2.9
 * [new tag]             2.3.0      -> 2.3.0
 * [new tag]             2.4.0      -> 2.4.0
 * [new tag]             2.4.1      -> 2.4.1
 * [new tag]             2.4.10     -> 2.4.10
 * [new tag]             2.4.11     -> 2.4.11
 * [new tag]             2.4.12     -> 2.4.12
 * [new tag]             2.4.13     -> 2.4.13
 * [new tag]             2.4.14     -> 2.4.14
 * [new tag]             2.4.15     -> 2.4.15
 * [new tag]             2.4.16     -> 2.4.16
 * [new tag]             2.4.2      -> 2.4.2
 * [new tag]             2.4.3      -> 2.4.3
 * [new tag]             2.4.4      -> 2.4.4
 * [new tag]             2.4.5      -> 2.4.5
 * [new tag]             2.4.6      -> 2.4.6
 * [new tag]             2.4.7      -> 2.4.7
 * [new tag]             2.4.8      -> 2.4.8
 * [new tag]             2.4.9      -> 2.4.9
 * [new tag]             2.5.0      -> 2.5.0
 * [new tag]             2.5.1      -> 2.5.1
 * [new tag]             2.5.10     -> 2.5.10
 * [new tag]             2.5.11     -> 2.5.11
 * [new tag]             2.5.12     -> 2.5.12
 * [new tag]             2.5.2      -> 2.5.2
 * [new tag]             2.5.3      -> 2.5.3
 * [new tag]             2.5.4      -> 2.5.4
 * [new tag]             2.5.5      -> 2.5.5
 * [new tag]             2.5.6      -> 2.5.6
 * [new tag]             2.5.7      -> 2.5.7
 * [new tag]             2.5.8      -> 2.5.8
 * [new tag]             2.5.9      -> 2.5.9
 * [new tag]             2.6.0      -> 2.6.0
 * [new tag]             2.6.1      -> 2.6.1
 * [new tag]             2.6.2      -> 2.6.2
 * [new tag]             2.7.0      -> 2.7.0
 * [new tag]             2.7.1      -> 2.7.1
 * [new tag]             2.7.2      -> 2.7.2
 * [new tag]             2.7.3      -> 2.7.3
 * [new tag]             2.7.4      -> 2.7.4
 * [new tag]             2.7.5      -> 2.7.5
 * [new tag]             2.7.6      -> 2.7.6
 * [new tag]             2.7.7      -> 2.7.7
 * [new tag]             3.0.0      -> 3.0.0
 * [new tag]             3.0.1      -> 3.0.1
 * [new tag]             3.0.10     -> 3.0.10
 * [new tag]             3.0.11     -> 3.0.11
 * [new tag]             3.0.2      -> 3.0.2
 * [new tag]             3.0.3      -> 3.0.3
 * [new tag]             3.0.4      -> 3.0.4
 * [new tag]             3.0.5      -> 3.0.5
 * [new tag]             3.0.6      -> 3.0.6
 * [new tag]             3.0.7      -> 3.0.7
 * [new tag]             3.0.8      -> 3.0.8
 * [new tag]             3.0.9      -> 3.0.9
 * [new tag]             3.1.0      -> 3.1.0
 * [new tag]             3.1.1      -> 3.1.1
 * [new tag]             3.1.10     -> 3.1.10
 * [new tag]             3.1.11     -> 3.1.11
 * [new tag]             3.1.12     -> 3.1.12
 * [new tag]             3.1.2      -> 3.1.2
 * [new tag]             3.1.3      -> 3.1.3
 * [new tag]             3.1.4      -> 3.1.4
 * [new tag]             3.1.5      -> 3.1.5
 * [new tag]             3.1.6      -> 3.1.6
 * [new tag]             3.1.7      -> 3.1.7
 * [new tag]             3.1.8      -> 3.1.8
 * [new tag]             3.1.9      -> 3.1.9
 * [new tag]             3.2.0      -> 3.2.0
 * [new tag]             3.2.1      -> 3.2.1
 * [new tag]             3.2.10     -> 3.2.10
 * [new tag]             3.2.11     -> 3.2.11
 * [new tag]             3.2.12     -> 3.2.12
 * [new tag]             3.2.13     -> 3.2.13
 * [new tag]             3.2.14     -> 3.2.14
 * [new tag]             3.2.15     -> 3.2.15
 * [new tag]             3.2.16     -> 3.2.16
 * [new tag]             3.2.17     -> 3.2.17
 * [new tag]             3.2.2      -> 3.2.2
 * [new tag]             3.2.3      -> 3.2.3
 * [new tag]             3.2.4      -> 3.2.4
 * [new tag]             3.2.5      -> 3.2.5
 * [new tag]             3.2.6      -> 3.2.6
 * [new tag]             3.2.7      -> 3.2.7
 * [new tag]             3.2.8      -> 3.2.8
 * [new tag]             3.2.9      -> 3.2.9
 * [new tag]             3.3.0      -> 3.3.0
 * [new tag]             3.3.1      -> 3.3.1
 * [new tag]             3.3.10     -> 3.3.10
 * [new tag]             3.3.11     -> 3.3.11
 * [new tag]             3.3.12     -> 3.3.12
 * [new tag]             3.3.13     -> 3.3.13
 * [new tag]             3.3.14     -> 3.3.14
 * [new tag]             3.3.15     -> 3.3.15
 * [new tag]             3.3.16     -> 3.3.16
 * [new tag]             3.3.2      -> 3.3.2
 * [new tag]             3.3.3      -> 3.3.3
 * [new tag]             3.3.4      -> 3.3.4
 * [new tag]             3.3.5      -> 3.3.5
 * [new tag]             3.3.6      -> 3.3.6
 * [new tag]             3.3.7      -> 3.3.7
 * [new tag]             3.3.8      -> 3.3.8
 * [new tag]             3.3.9      -> 3.3.9
 * [new tag]             3.4.0      -> 3.4.0
 * [new tag]             3.4.1      -> 3.4.1
 * [new tag]             3.4.10     -> 3.4.10
 * [new tag]             3.4.11     -> 3.4.11
 * [new tag]             3.4.2      -> 3.4.2
 * [new tag]             3.4.3      -> 3.4.3
 * [new tag]             3.4.4      -> 3.4.4
 * [new tag]             3.4.5      -> 3.4.5
 * [new tag]             3.4.6      -> 3.4.6
 * [new tag]             3.4.7      -> 3.4.7
 * [new tag]             3.4.8      -> 3.4.8
 * [new tag]             3.4.9      -> 3.4.9
 * [new tag]             3.5.0      -> 3.5.0
 * [new tag]             3.5.1      -> 3.5.1
 * [new tag]             3.5.10     -> 3.5.10
 * [new tag]             3.5.2      -> 3.5.2
 * [new tag]             3.5.3      -> 3.5.3
 * [new tag]             3.5.4      -> 3.5.4
 * [new tag]             3.5.5      -> 3.5.5
 * [new tag]             3.5.6      -> 3.5.6
 * [new tag]             3.5.7      -> 3.5.7
 * [new tag]             3.5.8      -> 3.5.8
 * [new tag]             3.5.9      -> 3.5.9
 * [new tag]             3.6.0      -> 3.6.0
 * [new tag]             3.6.1      -> 3.6.1
 * [new tag]             3.6.10     -> 3.6.10
 * [new tag]             3.6.11     -> 3.6.11
 * [new tag]             3.6.12     -> 3.6.12
 * [new tag]             3.6.13     -> 3.6.13
 * [new tag]             3.6.14     -> 3.6.14
 * [new tag]             3.6.15     -> 3.6.15
 * [new tag]             3.6.16     -> 3.6.16
 * [new tag]             3.6.17     -> 3.6.17
 * [new tag]             3.6.18     -> 3.6.18
 * [new tag]             3.6.19     -> 3.6.19
 * [new tag]             3.6.2      -> 3.6.2
 * [new tag]             3.6.20     -> 3.6.20
 * [new tag]             3.6.21     -> 3.6.21
 * [new tag]             3.6.3      -> 3.6.3
 * [new tag]             3.6.4      -> 3.6.4
 * [new tag]             3.6.5      -> 3.6.5
 * [new tag]             3.6.6      -> 3.6.6
 * [new tag]             3.6.7      -> 3.6.7
 * [new tag]             3.6.8      -> 3.6.8
 * [new tag]             3.6.9      -> 3.6.9
 * [new tag]             4.0.0      -> 4.0.0
 * [new tag]             4.0.1      -> 4.0.1
 * [new tag]             4.0.10     -> 4.0.10
 * [new tag]             4.0.11     -> 4.0.11
 * [new tag]             4.0.12     -> 4.0.12
 * [new tag]             4.0.13     -> 4.0.13
 * [new tag]             4.0.14     -> 4.0.14
 * [new tag]             4.0.15     -> 4.0.15
 * [new tag]             4.0.16     -> 4.0.16
 * [new tag]             4.0.17     -> 4.0.17
 * [new tag]             4.0.18     -> 4.0.18
 * [new tag]             4.0.2      -> 4.0.2
 * [new tag]             4.0.3      -> 4.0.3
 * [new tag]             4.0.4      -> 4.0.4
 * [new tag]             4.0.5      -> 4.0.5
 * [new tag]             4.0.6      -> 4.0.6
 * [new tag]             4.0.7      -> 4.0.7
 * [new tag]             4.0.8      -> 4.0.8
 * [new tag]             4.0.9      -> 4.0.9
HEAD is now at f7b322557 Merge pull request #15447 from carlocab/all-github-vars
==> Downloading https://ghcr.io/v2/homebrew/portable-ruby/portable-ruby/blobs/sha256:68923daf3e139482b977c3deba63a3b54ea37bb5f716482948878819ef911bad
######################################################################## 100.0%
==> Pouring portable-ruby-2.6.10_1.x86_64_linux.bottle.tar.gz
Warning: /home/linuxbrew/.linuxbrew/bin is not in your PATH.
  Instructions on how to configure your shell for Homebrew
  can be found in the 'Next steps' section below.
==> Installation successful!

==> Homebrew has enabled anonymous aggregate formulae and cask analytics.
Read the analytics documentation (and how to opt-out) here:
  https://docs.brew.sh/Analytics
No analytics data has been sent yet (nor will any be during this install run).

==> Homebrew is run entirely by unpaid volunteers. Please consider donating:
  https://github.com/Homebrew/brew#donations

==> Next steps:
- Run these two commands in your terminal to add Homebrew to your PATH:
    (echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/yao/.profile
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
- Install Homebrew's dependencies if you have sudo access:
    sudo apt-get install build-essential
  For more information, see:
    https://docs.brew.sh/Homebrew-on-Linux
- We recommend that you install GCC:
    brew install gcc
- Run brew help to get started
- Further documentation:
    https://docs.brew.sh

yao@yao-IdeaPad-3-14ITL6:~/Desktop/PHPLaracasts/laracasts$ echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/yao/.profile
bash: syntax error near unexpected token `)'
yao@yao-IdeaPad-3-14ITL6:~/Desktop/PHPLaracasts/laracasts$ echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/yao/.profile
yao@yao-IdeaPad-3-14ITL6:~/Desktop/PHPLaracasts/laracasts$ eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
yao@yao-IdeaPad-3-14ITL6:~/Desktop/PHPLaracasts/laracasts$ clear
yao@yao-IdeaPad-3-14ITL6:~/Desktop/PHPLaracasts/laracasts$ brew
Example usage:
  brew search TEXT|/REGEX/
  brew info [FORMULA|CASK...]
  brew install FORMULA|CASK...
  brew update
  brew upgrade [FORMULA|CASK...]
  brew uninstall FORMULA|CASK...
  brew list [FORMULA|CASK...]

Troubleshooting:
  brew config
  brew doctor
  brew install --verbose --debug FORMULA|CASK

Contributing:
  brew create URL [--no-fetch]
  brew edit [FORMULA|CASK...]

Further help:
  brew commands
  brew help [COMMAND]
  man brew
  https://docs.brew.sh
yao@yao-IdeaPad-3-14ITL6:~/Desktop/PHPLaracasts/laracasts$ clear
yao@yao-IdeaPad-3-14ITL6:~/Desktop/PHPLaracasts/laracasts$ brew search
Usage: brew search, -S [options] text|/regex/ [...]

Perform a substring search of cask tokens and formula names for text. If
text is flanked by slashes, it is interpreted as a regular expression.

      --formula, --formulae        Search for formulae.
      --cask, --casks              Search for casks.
      --desc                       Search for formulae with a description
                                   matching text and casks with a name or
                                   description matching text.
      --eval-all                   Evaluate all available formulae and casks,
                                   whether installed or not, to search their
                                   descriptions. Implied if HOMEBREW_EVAL_ALL
                                   is set.
      --pull-request               Search for GitHub pull requests containing
                                   text.
      --open                       Search for only open GitHub pull requests.
      --closed                     Search for only closed GitHub pull requests.
      --repology                   Search for text in the given database.
      --macports                   Search for text in the given database.
      --fink                       Search for text in the given database.
      --opensuse                   Search for text in the given database.
      --fedora                     Search for text in the given database.
      --archlinux                  Search for text in the given database.
      --debian                     Search for text in the given database.
      --ubuntu                     Search for text in the given database.
  -d, --debug                      Display any debugging information.
  -q, --quiet                      Make some output more quiet.
  -v, --verbose                    Make some output more verbose.
  -h, --help                       Show this message.

Error: Invalid usage: This command requires at least 1 text or regex argument.
yao@yao-IdeaPad-3-14ITL6:~/Desktop/PHPLaracasts/laracasts$ clear
yao@yao-IdeaPad-3-14ITL6:~/Desktop/PHPLaracasts/laracasts$ brew search php
==> Formulae
brew-php-switcher      php-code-sniffer       php-cs-fixer@2         php@8.0                phpbrew                phpmd                  phpstan                pup
php                    php-cs-fixer           php@7.4                php@8.1                phplint                phpmyadmin             phpunit                pcp
yao@yao-IdeaPad-3-14ITL6:~/Desktop/PHPLaracasts/laracasts$ brew install php
Running `brew update --auto-update`...
==> Fetching dependencies for php: linux-headers@5.15, glibc, ncurses, gmp, isl, mpfr, libmpc, lz4, xz, zlib, zstd, binutils, gcc, readline, libxcrypt, util-linux, apr, ca-certificates, openssl@1.1, mawk, m4, libtool, unixodbc, expat, sqlite, apr-util, argon2, aspell, berkeley-db, gdbm, perl, autoconf, brotli, libunistring, libidn2, libnghttp2, libssh2, openldap, rtmpdump, libedit, krb5, curl, freetds, libpng, bzip2, freetype, fontconfig, jpeg-turbo, aom, libavif, libtiff, giflib, webp, gd, icu4c, libxml2, gettext, libpq, libsodium, libzip, oniguruma, pcre2, tidy-html5, libffi, libgpg-error, libgcrypt and libxslt
==> Fetching linux-headers@5.15
==> Downloading https://ghcr.io/v2/homebrew/core/linux-headers/5.15/manifests/5.15.112
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/linux-headers/5.15/blobs/sha256:1b8b7eaa7a13e27fd5d144fce24013e1c1e49689910ec0d48dffb7ead6fdaf32
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:1b8b7eaa7a13e27fd5d144fce24013e1c1e49689910ec0d48dffb7ead6fdaf32?se=2023-05-18T00%3A00%3A00Z&sig=l8
################################################################################################################################################################################# 100.0%
==> Fetching glibc
==> Downloading https://ghcr.io/v2/homebrew/core/glibc/manifests/2.35_1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/glibc/blobs/sha256:274dd06ae6ecaee3025d6bf21cf4c7641df9a1cc3973e162911a1f4a76000a24
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:274dd06ae6ecaee3025d6bf21cf4c7641df9a1cc3973e162911a1f4a76000a24?se=2023-05-18T00%3A00%3A00Z&sig=XC
################################################################################################################################################################################# 100.0%
==> Fetching ncurses
==> Downloading https://ghcr.io/v2/homebrew/core/ncurses/manifests/6.4-1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/ncurses/blobs/sha256:58970126fed5ca09650b60c453e2b911a85f038b45af9091b5b2ef2b61d7d40e
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:58970126fed5ca09650b60c453e2b911a85f038b45af9091b5b2ef2b61d7d40e?se=2023-05-18T00%3A00%3A00Z&sig=oI
################################################################################################################################################################################# 100.0%
==> Fetching gmp
==> Downloading https://ghcr.io/v2/homebrew/core/gmp/manifests/6.2.1_1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/gmp/blobs/sha256:786ae29f0c0b06ea86e42bd9c6ac2c49bd5757da037dead7053e8bd612c4cf8c
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:786ae29f0c0b06ea86e42bd9c6ac2c49bd5757da037dead7053e8bd612c4cf8c?se=2023-05-18T00%3A00%3A00Z&sig=Ga
################################################################################################################################################################################# 100.0%
==> Fetching isl
==> Downloading https://ghcr.io/v2/homebrew/core/isl/manifests/0.26
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/isl/blobs/sha256:db14ba1e4ea23ab41e06930dcf25ae9023c5e395c88602da2a9b6a98d54c92d3
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:db14ba1e4ea23ab41e06930dcf25ae9023c5e395c88602da2a9b6a98d54c92d3?se=2023-05-18T00%3A00%3A00Z&sig=mV
################################################################################################################################################################################# 100.0%
==> Fetching mpfr
==> Downloading https://ghcr.io/v2/homebrew/core/mpfr/manifests/4.2.0-p7
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/mpfr/blobs/sha256:1507a93b7779f08c5a69f2f46b99e8d2490fa599fb7fd72f64a4b9effd5505bd
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:1507a93b7779f08c5a69f2f46b99e8d2490fa599fb7fd72f64a4b9effd5505bd?se=2023-05-18T00%3A00%3A00Z&sig=7D
################################################################################################################################################################################# 100.0%
==> Fetching libmpc
==> Downloading https://ghcr.io/v2/homebrew/core/libmpc/manifests/1.3.1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libmpc/blobs/sha256:f6542ae5bcf643ca0c980c7000cde1585922e76be080b3cc3422dac0d4a50904
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:f6542ae5bcf643ca0c980c7000cde1585922e76be080b3cc3422dac0d4a50904?se=2023-05-18T00%3A00%3A00Z&sig=Aq
################################################################################################################################################################################# 100.0%
==> Fetching lz4
==> Downloading https://ghcr.io/v2/homebrew/core/lz4/manifests/1.9.4
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/lz4/blobs/sha256:1757fefc3840e11c4822e4c2a95aa62aca44a4eaccce6f5c414ea51d1e58bf8e
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:1757fefc3840e11c4822e4c2a95aa62aca44a4eaccce6f5c414ea51d1e58bf8e?se=2023-05-18T00%3A00%3A00Z&sig=BP
################################################################################################################################################################################# 100.0%
==> Fetching xz
==> Downloading https://ghcr.io/v2/homebrew/core/xz/manifests/5.4.3
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/xz/blobs/sha256:91c390f663972a9249fbbd98546bc2687afab99e5c740065d33cb474ed612bf5
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:91c390f663972a9249fbbd98546bc2687afab99e5c740065d33cb474ed612bf5?se=2023-05-18T00%3A00%3A00Z&sig=E7
################################################################################################################################################################################# 100.0%
==> Fetching zlib
==> Downloading https://ghcr.io/v2/homebrew/core/zlib/manifests/1.2.13-1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/zlib/blobs/sha256:087e022c50655b9a7cdfd980bcff0764ce0f53f02724d4a9cbb7ba3b68b863a9
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:087e022c50655b9a7cdfd980bcff0764ce0f53f02724d4a9cbb7ba3b68b863a9?se=2023-05-18T00%3A00%3A00Z&sig=Ld
################################################################################################################################################################################# 100.0%
==> Fetching zstd
==> Downloading https://ghcr.io/v2/homebrew/core/zstd/manifests/1.5.5
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/zstd/blobs/sha256:68c8655224f058316c16462507b6cdd061bd546e161bf8419c68ca526d3a9a48
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:68c8655224f058316c16462507b6cdd061bd546e161bf8419c68ca526d3a9a48?se=2023-05-18T00%3A00%3A00Z&sig=RE
################################################################################################################################################################################# 100.0%
==> Fetching binutils
==> Downloading https://ghcr.io/v2/homebrew/core/binutils/manifests/2.40
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/binutils/blobs/sha256:f0917ab2fe7b72350deac1946dd8e937e0199292f05ab763c5f309822c04c195
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:f0917ab2fe7b72350deac1946dd8e937e0199292f05ab763c5f309822c04c195?se=2023-05-18T00%3A00%3A00Z&sig=a3
################################################################################################################################################################################# 100.0%
==> Fetching gcc
==> Downloading https://ghcr.io/v2/homebrew/core/gcc/manifests/13.1.0
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/gcc/blobs/sha256:cca77a5d6625d3bb711ce40551751974d4cb5c74306329fc2fc8cdcade2ef564
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:cca77a5d6625d3bb711ce40551751974d4cb5c74306329fc2fc8cdcade2ef564?se=2023-05-18T00%3A05%3A00Z&sig=FW
################################################################################################################################################################################# 100.0%
==> Fetching readline
==> Downloading https://ghcr.io/v2/homebrew/core/readline/manifests/8.2.1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/readline/blobs/sha256:7dc8f7ebbfcb22adcd5535a8da083ed8aa3c42c8579c465a2263d778868bc058
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:7dc8f7ebbfcb22adcd5535a8da083ed8aa3c42c8579c465a2263d778868bc058?se=2023-05-18T00%3A05%3A00Z&sig=mk
################################################################################################################################################################################# 100.0%
==> Fetching libxcrypt
==> Downloading https://ghcr.io/v2/homebrew/core/libxcrypt/manifests/4.4.33
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libxcrypt/blobs/sha256:809ff345c8f0d705ea1d84f086fe5b19f590b540db3902784db6f6c3c8ecf0b1
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:809ff345c8f0d705ea1d84f086fe5b19f590b540db3902784db6f6c3c8ecf0b1?se=2023-05-18T00%3A05%3A00Z&sig=uN
################################################################################################################################################################################# 100.0%
==> Fetching util-linux
==> Downloading https://ghcr.io/v2/homebrew/core/util-linux/manifests/2.38.1-2
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/util-linux/blobs/sha256:aa2192315d8696997a44fac1681386ff0978d354a326477090cc0e940dbfa4b6
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:aa2192315d8696997a44fac1681386ff0978d354a326477090cc0e940dbfa4b6?se=2023-05-18T00%3A05%3A00Z&sig=b0
################################################################################################################################################################################# 100.0%
==> Fetching apr
==> Downloading https://ghcr.io/v2/homebrew/core/apr/manifests/1.7.4
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/apr/blobs/sha256:46ee2796d8449bb3af0ddddceef945f64e25a28fead1e5b7661e430e8e81275a
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:46ee2796d8449bb3af0ddddceef945f64e25a28fead1e5b7661e430e8e81275a?se=2023-05-18T00%3A05%3A00Z&sig=pk
################################################################################################################################################################################# 100.0%
==> Fetching ca-certificates
==> Downloading https://ghcr.io/v2/homebrew/core/ca-certificates/manifests/2023-01-10
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/ca-certificates/blobs/sha256:11fe9d0a98a2ac454fa1db95762a697c3340f46560ff27e5e9db8fdeb003f17e
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:11fe9d0a98a2ac454fa1db95762a697c3340f46560ff27e5e9db8fdeb003f17e?se=2023-05-18T00%3A05%3A00Z&sig=Ri
################################################################################################################################################################################# 100.0%
==> Fetching openssl@1.1
==> Downloading https://ghcr.io/v2/homebrew/core/openssl/1.1/manifests/1.1.1t
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/openssl/1.1/blobs/sha256:8844b2e735dd6e8bc1395eda1a123c136f90cb8985fcec6a7ae6815b5aad971b
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:8844b2e735dd6e8bc1395eda1a123c136f90cb8985fcec6a7ae6815b5aad971b?se=2023-05-18T00%3A05%3A00Z&sig=yt
################################################################################################################################################################################# 100.0%
==> Fetching mawk
==> Downloading https://ghcr.io/v2/homebrew/core/mawk/manifests/1.3.4-20230404
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/mawk/blobs/sha256:d4a2204db237fdc5bf10711b691db0ae7e2087cc655b776b7decc76e0030293b
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:d4a2204db237fdc5bf10711b691db0ae7e2087cc655b776b7decc76e0030293b?se=2023-05-18T00%3A05%3A00Z&sig=5n
################################################################################################################################################################################# 100.0%
==> Fetching m4
==> Downloading https://ghcr.io/v2/homebrew/core/m4/manifests/1.4.19
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/m4/blobs/sha256:f6d1087a51e0ff2e582b3043a25a51b67971b2246cf65167ef3abf1230160f04
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:f6d1087a51e0ff2e582b3043a25a51b67971b2246cf65167ef3abf1230160f04?se=2023-05-18T00%3A05%3A00Z&sig=UQ
################################################################################################################################################################################# 100.0%
==> Fetching libtool
==> Downloading https://ghcr.io/v2/homebrew/core/libtool/manifests/2.4.7
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libtool/blobs/sha256:1cde2899a36adf5b04d25a9b8b4d6bec8a3099bc59ae68c63e479a4da8ca70b3
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:1cde2899a36adf5b04d25a9b8b4d6bec8a3099bc59ae68c63e479a4da8ca70b3?se=2023-05-18T00%3A05%3A00Z&sig=0P
################################################################################################################################################################################# 100.0%
==> Fetching unixodbc
==> Downloading https://ghcr.io/v2/homebrew/core/unixodbc/manifests/2.3.11
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/unixodbc/blobs/sha256:e8d1c01d05e821f0e4aa4aa65f104266ed16331a3e39ae72071bbe0eaec03ea0
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:e8d1c01d05e821f0e4aa4aa65f104266ed16331a3e39ae72071bbe0eaec03ea0?se=2023-05-18T00%3A05%3A00Z&sig=0o
################################################################################################################################################################################# 100.0%
==> Fetching expat
==> Downloading https://ghcr.io/v2/homebrew/core/expat/manifests/2.5.0
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/expat/blobs/sha256:ed2b581249b57581db4178a3f219f94f75d8b540867cc27fe1b809b3d32f1772
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:ed2b581249b57581db4178a3f219f94f75d8b540867cc27fe1b809b3d32f1772?se=2023-05-18T00%3A05%3A00Z&sig=RR
################################################################################################################################################################################# 100.0%
==> Fetching sqlite
==> Downloading https://ghcr.io/v2/homebrew/core/sqlite/manifests/3.42.0
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/sqlite/blobs/sha256:8226fd550248842674a281032e758b0f2fd1f0d7dd543f6eb78512b1edf00ad5
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:8226fd550248842674a281032e758b0f2fd1f0d7dd543f6eb78512b1edf00ad5?se=2023-05-18T00%3A05%3A00Z&sig=Cm
################################################################################################################################################################################# 100.0%
==> Fetching apr-util
==> Downloading https://ghcr.io/v2/homebrew/core/apr-util/manifests/1.6.3
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/apr-util/blobs/sha256:8cee1baa7025531d181d2c6a49198f2095b043405ddbb8618ae9e5e36c2713fb
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:8cee1baa7025531d181d2c6a49198f2095b043405ddbb8618ae9e5e36c2713fb?se=2023-05-18T00%3A05%3A00Z&sig=N4
################################################################################################################################################################################# 100.0%
==> Fetching argon2
==> Downloading https://ghcr.io/v2/homebrew/core/argon2/manifests/20190702_1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/argon2/blobs/sha256:58b4014f120e135a991f1023f210366ef3e9175a37a05a3fffb06a9fe3c23ff4
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:58b4014f120e135a991f1023f210366ef3e9175a37a05a3fffb06a9fe3c23ff4?se=2023-05-18T00%3A05%3A00Z&sig=4n
################################################################################################################################################################################# 100.0%
==> Fetching aspell
==> Downloading https://ghcr.io/v2/homebrew/core/aspell/manifests/0.60.8-1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/aspell/blobs/sha256:5154c4a1e76b1f9ab21325d442cd9eaf80b83314792142ff837f84bcfb8cbb4a
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:5154c4a1e76b1f9ab21325d442cd9eaf80b83314792142ff837f84bcfb8cbb4a?se=2023-05-18T00%3A05%3A00Z&sig=Rm
################################################################################################################################################################################# 100.0%
==> Fetching berkeley-db
==> Downloading https://ghcr.io/v2/homebrew/core/berkeley-db/manifests/18.1.40_1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/berkeley-db/blobs/sha256:ed8bbe73f3996dce31e082f325cb5230e6026d2067824e6ceaaceeafc146ff0c
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:ed8bbe73f3996dce31e082f325cb5230e6026d2067824e6ceaaceeafc146ff0c?se=2023-05-18T00%3A05%3A00Z&sig=HM
################################################################################################################################################################################# 100.0%
==> Fetching gdbm
==> Downloading https://ghcr.io/v2/homebrew/core/gdbm/manifests/1.23
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/gdbm/blobs/sha256:7d5728174c3de6c048a233459a1b8ac9e8c53645ca14962d9a1deb60fd58a568
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:7d5728174c3de6c048a233459a1b8ac9e8c53645ca14962d9a1deb60fd58a568?se=2023-05-18T00%3A05%3A00Z&sig=Ho
################################################################################################################################################################################# 100.0%
==> Fetching perl
==> Downloading https://ghcr.io/v2/homebrew/core/perl/manifests/5.36.1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/perl/blobs/sha256:db9590fceed0e461c2d01977d0d314f3d1696147dd1489c775e9ca415e2aee9a
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:db9590fceed0e461c2d01977d0d314f3d1696147dd1489c775e9ca415e2aee9a?se=2023-05-18T00%3A05%3A00Z&sig=Hj
################################################################################################################################################################################# 100.0%
==> Fetching autoconf
==> Downloading https://ghcr.io/v2/homebrew/core/autoconf/manifests/2.71
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/autoconf/blobs/sha256:9f9a73292e64f19ec504459ee7f8b7f11f1e472d18252499705a9fc289c43f85
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:9f9a73292e64f19ec504459ee7f8b7f11f1e472d18252499705a9fc289c43f85?se=2023-05-18T00%3A10%3A00Z&sig=uY
################################################################################################################################################################################# 100.0%
==> Fetching brotli
==> Downloading https://ghcr.io/v2/homebrew/core/brotli/manifests/1.0.9
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/brotli/blobs/sha256:97756cdd4ee7ca03251307eafdb3dff7be3f070a8c0fdf385e87e7ad4a1068de
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:97756cdd4ee7ca03251307eafdb3dff7be3f070a8c0fdf385e87e7ad4a1068de?se=2023-05-18T00%3A10%3A00Z&sig=wC
################################################################################################################################################################################# 100.0%
==> Fetching libunistring
==> Downloading https://ghcr.io/v2/homebrew/core/libunistring/manifests/1.1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libunistring/blobs/sha256:252f3716191a8c08f8d10e2c20b84cf9645e2c264f409f58d3255d9a4edce77f
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:252f3716191a8c08f8d10e2c20b84cf9645e2c264f409f58d3255d9a4edce77f?se=2023-05-18T00%3A10%3A00Z&sig=5r
################################################################################################################################################################################# 100.0%
==> Fetching libidn2
==> Downloading https://ghcr.io/v2/homebrew/core/libidn2/manifests/2.3.4_1-1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libidn2/blobs/sha256:af78945967847cdf33779abbd1142cabb31d6b5d428f367e23bc068f1d240e49
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:af78945967847cdf33779abbd1142cabb31d6b5d428f367e23bc068f1d240e49?se=2023-05-18T00%3A10%3A00Z&sig=Zd
################################################################################################################################################################################# 100.0%
==> Fetching libnghttp2
==> Downloading https://ghcr.io/v2/homebrew/core/libnghttp2/manifests/1.53.0
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libnghttp2/blobs/sha256:6cd5ce47a47ca1b9fcb4181d59da2ddcbddb3af351e4397d187b7de5a21b7afe
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:6cd5ce47a47ca1b9fcb4181d59da2ddcbddb3af351e4397d187b7de5a21b7afe?se=2023-05-18T00%3A10%3A00Z&sig=L6
################################################################################################################################################################################# 100.0%
==> Fetching libssh2
==> Downloading https://ghcr.io/v2/homebrew/core/libssh2/manifests/1.10.0
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libssh2/blobs/sha256:2ff0fe65fb281d51dab44a53b15ef40ebeebf09a7f4d28e86dfc0cc18e49bbc1
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:2ff0fe65fb281d51dab44a53b15ef40ebeebf09a7f4d28e86dfc0cc18e49bbc1?se=2023-05-18T00%3A10%3A00Z&sig=bP
################################################################################################################################################################################# 100.0%
==> Fetching openldap
==> Downloading https://ghcr.io/v2/homebrew/core/openldap/manifests/2.6.4-1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/openldap/blobs/sha256:0b678bbcef3879aa05a4f84c3997a18fccc3a083a9ccb036fbc69fe3ecc3e8cd
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:0b678bbcef3879aa05a4f84c3997a18fccc3a083a9ccb036fbc69fe3ecc3e8cd?se=2023-05-18T00%3A10%3A00Z&sig=e%
################################################################################################################################################################################# 100.0%
==> Fetching rtmpdump
==> Downloading https://ghcr.io/v2/homebrew/core/rtmpdump/manifests/2.4.20151223_1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/rtmpdump/blobs/sha256:c1d50c3dc8938a0e69c86d29046c924c3e9f7d80c567c8bd848fe368ae0a992e
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:c1d50c3dc8938a0e69c86d29046c924c3e9f7d80c567c8bd848fe368ae0a992e?se=2023-05-18T00%3A10%3A00Z&sig=hV
################################################################################################################################################################################# 100.0%
==> Fetching libedit
==> Downloading https://ghcr.io/v2/homebrew/core/libedit/manifests/20221030-3.1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libedit/blobs/sha256:bee1f6bfb90dd3c9b26ce4732e04025a468fe2fa29d63049cb0aa2a888e610d2
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:bee1f6bfb90dd3c9b26ce4732e04025a468fe2fa29d63049cb0aa2a888e610d2?se=2023-05-18T00%3A10%3A00Z&sig=J7
################################################################################################################################################################################# 100.0%
==> Fetching krb5
==> Downloading https://ghcr.io/v2/homebrew/core/krb5/manifests/1.20.1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/krb5/blobs/sha256:e3ea64db62d46cd9ecdb3f869254c53970440dea6b959e4f62f9bd8ffe8d8e35
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:e3ea64db62d46cd9ecdb3f869254c53970440dea6b959e4f62f9bd8ffe8d8e35?se=2023-05-18T00%3A10%3A00Z&sig=V5
################################################################################################################################################################################# 100.0%
==> Fetching curl
==> Downloading https://ghcr.io/v2/homebrew/core/curl/manifests/8.1.0
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/curl/blobs/sha256:3fa046584287e650ff315481486f0232c9dc572f2b73d6a49dd9497d18fb0b2a
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:3fa046584287e650ff315481486f0232c9dc572f2b73d6a49dd9497d18fb0b2a?se=2023-05-18T00%3A10%3A00Z&sig=sd
################################################################################################################################################################################# 100.0%
==> Fetching freetds
==> Downloading https://ghcr.io/v2/homebrew/core/freetds/manifests/1.3.18
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/freetds/blobs/sha256:f865a612715f8584107360d3c0f30f157c1b4ffb6694e3b321cc95e5975c9f3a
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:f865a612715f8584107360d3c0f30f157c1b4ffb6694e3b321cc95e5975c9f3a?se=2023-05-18T00%3A10%3A00Z&sig=gv
################################################################################################################################################################################# 100.0%
==> Fetching libpng
==> Downloading https://ghcr.io/v2/homebrew/core/libpng/manifests/1.6.39-1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libpng/blobs/sha256:499c5d31e7d78ab405e95aa16fc713e5ae4686d8919f5b94c8864fdde26e62de
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:499c5d31e7d78ab405e95aa16fc713e5ae4686d8919f5b94c8864fdde26e62de?se=2023-05-18T00%3A10%3A00Z&sig=te
################################################################################################################################################################################# 100.0%
==> Fetching bzip2
==> Downloading https://ghcr.io/v2/homebrew/core/bzip2/manifests/1.0.8-2
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/bzip2/blobs/sha256:a731afa70daaafec28359b4f10f1c68455c1955ae66cdbb6b6d52eee277bbd3e
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:a731afa70daaafec28359b4f10f1c68455c1955ae66cdbb6b6d52eee277bbd3e?se=2023-05-18T00%3A10%3A00Z&sig=lY
################################################################################################################################################################################# 100.0%
==> Fetching freetype
==> Downloading https://ghcr.io/v2/homebrew/core/freetype/manifests/2.13.0_1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/freetype/blobs/sha256:590c8b0e9e3c5866a92537fcad41b235da504af96de11e945c64f110f0e6b436
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:590c8b0e9e3c5866a92537fcad41b235da504af96de11e945c64f110f0e6b436?se=2023-05-18T00%3A10%3A00Z&sig=o3
################################################################################################################################################################################# 100.0%
==> Fetching fontconfig
==> Downloading https://ghcr.io/v2/homebrew/core/fontconfig/manifests/2.14.2
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/fontconfig/blobs/sha256:d92379c3a5f5c62a368e3d3ccd0db43d66a99c8c4347d0852d68b433b96706e0
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:d92379c3a5f5c62a368e3d3ccd0db43d66a99c8c4347d0852d68b433b96706e0?se=2023-05-18T00%3A10%3A00Z&sig=H1
################################################################################################################################################################################# 100.0%
==> Fetching jpeg-turbo
==> Downloading https://ghcr.io/v2/homebrew/core/jpeg-turbo/manifests/2.1.5.1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/jpeg-turbo/blobs/sha256:04d6d5a7ca948d8dc163f5a1f163ef097b63266a41e5dbddd88f41918d3a3698
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:04d6d5a7ca948d8dc163f5a1f163ef097b63266a41e5dbddd88f41918d3a3698?se=2023-05-18T00%3A10%3A00Z&sig=n3
################################################################################################################################################################################# 100.0%
==> Fetching aom
==> Downloading https://ghcr.io/v2/homebrew/core/aom/manifests/3.6.1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/aom/blobs/sha256:a80ca6ea6a96f353ec73175886f26d73652dbdf1a50f104b81d0775a442df24b
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:a80ca6ea6a96f353ec73175886f26d73652dbdf1a50f104b81d0775a442df24b?se=2023-05-18T00%3A10%3A00Z&sig=EH
################################################################################################################################################################################# 100.0%
==> Fetching libavif
==> Downloading https://ghcr.io/v2/homebrew/core/libavif/manifests/0.11.1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libavif/blobs/sha256:b519a99be7b7bf73c940eb53f1bd89cb8d06317f4888e6d71c217b03242e15a7
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:b519a99be7b7bf73c940eb53f1bd89cb8d06317f4888e6d71c217b03242e15a7?se=2023-05-18T00%3A10%3A00Z&sig=m5
################################################################################################################################################################################# 100.0%
==> Fetching libtiff
==> Downloading https://ghcr.io/v2/homebrew/core/libtiff/manifests/4.5.0
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libtiff/blobs/sha256:279580bf022a892c617fa7682224b60b164b23b3112226ff169f3f809e1a4225
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:279580bf022a892c617fa7682224b60b164b23b3112226ff169f3f809e1a4225?se=2023-05-18T00%3A10%3A00Z&sig=Qq
################################################################################################################################################################################# 100.0%
==> Fetching giflib
==> Downloading https://ghcr.io/v2/homebrew/core/giflib/manifests/5.2.1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/giflib/blobs/sha256:d753208ed3a4bbd60b59e3ca4466196e4b935d4f434935b540fc6bfb5f3e0385
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:d753208ed3a4bbd60b59e3ca4466196e4b935d4f434935b540fc6bfb5f3e0385?se=2023-05-18T00%3A10%3A00Z&sig=K5
################################################################################################################################################################################# 100.0%
==> Fetching webp
==> Downloading https://ghcr.io/v2/homebrew/core/webp/manifests/1.3.0_1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/webp/blobs/sha256:a703a8e6b6599fbd91ffa96022547073c167fee431724f50544716f4bd8dc036
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:a703a8e6b6599fbd91ffa96022547073c167fee431724f50544716f4bd8dc036?se=2023-05-18T00%3A10%3A00Z&sig=oH
################################################################################################################################################################################# 100.0%
==> Fetching gd
==> Downloading https://ghcr.io/v2/homebrew/core/gd/manifests/2.3.3_5
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/gd/blobs/sha256:cb25e79ae81750ac775514100a9f0d404438f8499cdc8b6b60b3d3f2b5411a4a
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:cb25e79ae81750ac775514100a9f0d404438f8499cdc8b6b60b3d3f2b5411a4a?se=2023-05-18T00%3A10%3A00Z&sig=SV
################################################################################################################################################################################# 100.0%
==> Fetching icu4c
==> Downloading https://ghcr.io/v2/homebrew/core/icu4c/manifests/72.1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/icu4c/blobs/sha256:880ba1731d14d66d48594a7ca1532b12ec50c1e2e3b6c7cd96cfaf05bab04d2f
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:880ba1731d14d66d48594a7ca1532b12ec50c1e2e3b6c7cd96cfaf05bab04d2f?se=2023-05-18T00%3A10%3A00Z&sig=Jd
################################################################################################################################################################################# 100.0%
==> Fetching libxml2
==> Downloading https://ghcr.io/v2/homebrew/core/libxml2/manifests/2.11.3
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libxml2/blobs/sha256:7152f147ee801b49bea2b241981705b7789e22964ad7f8a7301e8f1d214c9ae9
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:7152f147ee801b49bea2b241981705b7789e22964ad7f8a7301e8f1d214c9ae9?se=2023-05-18T00%3A10%3A00Z&sig=Fk
################################################################################################################################################################################# 100.0%
==> Fetching gettext
==> Downloading https://ghcr.io/v2/homebrew/core/gettext/manifests/0.21.1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/gettext/blobs/sha256:991579fa170ca491fd6332844b570095978961a9764e57f00180002d471cf3b8
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:991579fa170ca491fd6332844b570095978961a9764e57f00180002d471cf3b8?se=2023-05-18T00%3A10%3A00Z&sig=Ff
################################################################################################################################################################################# 100.0%
==> Fetching libpq
==> Downloading https://ghcr.io/v2/homebrew/core/libpq/manifests/15.3
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libpq/blobs/sha256:3c09f46b21cc274155e26f406c6fdd82ac4d658f9b2781f00975e5a9988f0b5b
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:3c09f46b21cc274155e26f406c6fdd82ac4d658f9b2781f00975e5a9988f0b5b?se=2023-05-18T00%3A10%3A00Z&sig=bx
################################################################################################################################################################################# 100.0%
==> Fetching libsodium
==> Downloading https://ghcr.io/v2/homebrew/core/libsodium/manifests/1.0.18_1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libsodium/blobs/sha256:1ab2c66fc8ae6c1245b49c9bd7a32853c1b348afe7086d4c2d3baf5ea30bbac9
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:1ab2c66fc8ae6c1245b49c9bd7a32853c1b348afe7086d4c2d3baf5ea30bbac9?se=2023-05-18T00%3A10%3A00Z&sig=5E
################################################################################################################################################################################# 100.0%
==> Fetching libzip
==> Downloading https://ghcr.io/v2/homebrew/core/libzip/manifests/1.9.2
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libzip/blobs/sha256:d2e7f02d1e6de90dc42cea4ed2e198979bb00034455fadb4e1470f84124baf1c
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:d2e7f02d1e6de90dc42cea4ed2e198979bb00034455fadb4e1470f84124baf1c?se=2023-05-18T00%3A10%3A00Z&sig=Ap
################################################################################################################################################################################# 100.0%
==> Fetching oniguruma
==> Downloading https://ghcr.io/v2/homebrew/core/oniguruma/manifests/6.9.8
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/oniguruma/blobs/sha256:e3e431432a920a795798426fe7a32b5536909947d8a23970c4274029b8d03607
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:e3e431432a920a795798426fe7a32b5536909947d8a23970c4274029b8d03607?se=2023-05-18T00%3A10%3A00Z&sig=cl
################################################################################################################################################################################# 100.0%
==> Fetching pcre2
==> Downloading https://ghcr.io/v2/homebrew/core/pcre2/manifests/10.42
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/pcre2/blobs/sha256:6fb73ccbfd7f7d48b9400512ded73383a19dc54ec015ab1aab2b849480c3b3f8
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:6fb73ccbfd7f7d48b9400512ded73383a19dc54ec015ab1aab2b849480c3b3f8?se=2023-05-18T00%3A10%3A00Z&sig=u%
################################################################################################################################################################################# 100.0%
==> Fetching tidy-html5
==> Downloading https://ghcr.io/v2/homebrew/core/tidy-html5/manifests/5.8.0
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/tidy-html5/blobs/sha256:2f80a0abaed47dfa224213a413fbe6f23d1a538cf4bfeb633296f5e7e465fb2d
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:2f80a0abaed47dfa224213a413fbe6f23d1a538cf4bfeb633296f5e7e465fb2d?se=2023-05-18T00%3A10%3A00Z&sig=4Q
################################################################################################################################################################################# 100.0%
==> Fetching libffi
==> Downloading https://ghcr.io/v2/homebrew/core/libffi/manifests/3.4.4
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libffi/blobs/sha256:dcc9412995b5e319f64796a77b1eb8e684f1d1b6b5d7ac824f434ada692e4ff8
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:dcc9412995b5e319f64796a77b1eb8e684f1d1b6b5d7ac824f434ada692e4ff8?se=2023-05-18T00%3A10%3A00Z&sig=Da
################################################################################################################################################################################# 100.0%
==> Fetching libgpg-error
==> Downloading https://ghcr.io/v2/homebrew/core/libgpg-error/manifests/1.47
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libgpg-error/blobs/sha256:c108c343e2fefc5fd01043e153aacd26a32396984eb6ed4b68702116efba5994
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:c108c343e2fefc5fd01043e153aacd26a32396984eb6ed4b68702116efba5994?se=2023-05-18T00%3A10%3A00Z&sig=8O
################################################################################################################################################################################# 100.0%
==> Fetching libgcrypt
==> Downloading https://ghcr.io/v2/homebrew/core/libgcrypt/manifests/1.10.2
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libgcrypt/blobs/sha256:fb4cdae9d33f557d8cc4f4fb34a2078a5ab9b91b6cfe9fabfcb966a6e39807bd
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:fb4cdae9d33f557d8cc4f4fb34a2078a5ab9b91b6cfe9fabfcb966a6e39807bd?se=2023-05-18T00%3A10%3A00Z&sig=PE
################################################################################################################################################################################# 100.0%
==> Fetching libxslt
==> Downloading https://ghcr.io/v2/homebrew/core/libxslt/manifests/1.1.38
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libxslt/blobs/sha256:9de9ab6fc29079326654cbf1b0bb8119f4dcf717b5418bf8c65ea1346b3f09b3
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:9de9ab6fc29079326654cbf1b0bb8119f4dcf717b5418bf8c65ea1346b3f09b3?se=2023-05-18T00%3A10%3A00Z&sig=UP
################################################################################################################################################################################# 100.0%
==> Fetching php
==> Downloading https://ghcr.io/v2/homebrew/core/php/manifests/8.2.6
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/php/blobs/sha256:a40fba4703cac9668d4e19d2b47c6baffc6a4c911bdf5a7ebf2451a87a089a9d
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:a40fba4703cac9668d4e19d2b47c6baffc6a4c911bdf5a7ebf2451a87a089a9d?se=2023-05-18T00%3A15%3A00Z&sig=B9
################################################################################################################################################################################# 100.0%
==> Installing dependencies for php: linux-headers@5.15, glibc, ncurses, gmp, isl, mpfr, libmpc, lz4, xz, zlib, zstd, binutils, gcc, readline, libxcrypt, util-linux, apr, ca-certificates, openssl@1.1, mawk, m4, libtool, unixodbc, expat, sqlite, apr-util, argon2, aspell, berkeley-db, gdbm, perl, autoconf, brotli, libunistring, libidn2, libnghttp2, libssh2, openldap, rtmpdump, libedit, krb5, curl, freetds, libpng, bzip2, freetype, fontconfig, jpeg-turbo, aom, libavif, libtiff, giflib, webp, gd, icu4c, libxml2, gettext, libpq, libsodium, libzip, oniguruma, pcre2, tidy-html5, libffi, libgpg-error, libgcrypt and libxslt
==> Installing php dependency: linux-headers@5.15
==> Pouring linux-headers@5.15--5.15.112.x86_64_linux.bottle.tar.gz
==> Downloading https://formulae.brew.sh/api/formula.jws.json
-#O=#    #       #                                                                                                                                                                     
🍺  /home/linuxbrew/.linuxbrew/Cellar/linux-headers@5.15/5.15.112: 963 files, 5.7MB
==> Installing php dependency: glibc
==> Pouring glibc--2.35_1.x86_64_linux.bottle.tar.gz
==> /home/linuxbrew/.linuxbrew/Cellar/glibc/2.35_1/sbin/ldconfig
==> Installing locale data for en_US.UTF-8
==> /home/linuxbrew/.linuxbrew/Cellar/glibc/2.35_1/bin/localedef -i en_US -f UTF-8 en_US.UTF-8
🍺  /home/linuxbrew/.linuxbrew/Cellar/glibc/2.35_1: 1,404 files, 47MB
==> Installing php dependency: ncurses
==> Pouring ncurses--6.4.x86_64_linux.bottle.1.tar.gz
==> Downloading https://formulae.brew.sh/api/cask.jws.json
-#O=#    #       #                                                                                                                                                                     
🍺  /home/linuxbrew/.linuxbrew/Cellar/ncurses/6.4: 3,991 files, 10.8MB
==> Installing php dependency: gmp
==> Pouring gmp--6.2.1_1.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/gmp/6.2.1_1: 23 files, 3.9MB
==> Installing php dependency: isl
==> Pouring isl--0.26.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/isl/0.26: 74 files, 9.8MB
==> Installing php dependency: mpfr
==> Pouring mpfr--4.2.0-p7.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/mpfr/4.2.0-p7: 31 files, 3.9MB
==> Installing php dependency: libmpc
==> Pouring libmpc--1.3.1.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/libmpc/1.3.1: 13 files, 638.5KB
==> Installing php dependency: lz4
==> Pouring lz4--1.9.4.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/lz4/1.9.4: 22 files, 695.5KB
==> Installing php dependency: xz
==> Pouring xz--5.4.3.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/xz/5.4.3: 312 files, 4MB
==> Installing php dependency: zlib
==> Pouring zlib--1.2.13.x86_64_linux.bottle.1.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/zlib/1.2.13: 13 files, 472.8KB
==> Installing php dependency: zstd
==> Pouring zstd--1.5.5.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/zstd/1.5.5: 31 files, 3.2MB
==> Installing php dependency: binutils
==> Pouring binutils--2.40.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/binutils/2.40: 4,698 files, 462.5MB
==> Installing php dependency: gcc
==> Pouring gcc--13.1.0.x86_64_linux.bottle.tar.gz
==> Creating the GCC specs file: /home/linuxbrew/.linuxbrew/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-pc-linux-gnu/13/specs
🍺  /home/linuxbrew/.linuxbrew/Cellar/gcc/13.1.0: 1,668 files, 320.2MB
==> Installing php dependency: readline
==> Pouring readline--8.2.1.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/readline/8.2.1: 50 files, 2MB
==> Installing php dependency: libxcrypt
==> Pouring libxcrypt--4.4.33.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/libxcrypt/4.4.33: 24 files, 369.8KB
==> Installing php dependency: util-linux
==> Pouring util-linux--2.38.1.x86_64_linux.bottle.2.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/util-linux/2.38.1: 396 files, 21.6MB
==> Installing php dependency: apr
==> Pouring apr--1.7.4.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/apr/1.7.4: 61 files, 1.7MB
==> Installing php dependency: ca-certificates
==> Pouring ca-certificates--2023-01-10.all.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/ca-certificates/2023-01-10: 3 files, 232.7KB
==> Installing php dependency: openssl@1.1
==> Pouring openssl@1.1--1.1.1t.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/openssl@1.1/1.1.1t: 8,409 files, 24.4MB
==> Installing php dependency: mawk
==> Pouring mawk--1.3.4-20230404.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/mawk/1.3.4-20230404: 7 files, 327.4KB
==> Installing php dependency: m4
==> Pouring m4--1.4.19.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/m4/1.4.19: 39 files, 1.1MB
==> Installing php dependency: libtool
==> Pouring libtool--2.4.7.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/libtool/2.4.7: 74 files, 3.8MB
==> Installing php dependency: unixodbc
==> Pouring unixodbc--2.3.11.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/unixodbc/2.3.11: 51 files, 2.7MB
==> Installing php dependency: expat
==> Pouring expat--2.5.0.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/expat/2.5.0: 21 files, 858KB
==> Installing php dependency: sqlite
==> Pouring sqlite--3.42.0.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/sqlite/3.42.0: 12 files, 5.8MB
==> Installing php dependency: apr-util
==> Pouring apr-util--1.6.3.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/apr-util/1.6.3: 59 files, 1MB
==> Installing php dependency: argon2
==> Pouring argon2--20190702_1.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/argon2/20190702_1: 12 files, 653KB
==> Installing php dependency: aspell
==> Pouring aspell--0.60.8.x86_64_linux.bottle.1.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/aspell/0.60.8: 804 files, 324.2MB
==> Installing php dependency: berkeley-db
==> Pouring berkeley-db--18.1.40_1.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/berkeley-db/18.1.40_1: 44 files, 8MB
==> Installing php dependency: gdbm
==> Pouring gdbm--1.23.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/gdbm/1.23: 40 files, 1.3MB
==> Installing php dependency: perl
==> Pouring perl--5.36.1.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/perl/5.36.1: 2,495 files, 74.8MB
==> Installing php dependency: autoconf
==> Pouring autoconf--2.71.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/autoconf/2.71: 71 files, 3.3MB
==> Installing php dependency: brotli
==> Pouring brotli--1.0.9.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/brotli/1.0.9: 25 files, 2.5MB
==> Installing php dependency: libunistring
==> Pouring libunistring--1.1.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/libunistring/1.1: 57 files, 5.5MB
==> Installing php dependency: libidn2
==> Pouring libidn2--2.3.4_1.x86_64_linux.bottle.1.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/libidn2/2.3.4_1: 80 files, 1.2MB
==> Installing php dependency: libnghttp2
==> Pouring libnghttp2--1.53.0.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/libnghttp2/1.53.0: 14 files, 844.4KB
==> Installing php dependency: libssh2
==> Pouring libssh2--1.10.0.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/libssh2/1.10.0: 185 files, 1.2MB
==> Installing php dependency: openldap
==> Pouring openldap--2.6.4.x86_64_linux.bottle.1.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/openldap/2.6.4: 85 files, 7.9MB
==> Installing php dependency: rtmpdump
==> Pouring rtmpdump--2.4+20151223_1.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/rtmpdump/2.4+20151223_1: 20 files, 592KB
==> Installing php dependency: libedit
==> Pouring libedit--20221030-3.1.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/libedit/20221030-3.1: 54 files, 793KB
==> Installing php dependency: krb5
==> Pouring krb5--1.20.1.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/krb5/1.20.1: 163 files, 5.3MB
==> Installing php dependency: curl
==> Pouring curl--8.1.0.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/curl/8.1.0: 511 files, 5.0MB
==> Installing php dependency: freetds
==> Pouring freetds--1.3.18.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/freetds/1.3.18: 1,265 files, 15.4MB
==> Installing php dependency: libpng
==> Pouring libpng--1.6.39.x86_64_linux.bottle.1.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/libpng/1.6.39: 28 files, 1.5MB
==> Installing php dependency: bzip2
==> Pouring bzip2--1.0.8.x86_64_linux.bottle.2.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/bzip2/1.0.8: 31 files, 606.2KB
==> Installing php dependency: freetype
==> Pouring freetype--2.13.0_1.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/freetype/2.13.0_1: 68 files, 2.9MB
==> Installing php dependency: fontconfig
==> Pouring fontconfig--2.14.2.x86_64_linux.bottle.tar.gz
==> Regenerating font cache, this may take a while
==> /home/linuxbrew/.linuxbrew/Cellar/fontconfig/2.14.2/bin/fc-cache -frv
🍺  /home/linuxbrew/.linuxbrew/Cellar/fontconfig/2.14.2: 93 files, 2.5MB
==> Installing php dependency: jpeg-turbo
==> Pouring jpeg-turbo--2.1.5.1.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/jpeg-turbo/2.1.5.1: 44 files, 4.5MB
==> Installing php dependency: aom
==> Pouring aom--3.6.1.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/aom/3.6.1: 23 files, 19.5MB
==> Installing php dependency: libavif
==> Pouring libavif--0.11.1.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/libavif/0.11.1: 19 files, 531.3KB
==> Installing php dependency: libtiff
==> Pouring libtiff--4.5.0.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/libtiff/4.5.0: 476 files, 8.1MB
==> Installing php dependency: giflib
==> Pouring giflib--5.2.1.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/giflib/5.2.1: 32 files, 538.9KB
==> Installing php dependency: webp
==> Pouring webp--1.3.0_1.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/webp/1.3.0_1: 62 files, 3.7MB
==> Installing php dependency: gd
==> Pouring gd--2.3.3_5.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/gd/2.3.3_5: 34 files, 1.4MB
==> Installing php dependency: icu4c
==> Pouring icu4c--72.1.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/icu4c/72.1: 263 files, 85.4MB
==> Installing php dependency: libxml2
==> Pouring libxml2--2.11.3.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/libxml2/2.11.3: 206 files, 9.8MB
==> Installing php dependency: gettext
==> Pouring gettext--0.21.1.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/gettext/0.21.1: 1,982 files, 22.2MB
==> Installing php dependency: libpq
==> Pouring libpq--15.3.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/libpq/15.3: 2,369 files, 29.4MB
==> Installing php dependency: libsodium
==> Pouring libsodium--1.0.18_1.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/libsodium/1.0.18_1: 74 files, 1.2MB
==> Installing php dependency: libzip
==> Pouring libzip--1.9.2.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/libzip/1.9.2: 145 files, 1.1MB
==> Installing php dependency: oniguruma
==> Pouring oniguruma--6.9.8.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/oniguruma/6.9.8: 15 files, 1.7MB
==> Installing php dependency: pcre2
==> Pouring pcre2--10.42.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/pcre2/10.42: 234 files, 7MB
==> Installing php dependency: tidy-html5
==> Pouring tidy-html5--5.8.0.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/tidy-html5/5.8.0: 13 files, 3.4MB
==> Installing php dependency: libffi
==> Pouring libffi--3.4.4.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/libffi/3.4.4: 18 files, 730KB
==> Installing php dependency: libgpg-error
==> Pouring libgpg-error--1.47.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/libgpg-error/1.47: 50 files, 1.9MB
==> Installing php dependency: libgcrypt
==> Pouring libgcrypt--1.10.2.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/libgcrypt/1.10.2: 24 files, 3.8MB
==> Installing php dependency: libxslt
==> Pouring libxslt--1.1.38.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/libxslt/1.1.38: 102 files, 1.3MB
==> Installing php
==> Pouring php--8.2.6.x86_64_linux.bottle.tar.gz
==> /home/linuxbrew/.linuxbrew/Cellar/php/8.2.6/bin/pear config-set php_ini /home/linuxbrew/.linuxbrew/etc/php/8.2/php.ini system
==> /home/linuxbrew/.linuxbrew/Cellar/php/8.2.6/bin/pear config-set php_dir /home/linuxbrew/.linuxbrew/share/pear system
==> /home/linuxbrew/.linuxbrew/Cellar/php/8.2.6/bin/pear config-set doc_dir /home/linuxbrew/.linuxbrew/share/pear/doc system
==> /home/linuxbrew/.linuxbrew/Cellar/php/8.2.6/bin/pear config-set ext_dir /home/linuxbrew/.linuxbrew/lib/php/pecl/20220829 system
==> /home/linuxbrew/.linuxbrew/Cellar/php/8.2.6/bin/pear config-set bin_dir /home/linuxbrew/.linuxbrew/opt/php/bin system
==> /home/linuxbrew/.linuxbrew/Cellar/php/8.2.6/bin/pear config-set data_dir /home/linuxbrew/.linuxbrew/share/pear/data system
==> /home/linuxbrew/.linuxbrew/Cellar/php/8.2.6/bin/pear config-set cfg_dir /home/linuxbrew/.linuxbrew/share/pear/cfg system
==> /home/linuxbrew/.linuxbrew/Cellar/php/8.2.6/bin/pear config-set www_dir /home/linuxbrew/.linuxbrew/share/pear/htdocs system
==> /home/linuxbrew/.linuxbrew/Cellar/php/8.2.6/bin/pear config-set man_dir /home/linuxbrew/.linuxbrew/share/man system
==> /home/linuxbrew/.linuxbrew/Cellar/php/8.2.6/bin/pear config-set test_dir /home/linuxbrew/.linuxbrew/share/pear/test system
==> /home/linuxbrew/.linuxbrew/Cellar/php/8.2.6/bin/pear config-set php_bin /home/linuxbrew/.linuxbrew/opt/php/bin/php system
==> /home/linuxbrew/.linuxbrew/Cellar/php/8.2.6/bin/pear update-channels
==> Caveats
To enable PHP in Apache add the following to httpd.conf and restart Apache:
    LoadModule php_module /home/linuxbrew/.linuxbrew/opt/php/lib/httpd/modules/libphp.so

    <FilesMatch \.php$>
        SetHandler application/x-httpd-php
    </FilesMatch>

Finally, check DirectoryIndex includes index.php
    DirectoryIndex index.php index.html

The php.ini and php-fpm.ini file can be found in:
    /home/linuxbrew/.linuxbrew/etc/php/8.2/

To restart php after an upgrade:
  brew services restart php
Or, if you don't want/need a background service you can just run:
  /home/linuxbrew/.linuxbrew/opt/php/sbin/php-fpm --nodaemonize
==> Summary
🍺  /home/linuxbrew/.linuxbrew/Cellar/php/8.2.6: 519 files, 113.1MB
==> Running `brew cleanup php`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
==> Caveats
==> php
To enable PHP in Apache add the following to httpd.conf and restart Apache:
    LoadModule php_module /home/linuxbrew/.linuxbrew/opt/php/lib/httpd/modules/libphp.so

    <FilesMatch \.php$>
        SetHandler application/x-httpd-php
    </FilesMatch>

Finally, check DirectoryIndex includes index.php
    DirectoryIndex index.php index.html

The php.ini and php-fpm.ini file can be found in:
    /home/linuxbrew/.linuxbrew/etc/php/8.2/

To restart php after an upgrade:
  brew services restart php
Or, if you don't want/need a background service you can just run:
  /home/linuxbrew/.linuxbrew/opt/php/sbin/php-fpm --nodaemonize
yao@yao-IdeaPad-3-14ITL6:~/Desktop/PHPLaracasts/laracasts$ php -v
PHP 8.2.6 (cli) (built: May  9 2023 06:25:31) (NTS)
Copyright (c) The PHP Group
Zend Engine v4.2.6, Copyright (c) Zend Technologies
    with Zend OPcache v8.2.6, Copyright (c), by Zend Technologies
yao@yao-IdeaPad-3-14ITL6:~/Desktop/PHPLaracasts/laracasts$ clear
yao@yao-IdeaPad-3-14ITL6:~/Desktop/PHPLaracasts/laracasts$ brew install mysql
Running `brew update --auto-update`...
==> Fetching dependencies for mysql: libevent, libcbor, dbus, mpdecimal, berkeley-db@5, libtirpc, libnsl, unzip, python, glib, libcap, systemd, libfido2, protobuf and cyrus-sasl
==> Fetching libevent
==> Downloading https://ghcr.io/v2/homebrew/core/libevent/manifests/2.1.12
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libevent/blobs/sha256:08f595173b3e517a94919784e0a2378cdb17c94276d7382203eb7b54322798a7
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:08f595173b3e517a94919784e0a2378cdb17c94276d7382203eb7b54322798a7?se=2023-05-18T00%3A15%3A00Z&sig=oL
################################################################################################################################################################################# 100.0%
==> Fetching libcbor
==> Downloading https://ghcr.io/v2/homebrew/core/libcbor/manifests/0.10.2
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libcbor/blobs/sha256:0c532bdfe6b9efb37ff7cd43d1fcf2def27aefbffbea09093cecf16f95adc198
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:0c532bdfe6b9efb37ff7cd43d1fcf2def27aefbffbea09093cecf16f95adc198?se=2023-05-18T00%3A15%3A00Z&sig=cU
################################################################################################################################################################################# 100.0%
==> Fetching dbus
==> Downloading https://ghcr.io/v2/homebrew/core/dbus/manifests/1.14.6
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/dbus/blobs/sha256:f63b8565981e3c11b67f8801daf0f56eec357bc7bafabd481e29042f9c3cae93
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:f63b8565981e3c11b67f8801daf0f56eec357bc7bafabd481e29042f9c3cae93?se=2023-05-18T00%3A15%3A00Z&sig=8M
################################################################################################################################################################################# 100.0%
==> Fetching mpdecimal
==> Downloading https://ghcr.io/v2/homebrew/core/mpdecimal/manifests/2.5.1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/mpdecimal/blobs/sha256:c5d64a4dd47dc1b66887c0cecd884f0848a801cb2f684cde0f4664e709574067
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:c5d64a4dd47dc1b66887c0cecd884f0848a801cb2f684cde0f4664e709574067?se=2023-05-18T00%3A15%3A00Z&sig=Fw
################################################################################################################################################################################# 100.0%
==> Fetching berkeley-db@5
==> Downloading https://ghcr.io/v2/homebrew/core/berkeley-db/5/manifests/5.3.28_1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/berkeley-db/5/blobs/sha256:c0e2906cc6657dc497fec75629560b0a404b81cebadf5e10c1f70616a14fa886
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:c0e2906cc6657dc497fec75629560b0a404b81cebadf5e10c1f70616a14fa886?se=2023-05-18T00%3A15%3A00Z&sig=He
################################################################################################################################################################################# 100.0%
==> Fetching libtirpc
==> Downloading https://ghcr.io/v2/homebrew/core/libtirpc/manifests/1.3.3
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libtirpc/blobs/sha256:26371c5e683f16a4b2ebf4475150672f76d45e3d43583c942fcb0e916be77dc3
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:26371c5e683f16a4b2ebf4475150672f76d45e3d43583c942fcb0e916be77dc3?se=2023-05-18T00%3A15%3A00Z&sig=iH
################################################################################################################################################################################# 100.0%
==> Fetching libnsl
==> Downloading https://ghcr.io/v2/homebrew/core/libnsl/manifests/2.0.0_1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libnsl/blobs/sha256:ed70b285939e2ab21ba53d122ce2d4beab4cd0f9c86925c3d3a2cfb1b0eeecb3
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:ed70b285939e2ab21ba53d122ce2d4beab4cd0f9c86925c3d3a2cfb1b0eeecb3?se=2023-05-18T00%3A15%3A00Z&sig=vf
################################################################################################################################################################################# 100.0%
==> Fetching unzip
==> Downloading https://ghcr.io/v2/homebrew/core/unzip/manifests/6.0_8
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/unzip/blobs/sha256:baf15e19852a0f9756e3302fa6f3866eaeccc06730c9907bffc19f32861d64bf
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:baf15e19852a0f9756e3302fa6f3866eaeccc06730c9907bffc19f32861d64bf?se=2023-05-18T00%3A15%3A00Z&sig=s1
################################################################################################################################################################################# 100.0%
==> Fetching python@3.11
==> Downloading https://ghcr.io/v2/homebrew/core/python/3.11/manifests/3.11.3
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/python/3.11/blobs/sha256:e2df7e7b96ec43663841c3dfc8bc28d15087d39be147fde3d0dd1ba564be7a95
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:e2df7e7b96ec43663841c3dfc8bc28d15087d39be147fde3d0dd1ba564be7a95?se=2023-05-18T00%3A15%3A00Z&sig=la
################################################################################################################################################################################# 100.0%
==> Fetching glib
==> Downloading https://ghcr.io/v2/homebrew/core/glib/manifests/2.76.2-1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/glib/blobs/sha256:7a8d770727f2249949352241c4fb743eb1f307e29221e7f81e6f550ddccf59c8
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:7a8d770727f2249949352241c4fb743eb1f307e29221e7f81e6f550ddccf59c8?se=2023-05-18T00%3A15%3A00Z&sig=qN
################################################################################################################################################################################# 100.0%
==> Fetching libcap
==> Downloading https://ghcr.io/v2/homebrew/core/libcap/manifests/2.69
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libcap/blobs/sha256:c76a15fd8bef73c4c24174992f4507ae01260b7e2a6864e7e528acd93f1f488f
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:c76a15fd8bef73c4c24174992f4507ae01260b7e2a6864e7e528acd93f1f488f?se=2023-05-18T00%3A20%3A00Z&sig=a8
################################################################################################################################################################################# 100.0%
==> Fetching systemd
==> Downloading https://ghcr.io/v2/homebrew/core/systemd/manifests/253-1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/systemd/blobs/sha256:5b28e9302d9463be40ef8847bfd663a50578d1d6b553dd1f25dc738149262349
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:5b28e9302d9463be40ef8847bfd663a50578d1d6b553dd1f25dc738149262349?se=2023-05-18T00%3A20%3A00Z&sig=3F
################################################################################################################################################################################# 100.0%
==> Fetching libfido2
==> Downloading https://ghcr.io/v2/homebrew/core/libfido2/manifests/1.13.0
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libfido2/blobs/sha256:98b05a5da57c807f92bf4a689991556fc25b58df95de4a065368bfde80d35fc6
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:98b05a5da57c807f92bf4a689991556fc25b58df95de4a065368bfde80d35fc6?se=2023-05-18T00%3A20%3A00Z&sig=nM
################################################################################################################################################################################# 100.0%
==> Fetching protobuf
==> Downloading https://ghcr.io/v2/homebrew/core/protobuf/manifests/21.12-3
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/protobuf/blobs/sha256:b915e53de62350858e1aa087cbf753a01655704b1e2991ec8098fc4c017be9f7
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:b915e53de62350858e1aa087cbf753a01655704b1e2991ec8098fc4c017be9f7?se=2023-05-18T00%3A20%3A00Z&sig=Fh
################################################################################################################################################################################# 100.0%
==> Fetching cyrus-sasl
==> Downloading https://ghcr.io/v2/homebrew/core/cyrus-sasl/manifests/2.1.28_1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/cyrus-sasl/blobs/sha256:f9f5e1a67d77b02174bfa5ec72f756b8350840fed3aa0da75c0a16d280e64382
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:f9f5e1a67d77b02174bfa5ec72f756b8350840fed3aa0da75c0a16d280e64382?se=2023-05-18T00%3A20%3A00Z&sig=1b
################################################################################################################################################################################# 100.0%
==> Fetching mysql
==> Downloading https://ghcr.io/v2/homebrew/core/mysql/manifests/8.0.33-1
################################################################################################################################################################################# 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/mysql/blobs/sha256:3c548b7e0e6ad61fac3a35b8eb9a853226065557e7c462f079f6a17827d267a1
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:3c548b7e0e6ad61fac3a35b8eb9a853226065557e7c462f079f6a17827d267a1?se=2023-05-18T00%3A20%3A00Z&sig=HK
################################################################################################################################################################################# 100.0%
==> Installing dependencies for mysql: libevent, libcbor, dbus, mpdecimal, berkeley-db@5, libtirpc, libnsl, unzip, python, glib, libcap, systemd, libfido2, protobuf and cyrus-sasl
==> Installing mysql dependency: libevent
==> Pouring libevent--2.1.12.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/libevent/2.1.12: 62 files, 2.5MB
==> Installing mysql dependency: libcbor
==> Pouring libcbor--0.10.2.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/libcbor/0.10.2: 31 files, 219.8KB
==> Installing mysql dependency: dbus
==> Pouring dbus--1.14.6.x86_64_linux.bottle.tar.gz
==> /home/linuxbrew/.linuxbrew/Cellar/dbus/1.14.6/bin/dbus-uuidgen --ensure=/home/linuxbrew/.linuxbrew/var/lib/dbus/machine-id
🍺  /home/linuxbrew/.linuxbrew/Cellar/dbus/1.14.6: 77 files, 2.9MB
==> Installing mysql dependency: mpdecimal
==> Pouring mpdecimal--2.5.1.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/mpdecimal/2.5.1: 71 files, 2.4MB
==> Installing mysql dependency: berkeley-db@5
==> Pouring berkeley-db@5--5.3.28_1.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/berkeley-db@5/5.3.28_1: 5,271 files, 87.7MB
==> Installing mysql dependency: libtirpc
==> Pouring libtirpc--1.3.3.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/libtirpc/1.3.3: 85 files, 1MB
==> Installing mysql dependency: libnsl
==> Pouring libnsl--2.0.0_1.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/libnsl/2.0.0_1: 18 files, 183.4KB
==> Installing mysql dependency: unzip
==> Pouring unzip--6.0_8.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/unzip/6.0_8: 16 files, 598.3KB
==> Installing mysql dependency: python
==> Pouring python@3.11--3.11.3.x86_64_linux.bottle.tar.gz
==> /home/linuxbrew/.linuxbrew/Cellar/python@3.11/3.11.3/bin/python3.11 -m ensurepip
==> /home/linuxbrew/.linuxbrew/Cellar/python@3.11/3.11.3/bin/python3.11 -m pip install -v --no-deps --no-index --upgrade --isolated --target=/home/linuxbrew/.linuxbrew/lib/python3.11/s
🍺  /home/linuxbrew/.linuxbrew/Cellar/python@3.11/3.11.3: 2,735 files, 66.7MB
==> Installing mysql dependency: glib
==> Pouring glib--2.76.2.x86_64_linux.bottle.1.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/glib/2.76.2: 462 files, 26.1MB
==> Installing mysql dependency: libcap
==> Pouring libcap--2.69.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/libcap/2.69: 99 files, 465.3KB
==> Installing mysql dependency: systemd
==> Pouring systemd--253.x86_64_linux.bottle.1.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/systemd/253: 663 files, 22.9MB
==> Installing mysql dependency: libfido2
==> Pouring libfido2--1.13.0.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/libfido2/1.13.0: 548 files, 1.6MB
==> Installing mysql dependency: protobuf
==> Pouring protobuf--21.12.x86_64_linux.bottle.3.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/protobuf/21.12: 288 files, 38.4MB
==> Installing mysql dependency: cyrus-sasl
==> Pouring cyrus-sasl--2.1.28_1.x86_64_linux.bottle.tar.gz
🍺  /home/linuxbrew/.linuxbrew/Cellar/cyrus-sasl/2.1.28_1: 89 files, 1MB
==> Installing mysql
==> Pouring mysql--8.0.33.x86_64_linux.bottle.1.tar.gz
==> /home/linuxbrew/.linuxbrew/Cellar/mysql/8.0.33/bin/mysqld --initialize-insecure --user=yao --basedir=/home/linuxbrew/.linuxbrew/Cellar/mysql/8.0.33 --datadir=/home/linuxbrew/.linux
Last 15 lines from /home/yao/.cache/Homebrew/Logs/mysql/post_install.01.mysqld:
2023-05-18 03:13:08 +0300

/home/linuxbrew/.linuxbrew/Cellar/mysql/8.0.33/bin/mysqld
--initialize-insecure
--user=yao
--basedir=/home/linuxbrew/.linuxbrew/Cellar/mysql/8.0.33
--datadir=/home/linuxbrew/.linuxbrew/var/mysql
--tmpdir=/tmp

2023-05-18T00:13:08.744784Z 0 [Warning] [MY-011068] [Server] The syntax '--skip-host-cache' is deprecated and will be removed in a future release. Please use SET GLOBAL host_cache_size=0 instead.
2023-05-18T00:13:08.744872Z 0 [System] [MY-013169] [Server] /home/linuxbrew/.linuxbrew/Cellar/mysql/8.0.33/bin/mysqld (mysqld 8.0.33) initializing of server in progress as process 65012
2023-05-18T00:13:08.745887Z 0 [ERROR] [MY-010187] [Server] Could not open file '/var/log/mysql/error.log' for error logging: Permission denied
2023-05-18T00:13:08.745911Z 0 [ERROR] [MY-013236] [Server] The designated data directory /home/linuxbrew/.linuxbrew/var/mysql/ is unusable. You can remove all files that the server added to it.
2023-05-18T00:13:08.745916Z 0 [ERROR] [MY-010119] [Server] Aborting
2023-05-18T00:13:08.746703Z 0 [System] [MY-010910] [Server] /home/linuxbrew/.linuxbrew/Cellar/mysql/8.0.33/bin/mysqld: Shutdown complete (mysqld 8.0.33)  Homebrew.
Warning: The post-install step did not complete successfully
You can try again using:
  brew postinstall mysql
==> Caveats
We've installed your MySQL database without a root password. To secure it run:
    mysql_secure_installation

MySQL is configured to only allow connections from localhost by default

To connect run:
    mysql -u root

To restart mysql after an upgrade:
  brew services restart mysql
Or, if you don't want/need a background service you can just run:
  /home/linuxbrew/.linuxbrew/opt/mysql/bin/mysqld_safe --datadir=/home/linuxbrew/.linuxbrew/var/mysql
==> Summary
🍺  /home/linuxbrew/.linuxbrew/Cellar/mysql/8.0.33: 320 files, 367.6MB
==> Running `brew cleanup mysql`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
==> Caveats
==> mysql
We've installed your MySQL database without a root password. To secure it run:
    mysql_secure_installation

MySQL is configured to only allow connections from localhost by default

To connect run:
    mysql -u root

To restart mysql after an upgrade:
  brew services restart mysql
Or, if you don't want/need a background service you can just run:
  /home/linuxbrew/.linuxbrew/opt/mysql/bin/mysqld_safe --datadir=/home/linuxbrew/.linuxbrew/var/mysql
```



3. Dowload TablePlus or PHPMYADMIN
- https://tableplus.com
- https://www.phpmyadmin.net/
```bash

```