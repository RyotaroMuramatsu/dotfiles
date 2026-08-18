# dotfiles

VS Code の Dotfiles 機能で適用できる Bash 設定です。

## VS Code の設定

`settings.json` に次を追加し、Remote Development の新しい環境を作成または接続します。

```json
{
  "dotfiles.repository": "https://github.com/RyotaroMuramatsu/dotfiles.git",
  "dotfiles.targetPath": "~/dotfiles",
  "dotfiles.installCommand": "install.sh"
}
```

## 適用内容

- ルートの `install.sh` が実行されます。
- `.bashrc` は `~/.bashrc` へシンボリックリンクされます。
- 既存の `~/.bashrc` がある場合は、上書きせず日時付きのバックアップを作成します。
