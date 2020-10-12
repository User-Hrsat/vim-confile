# Myself Vim Configuration File

#### Plug管理Coc插件
```shell
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
```
- 目录下无lib即该插件不起效,在该目录下执行`yarn install --frozen-lockfile`即可

#### Coc插件备忘📝

- `coc-python`Python补全,语法检测
- `coc-clangd`C/C++/Objet-Coc补全,语法检测
- `coc-java`Java补全,语法检测(需配合JDT使用)
- `coc-tsserver`JS补全,语法检测
- `coc-html`HTML补全,语法检测
- `coc-css`CSS补全,支持色彩显示(🐮🍺,就是不如VS-Code那样可以用鼠标调色)
- `coc-json`JSON补全
- `coc-markdownlint`MarkDown补全
- `coc-pairs`自动补充后半个括号(跟coc-html的自动括号冲突，需排除html及vue)
- `coc-marketplsce`忘了是干什么的了
- `coc-vetur`vue的补全(需vls语言服务,npm安装;需eslint)
