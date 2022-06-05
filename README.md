## 0. はじめに

HTML と CSS の機能のみでカルーセルを作成するチュートリアルを用意しました。理解の前に「動かす感覚」を味わってもらうため、**ほぼ全てコピー&ペーストのみで**、素早く進められるチュートリアルになっています。

<iframe width="640" height="360" src="https://www.youtube.com/embed/wLTp7YvLBSc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### git レポジトリのクローン

:large_orange_diamond: Action: ターミナルで以下のコマンドを実行してください

```terminal
git clone https://github.com/richardimaoka/tutorial-carousel-html.git
cd tutorial-carousel-html
```


## 1. HTMLのセットアップ

このチュートリアルでは index.html ファイルのみを使用します。

:large_orange_diamond: Action: 以下のコマンドを入力してください。

```shell
git apply patches/db47c7f.patch # initial HTML
```

:white_check_mark: Result: index.html が生成されます。

:large_orange_diamond: Action: ブラウザからindex.htmlを開いてください。

:white_check_mark: Result: ブラウザで以下のように表示されればOKです

![2022-06-06_06h01_51.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/2f8eed43-cd20-ecac-e55d-b37dce404ea0.png)



## 2. カルーセルのスライダーを作成

まずはカルーセルで使う画像を並べて表示します。

:large_orange_diamond: Action: 以下のコマンドを入力してください。

```shell
git apply patches/365ac03.patch # add images
```

:large_orange_diamond: Action: ブラウザでindex.htmlをリロードしてください。

:white_check_mark: Result: 以下のように表示されればOKです。この時点では縦に並んでいます。

![2022-06-06_06h21_02.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/b4c730de-0329-8f31-7fa6-3bd7f742c868.png)

:large_orange_diamond: Action: 以下のコマンドを入力してください。

```shell
git apply patches/cd0b584.patch # display: flex
```

:large_orange_diamond: Action: ブラウザでindex.htmlをリロードしてください。

:white_check_mark: Result: 以下のように表示されればOKです

![2022-06-06_06h21_52.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/c46e8d31-2640-aaa4-3638-320a866d55b5.png)

画面下にスライダーが表示されましたが、これはブラウザビューポートのスライダーであって、まだカルーセルのスライドではありません。

:large_orange_diamond: Action: 以下のコマンドを入力してください。

```shell
git apply patches/ca39bc3.patch # overflow-x: auto
```

:large_orange_diamond: Action: ブラウザでindex.htmlをリロードしてください。

:white_check_mark: Result: 以下のように表示されればOKです。

<iframe width="640" height="360" src="https://www.youtube.com/embed/FWGRBRw7sLk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

画像のすぐ下、つまりカルーセルの内部にスライダーが移動しました。



## 3. カルーセルの動作を制御するボタン

ここからカルーセルをスライドさせるためのボタンを配置しますが、一気に実装してしまうとコードの差分が大きくなって、何がどう作用しているのか分かりづらくなってしまいます。そこでまずは、何も動作しないボタンを配置します。

:large_orange_diamond: Action: 以下のコマンドを入力してください。

```shell
git apply patches/392ba1b.patch # add barebone buttons
```

:large_orange_diamond: Action: ブラウザでindex.htmlをリロードしてください。

:white_check_mark: Result: 以下のように表示されればOKです。

![2022-06-06_06h32_19.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/ca0a6146-3232-35a7-77d1-718147f40162.png)

小さくてわかりにくいですが、ボタンが画像の左下に配置されました。

次に、ボタンを使ってカルーセルを動かす部分を実装します。

:large_orange_diamond: Action: 以下のコマンドを入力してください。

```shell
git apply patches/dc7e1df.patch # button links
```

:white_check_mark: Result: 以下のように表示されればOKです。

<iframe width="560" height="315" src="https://www.youtube.com/embed/qi_HzS4SN80" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

次は、カルーセル内の次の画像に遷移するときの動きをスムーズにします。

:large_orange_diamond: Action: 以下のコマンドを入力してください。

```shell
git apply patches/f1a8c6b.patch # smooth scrolling
```

:large_orange_diamond: Action: ブラウザでindex.htmlをリロードしてください。

:white_check_mark: Result: 以下のように表示されればOKです。

<iframe width="560" height="315" src="https://www.youtube.com/embed/MsyqxpK6x2s" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

:large_orange_diamond: Action: 以下のコマンドを入力してください。

```shell
git apply patches/f05034a.patch # hide scroll bar
```

:large_orange_diamond: Action: ブラウザでindex.htmlをリロードしてください。

![2022-06-06_07h23_18.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/d53e386d-3d62-8ab9-d5cc-1059159e201b.png)

:large_orange_diamond: Action: 以下のコマンドを入力してください。

```shell
git apply patches/bbbc003.patch # centering buttons
```

:large_orange_diamond: Action: ブラウザでindex.htmlをリロードしてください。

:white_check_mark: Result: 以下のように表示されればOKです。

![2022-06-06_07h23_48.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/94b60362-4e96-c93f-5b8d-b4aa3633dba3.png)

:large_orange_diamond: Action: 以下のコマンドを入力してください。

```shell
git apply patches/915876d.patch # decorate buttons
```

:large_orange_diamond: Action: ブラウザでindex.htmlをリロードしてください。

:white_check_mark: Result: 以下のように表示されればOKです。

<iframe width="640" height="360" src="https://www.youtube.com/embed/wLTp7YvLBSc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## 4. まとめ

以上 HTML と CSS の 機能のみでカルーセルを実装しました。カルーセルのアイテム(画像を囲む `<div>`)一つ一つに対して、`<div id="#img-1">`のような id アトリビュートを付与し、移動の際は `<a href="#img-1">`のように id アトリビュートの値を指定したリンクをクリックすることで、 カルーセルの特定のアイテムが表示される状態になります。

これには制限があり、1 ページ内に複数のカルーセルが配置されるような場合、その中での一つのカルーセルの状態しか指定できません。こういった制限を避けようとすると、JavaScript を使う必要に迫られますが、React などを使わない素の JavaScript で一からこの動作を実現するのはけっこう大変です。

JavaScript を使う場合には、以下のリンク先にあるように、React を使うほうが簡単でしょう。

### 関連するチュートリアル

- [コピペで素早く学ぶ React カルーセル](https://qiita.com/RichardImaokaJP/items/0436b24c13c68a558651)
- [コピペで素早く学ぶ React カルーセル (CSS transform)](https://qiita.com/RichardImaokaJP/items/80aa851b800533db4842)

### 参考文献

- CSS-Only Carousel - CSS-TRICKS https://css-tricks.com/css-only-carousel/
- CSS overflow - Mozilla https://developer.mozilla.org/en-US/docs/Web/CSS/overflow
