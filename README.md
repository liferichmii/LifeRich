# LifeRich 公式サイト

心豊かな人生を ─ わからない人がわかるようになる、マンツーマンAI実践講座。

- 公開URL: https://liferichmii.github.io/LifeRich/
- リポジトリ: https://github.com/liferichmii/LifeRich

## このプロジェクトの目的

ひとりで事業をしている方に、LifeRichのマンツーマンAI講座を知ってもらい、
**公式LINEの友だち追加**または**無料相談の予約**まで進んでもらうこと。
サイトの成否は、見た目の良さではなく「LINE登録・相談予約が起きたか」で測る。

## 対象ユーザー

- ひとりで事業をしている方（フリーランス・個人事業主・ひとり社長）
- パソコンやAIが得意ではなく、「何から手をつければいいか分からない」状態の方
- スマートフォンから見る人が大半。**モバイルの見え方が本番**

「女性特化」とは書かない。性別で絞らない。

## 使用技術

| | 内容 |
|---|---|
| 言語 | HTML / CSS / JavaScript（フレームワークなし） |
| ビルド | **なし**。`index.html` をブラウザで開けばそのまま動く |
| 依存パッケージ | なし（npm・package.json を使っていない） |
| 外部読み込み | Google Fonts のみ（Cormorant Garamond / Zen Kaku Gothic New） |
| 画像 | すべて base64 で `index.html` に埋め込み済み（`ogp.png` を除く） |
| ホスティング | GitHub Pages（`main` ブランチのルート） |

`index.html` は約400KBの1ファイル完結。CSS・JS・画像がすべてこの中に入っている。
これは意図的な設計で、「ファイルを1つ持ち歩けばサイトが動く」状態を保っている。

## ディレクトリ構成

```
github用/
├── index.html      トップページ本体（1ファイル完結・約400KB）
├── tokusho.html    特定商取引法に基づく表記
├── ogp.png         SNSシェア用カード画像（1200×630）
├── README.md       このファイル
├── AGENTS.md       AIが編集するときのルール（Codex・Claude共通）
├── CLAUDE.md       AGENTS.mdと同一内容（Claude Code用の別名）
├── HANDOFF.md      進捗と次にやることの引き継ぎ
├── .gitignore      機密ファイルの公開防止
└── 公開する.bat    ダブルクリックでGitHubへ反映するバッチ
```

`index.html` の中のセクションID: `pain` → `after` → `why` → `use` → `voice` → `price`
→ `profile` → `faq` → `band` → `contact`（この順で縦に並んでいる）

## 起動方法

ビルドもサーバーも不要。

```bash
start index.html
```

エクスプローラーで `index.html` をダブルクリックしても同じ。

ローカルサーバーで見たいときだけ（任意）:

```bash
npx serve .
```

## 開発方法

1. `index.html` を直接編集する（`<style>` と `<script>` も同じファイルの中にある）
2. ブラウザで開いて確認する（`Ctrl + F5` でキャッシュを無視して再読み込み）
3. **必ずスマホ幅で確認する** — ブラウザの開発者ツール（F12）で 375px 幅にする
4. 文言を触るときは `AGENTS.md` の「ブランドの決まりごと」を先に読む

大きく変える前に `index.html` をコピーして手元に残しておくと戻せる。

## 公開方法

`公開する.bat` をダブルクリックする。中でやっていることは次の3つ。

```bash
git add -A
git commit -m "HP更新"
git push origin main
```

pushの1〜2分後に https://liferichmii.github.io/LifeRich/ へ反映される。
反映されないときはブラウザのキャッシュを疑う（`Ctrl + F5`）。

初回のみブラウザでGitHubへのログインを求められる（Git Credential Manager）。

## 現在の状態

2026-09-02 時点で **公開中・稼働中**。ローカルとGitHubは完全に同期している。

- 最新コミット: `b1a2b56` 背景の3D粒子が薄すぎて見えない問題を修正
- 未コミットの変更: なし
- 特商法ページ: 記入完了ずみ
- OGPのURL: 実URLに差し替え済み

次にやることは `HANDOFF.md` を見る。
