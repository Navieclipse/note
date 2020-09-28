---
title: "Windows開発環境"
date: 2020-09-28T16:03:27+09:00
authors:
  - navieclipse
tags:
  - windows
draft: false
---

自宅PCの開発環境整えることを忘れていたので WSL2 とか Windows Terminal とか入れる

<!--more-->

## WSL2

WSL2 は Windows 上で Linux 動かすためのもので Hyper-V によるエミュレーション、ext4 使ってるなど使える感じらしい。
導入も下記にあるように簡単。centos は有料だったので ubuntu にする。

[Windows Subsystem for Linux (WSL) を Windows 10 にインストールする | Microsoft Docs](https://docs.microsoft.com/ja-jp/windows/wsl/install-win10)
[Windows Subsystem for Linux 2(WSL 2)をセットアップしてみた | Developers.IO](https://dev.classmethod.jp/articles/how-to-setup-wsl2/)
[WSL 2 のインストール，Ubuntu 20.04, 18.04 のインストールと利用](https://www.kkaneko.jp/tools/wsl/wsl2.html)

## WSL2 上の git

vim の設定は GitHub 経由で同期しようとしたら git の設定がが。下記サイトを参考に "WSL2上のgit-credientialとGit for Windowsのgit-credential-managerを連携" すると完璧。

[WSL2(Windows Subsystem for Linux 2)環境でgitをhttps経由で利用するときに認証情報を保持する - Qiita](https://qiita.com/Ryusuke-Kawasaki/items/3ca0e9674ec41238ab8e)

## Windows Terminal

Microsoft Store からインストールするだけ。`win`+`r` のファイル名を指定して実行では `wt` で実行できる。勝手に設定で ubuntu も入れてくれているがホームディレクトリが使いづらいので下記設定を追加。`"defaultProfile"` もついでに ubuntu にしておく。

`"startingDirectory": "//wsl$/Ubuntu-20.04/home/%USERNAME%"`

上記じゃ無理だったので、下記で指定した [参考](https://level69.net/archives/27578) 。

`"startingDirectory": "\\\\wsl$\\Ubuntu-20.04\\home\\username"`

この辺の設定も好みで指定

```
"profiles": {
  "defaults": {
    "fontSize": 13,
    "cursorShape": "filledBox"
  },
~~中略~~
"keybindings": [
  ~~中略~~
  { "command": "nextTab", "keys": "ctrl+l" },
  { "command": "prevTab", "keys": "ctrl+h" },
  ~~中略~~
```

各種設定は下記が詳しい。ubuntu なのにアイコンが🐧になるのは、、まあいいか。

[【Windows Terminal完全マスター】プロファイルをカスタマイズして使いやすくしよう：Windows 10 The Latest - ＠IT](https://www.atmarkit.co.jp/ait/articles/2006/26/news019.html)
