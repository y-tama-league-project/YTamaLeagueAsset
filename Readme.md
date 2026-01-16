# Asset

## Overview
一般公開用の画像アセット集です。Cloudflare Pages 経由で参照されます。

## Responsibilities
- 公開用画像の配置と配信
- URL 参照されるパス/命名の維持
- キャッシュを意識した更新運用
- やらないこと: 実行コードやツールの実装

## Dependencies
- なし

## Development
- ファイルパスは URL として使われるため、命名規則とパス設計を厳守
- 破壊的変更を避け、必要に応じてファイル名変更でキャッシュバスター
- 生成/変換は `../Cli/README.md` のツール利用を想定

## Deploy
- Cloudflare Pages
  - 本番: https://y-tama-asset-dev.pages.dev/
  - 共通開発: https://y-tama-asset.pages.dev/

## Links
- ../Platform/docs/INDEX.md
- ../Platform/catalog/services.yaml
- ../HtmlTools/README.md
- ../Web/README.md

## 命名規則

## battle_player_thumbnails
### 規則
`battle_player_thumbnails/battle_player_{playerId:2d}.png`

### 用途
本配信対局中の出場選手画像

## delivery_thumbnail_template
### 規則
`delivery_thumbnail_{playerId:2d}.png`

### 用途
本配信サムネの出場選手画像

## opponent_announcement
### 規則
`opponent_announcement_{playerId:2d}_{index}.png`  
※ただし、`index={1,2,3,4}`

### 用途
出場選手の告知画像

## profile
### 規則
`player_images/{playerId:2d}/profile_{playerId:2d}_{size}.png`  
※ただし、`size={250x,500x,1000x}`

### 用途
選手の公式写真(正方形)

## player_introduction
### 規則
`player_introduction/player_introduction_{playerId:2d}.png`

### 用途
本配信中の出場選手紹介画像

## team_logos
### 規則
`team_logos/{teamId:2d}_{teamName}/{teamId:2d}_{teamName}_{size}.png`  
※ただし、`size={250x, 500x, 1000x, 1500x, 2000x}`

### 用途
チームロゴ

