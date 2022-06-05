#!/bin/sh

cd "$(dirname "$0")" || exit # REMOVE THIS IN aggregate.sh 
cd ../ || exit               # REMOVE THIS IN aggregate.sh - cd to the git repository root

# ## 1. HTMLのセットアップ

# このチュートリアルでは index.html ファイルのみを使用します。

# :large_orange_diamond: Action: 以下のコマンドを入力してください。

# ```shell
git apply patches/db47c7f.patch # initial HTML
# ```

# :white_check_mark: Result: index.html が生成されます。

# :large_orange_diamond: Action: ブラウザからindex.htmlを開いてください。

# :white_check_mark: Result: ブラウザで以下のように表示されればOKです

# ![2022-06-06_06h01_51.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/2f8eed43-cd20-ecac-e55d-b37dce404ea0.png)

