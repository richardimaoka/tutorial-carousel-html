#!/bin/sh

cd "$(dirname "$0")" || exit # REMOVE THIS IN aggregate.sh 
cd ../ || exit               # REMOVE THIS IN aggregate.sh - cd to the git repository root

# ## 3. カルーセルの動作を制御するボタン

# ここからカルーセルをスライドさせるためのボタンを配置しますが、一気に実装してしまうとコードの差分が大きくなって、何がどう作用しているのか分かりづらくなってしまいます。そこでまずは、何も動作しないボタンを配置します。

# :large_orange_diamond: Action: 以下のコマンドを入力してください。

# ```shell
git apply patches/392ba1b.patch # add barebone buttons
# ```

# :large_orange_diamond: Action: ブラウザでindex.htmlをリロードしてください。

# :white_check_mark: Result: 以下のように表示されればOKです。

# ![2022-06-06_06h32_19.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/ca0a6146-3232-35a7-77d1-718147f40162.png)

# 小さくてわかりにくいですが、ボタンが画像の左下に配置されました。

# 次に、ボタンを使ってカルーセルを動かす部分を実装します。

# :large_orange_diamond: Action: 以下のコマンドを入力してください。

# ```shell
git apply patches/dc7e1df.patch # button links
# ```

# :white_check_mark: Result: 以下のように表示されればOKです。

# <iframe width="560" height="315" src="https://www.youtube.com/embed/qi_HzS4SN80" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

# 次は、カルーセル内の次の画像に遷移するときの動きをスムーズにします。

# :large_orange_diamond: Action: 以下のコマンドを入力してください。

# ```shell
git apply patches/f1a8c6b.patch # smooth scrolling
# ```

# :large_orange_diamond: Action: ブラウザでindex.htmlをリロードしてください。

# :white_check_mark: Result: 以下のように表示されればOKです。

# <iframe width="560" height="315" src="https://www.youtube.com/embed/MsyqxpK6x2s" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

# :large_orange_diamond: Action: 以下のコマンドを入力してください。

# ```shell
git apply patches/f05034a.patch # hide scroll bar
# ```

# :large_orange_diamond: Action: ブラウザでindex.htmlをリロードしてください。

# :white_check_mark: Result: 以下のように表示されればOKです。

# ![2022-06-06_07h23_18.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/d53e386d-3d62-8ab9-d5cc-1059159e201b.png)

# :large_orange_diamond: Action: 以下のコマンドを入力してください。

# ```shell
git apply patches/bbbc003.patch # centering buttons
# ```

# :large_orange_diamond: Action: ブラウザでindex.htmlをリロードしてください。

# :white_check_mark: Result: 以下のように表示されればOKです。

# ![2022-06-06_07h23_48.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/94b60362-4e96-c93f-5b8d-b4aa3633dba3.png)

# :large_orange_diamond: Action: 以下のコマンドを入力してください。

# ```shell
git apply patches/915876d.patch # decorate buttons
# ```

# :large_orange_diamond: Action: ブラウザでindex.htmlをリロードしてください。

# :white_check_mark: Result: 以下のように表示されればOKです。

# <iframe width="640" height="360" src="https://www.youtube.com/embed/wLTp7YvLBSc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

