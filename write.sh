#!/bin/bash
hugo new post/$1.md #記事のファイル作成
code ./content/post/$1.md #記事編集(VScode)
