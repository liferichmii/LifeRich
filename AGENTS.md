# LifeRich 公式サイト

このフォルダは **GitHubに公開されるファイルだけ** を置く場所です。

## GitHub

- リポジトリ: https://github.com/liferichmii/LifeRich
- 公開URL: https://liferichmii.github.io/LifeRich/ （GitHub Pages / mainブランチ）

## ファイル構成

| ファイル | 中身 |
|---|---|
| `index.html` | HP本体。1ファイル完結（CSS・JS・画像すべて埋め込み済み） |
| `tokusho.html` | 特定商取引法に基づく表記（未記入の項目あり） |
| `ogp.png` | SNSでシェアされたときのカード画像（1200×630） |

## ⚠️ 絶対に守ること

**このリポジトリは全世界に公開されています。**

親フォルダ（`Desktop\LifeRich`）には、セミナー資料・事業設計書・個人史などの
**非公開にすべきファイル**が入っています。それらを絶対にこのフォルダへコピーしたり、
コミットしたりしないこと。追加していいのは、HPとして公開する前提のファイルだけ。

## 「HPをGitHubにあげて」と言われたら

```
git add -A
git commit -m "HP更新"
git push origin main
```

初回のみ、ブラウザでGitHubログインが必要（Git Credential Manager）。

## ブランドの決まりごと（文言を触るときは必ず守る）

- 屋号の意味は **「心豊かな人生を」**（「人生を豊かに」は使わない）
- 看板コピー: 「複雑なAI時代を、もっとシンプルに。」「わからない人がわかるようになる」
- 哲学: 「主役はあなた。AIはただの道具。」
- キラーフレーズ: 「AIは急速に進化している。でも、あなたの志だけは作れない。」
- 合言葉: 「AIを使うのは、愛の選択。」
- ターゲットは「ひとりで事業をしている方」。**「女性特化」とは書かない**
- 使わない語: 支援する／救う／寄り添います、乗り遅れる／差をつける、AIが考える／相棒・パートナー
- 「スマホだけでOK」とは書かない（オンライン受講にはPCかタブレットが要る）
- 本文は16.5px・中太（weight 500）・15px未満にしない

## 料金（勝手に変えない）

- しっかり伴走コース 15,000円/月（先着3名・通常20,000円）
- 月1マンツーマンコース 9,000円/月
- 少人数実践型講義コース 4,000円/月
- 都度払い: マンツーマン7,000円/回、単発講義2,000円/回

## リンク

- 公式LINE: https://lin.ee/SJfOe0T
- 無料相談カレンダー: https://calendar.google.com/calendar/u/0/appointments/schedules/AcZssZ3B8OAJ_YQUMG3xZMK3KaNMJyE2ty673RmdDzM5rTCMgawrGZEXl1NgHlQxo5R2UAJdC-jpD5gm
- Instagram: https://www.instagram.com/ainomizuki/

## 未完了のタスク

1. `tokusho.html` の空欄（住所・電話・メール・支払方法・支払時期・解約条件）
2. 料金の税込／税別の明記
3. `index.html` の `og:url` と `og:image` を実URLに差し替え（現在 example.com）
