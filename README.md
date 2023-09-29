# Vim Configuration

## Coc.Nvim

---

## Plug管理Coc插件

```shell
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
```

- 目录下无lib即该插件不起效,在该目录下执行 `yarn install --frozen-lockfile` 即可

## 插件备忘📝

- [`coc-clangd`](https://github.com/clangd/coc-clangd) C/C++/Objet-C
- [`coc-java`](https://github.com/neoclide/coc-java) Java (需配合 JDT 使用)
- [`coc-pyright`](https://github.com/fannheyward/coc-pyright) Python
- [`coc-html`](https://github.com/neoclide/coc-html) HTML
- [`coc-css`](https://github.com/neoclide/coc-css) CSS/Less/Sass 支持色彩显示(🐮🍺,虽然不如 VSCode 那样可以用鼠标调色)
- [`coc-tsserver`](https://github.com/neoclide/coc-tsserver) Javascript/Typescript
- [`coc-vetur`](https://github.com/neoclide/coc-vetur) Vue (需vls eslint eslint-plugin-vue, npm安装)
- [`coc-json`](https://github.com/neoclide/coc-json) JSON
- [`coc-markdownlint`](https://github.com/fannheyward/coc-markdownlint) Markdown
- [`coc-pairs`](https://github.com/neoclide/coc-pairs) 自动补充后半个括号(与 `coc-html` 的自动括号冲突, 需排除 html 和 vue 文件)

## SQL的补全

- [`vim-dadbod`](https://github.com/tpope/vim-dadbod)
- [`vim-dadbod-ui`](https://github.com/kristijanhusak/vim-dadbod-ui) 提供 UI
- [`coc-sql`](https://github.com/fannheyward/coc-sql) 提供 `DataBase` `Table` `Column` 补全

## TODO

- [ ] 按键映射
- [ ] 打开内置 Terminal 后,光标变方块
- [ ] Windows Terminal 下粘贴时成对标点位置异常
- [ ] 代码大纲

> iamcco/markdown-preview.nvim
---

$$\lim_{1 \to +\infty}(you) = 250$$
