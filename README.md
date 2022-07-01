## Vim Configuration

### Coc.Nvim

---

#### Plug管理Coc插件

```shell
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
```

- 目录下无lib即该插件不起效,在该目录下执行`yarn install --frozen-lockfile`即可

#### 插件备忘📝

- `coc-pyright` Python (动态
- `coc-clangd` C/C++/Objet-C
- `coc-java` Java (需配合JDT使用)
- `coc-tsserver` JS 
- `coc-html` HTML
- `coc-css` CSS/LESS/SASS 支持色彩显示(🐮🍺,虽然不如VS-Code那样可以用鼠标调色)
- `coc-json` JSON
- `coc-markdownlint` MarkDown
- `coc-pairs` 自动补充后半个括号(与 `coc-html` 的自动括号冲突,需排除html及vue)
- `coc-marketplsce` coc的插件市场
- `coc-vetur` vue (需vls语言服务,npm安装;需eslint;应该是,不记得了)

#### SQL的补全

```txt
    用 sql-language-server,参考 Coc.Nvim 的WIKI
```

### TODO

- [ ] 按键映射**

- [ ] 打开内置Terminal后,光标变方块

> iamcco/markdown-preview.nvim
---

$$\lim_{1 \to +\infty}(you) = 250$$
