# Myself Vim Configuration File

- Coc补全框架
- 注释汉化

#### Coc插件备忘📝

- `coc-python`Python补全,语法检测
- `coc-clangd`C/C++/Objet-Coc补全,语法检测
- `coc-java`Java补全,语法检测(需配合JDT使用)
- `coc-tsserver`JS补全,语法检测
- `coc-html`HTML补全,语法检测
- `coc-css`CSS补全,支持色彩显示(🐮🍺,就是不如VS-Code那样可以用鼠标调色)
- `coc-json`JSON补全
- `coc-markdownlint`MarkDown补全
- `coc-pairs`自动补充后半个括号
- `coc-marketplsce`忘了是干什么的了

> 配置如下⚙
```json
FILE:coc-settings.json
------------------------
{
    "java.jdt.ls.home": "your jdtls home path",
    "suggest.autoTrigger": "always",
    "suggest.timeout": 500,
    "suggest.noselect": false,
    "suggest.acceptSuggestionOnCommitCharacter": true,
    "suggest.snippetIndicator": "🗸",
    "suggest.enablePreview": true,

    "languageserver": {
        "efm": {
            "command": "efm-langserver",
            "args": ["-c", "/home/hrsat/.config/efm-langserver/config.yaml"],
            "filetypes": ["vim", "eruby", "markdown", "yaml"]
        }
    },
    "coc.preferences.extensionUpdateCheck": "daily"
}
```
