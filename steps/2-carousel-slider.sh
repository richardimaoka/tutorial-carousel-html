#!/bin/sh

cd "$(dirname "$0")" || exit # REMOVE THIS IN aggregate.sh 
cd ../ || exit               # REMOVE THIS IN aggregate.sh - cd to the git repository root

# ## 2. カルーセルのスライダーを作成

# まずはカルーセルで使う画像を並べて表示します。

# :large_orange_diamond: Action: 以下のコマンドを入力してください。

# ```shell
git apply patches/365ac03.patch # add images
# ```

# :large_orange_diamond: Action: ブラウザでindex.htmlをリロードしてください。

# :white_check_mark: Result: 以下のように表示されればOKです。この時点では縦に並んでいます。

# ![2022-06-06_06h21_02.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/b4c730de-0329-8f31-7fa6-3bd7f742c868.png)

# :large_orange_diamond: Action: 以下のコマンドを入力してください。

# ```shell
git apply patches/cd0b584.patch # display: flex
# ```

# :large_orange_diamond: Action: ブラウザでindex.htmlをリロードしてください。

# :white_check_mark: Result: 以下のように表示されればOKです

# ![2022-06-06_06h21_52.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/c46e8d31-2640-aaa4-3638-320a866d55b5.png)

# 画面下にスライダーが表示されましたが、これはブラウザビューポートのスライダーであって、まだカルーセルのスライドではありません。

# :large_orange_diamond: Action: 以下のコマンドを入力してください。

# ```shell
git apply patches/ca39bc3.patch # overflow-x: auto
# ```

# :large_orange_diamond: Action: ブラウザでindex.htmlをリロードしてください。

# :white_check_mark: Result: 以下のように表示されればOKです。

# <iframe width="640" height="360" src="https://www.youtube.com/embed/FWGRBRw7sLk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

# 画像のすぐ下、つまりカルーセルの内部にスライダーが移動しました。

