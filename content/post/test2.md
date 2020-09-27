---
title: "Hugo on GitHub Pages"
date: 2020-09-27T00:44:00+09:00
authors:
  - navieclipse
tags:
  - hugo
draft: false
---

Hugo on GitHub Pages のメモ

<!--more-->

## 概要

[Hugo](https://gohugo.io/) という静的サイトの作成エンジンがあったので使ってみる。個人的なメモなので人目につかない Git Pages は割とありという需要があった。

## インストール・テーマ

Windows に入れたので Scoop 経由で install した。 [Install Hugo](https://gohugo.io/getting-started/installing)
いろいろとテーマが投稿されていたが、ダークテーマと切り替えられる+シンプルな [hugo-theme-fuji](https://github.com/amzrk2/hugo-theme-fuji/) を使わせてもらうことにした。自分でも作れるようだが時間がかかりそうなので気が向いたときにでも。

## ハマった点

Git pages でホストする方法として公式の doc を参考にした [Host on GitHub | Hugo](https://gohugo.io/hosting-and-deployment/hosting-on-github/)。
この方法で作成する場合、GitHub のリポジトリを下書き用と pages 用の 2 つ用意して git の機能であるサブモジュールで連携する必要があるが、これが使い慣れてないのでハマった。
どうも `hugo` コマンドで生成される public フォルダを下書き用レポジトリ側で `git add` すると上手く `git submodule add -b master ~~~ public` できなかった？git わからん。
とりあえず動いたのでよし。。

## code test

```shell
#!/bin/bash
hugo new post/$1.md #記事のファイル作成
code ./content/post/$1.md #記事編集(VScode)
```

### 参考

- [Hugo で 1 からテーマを作って GitHub Pages にデプロイする | メンバーズエッジカンパニーブログ](https://www.membersedge.co.jp/blog/create-hugo-theme-and-deploy-to-github-pages/)
