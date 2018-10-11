# util_scripts
自作シェル

# 詳細

## rsync-git-dir.sh  
rsyncでsshを使用してgit repositoryをリモートに転送します．「.gitignore」に該当するファイルは省きます．
~~~:bash
# example
./rsync-git-dir.sh connection src dst
~~~
  - connection: sshでの接続先
  - src: 転送対象のrepository
  - dst: リモートの転送先ディレクトリ
