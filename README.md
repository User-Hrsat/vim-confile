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
- `coc-marketplsce`coc的插件市场
- `coc-vetur`vue的补全(需vls语言服务,npm安装;需eslint)

#### SQL的补全问题

```txt
    coc-sql只有缩进和格式化
    内置插件要用动态补全也要dbext
    SQLUtilities怎么用也不知道
    似乎有把Vim发射给数据库的方法
    参考:https://davedevelopment.co.uk/2007/03/29/how-to-send-sql-commands-to-a-database-in-vim.html
```

#### 按键映射的问题

**似乎设置并没有的到预期的结果，需要再研究一下**

#### 光标变方块

- 在打开内置终端之后光标就会又下划线变为方块
- 有点不舒服，不知道能不能带参启动
- 并把配置文件指向远虚拟终端的
- 解决之后就可以快乐的使用浮动窗口了
