# Welcome to algorithm-course-notes 👋
![Version](https://img.shields.io/badge/version-1.8.0-blue.svg?cacheSeconds=2592000)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](#)
![build-CI](https://github.com/colinaaa/algorithm-course-notes/workflows/build-CI/badge.svg)
![Upload Release Asset](https://github.com/colinaaa/algorithm-course-notes/workflows/Upload%20Release%20Asset/badge.svg)

> 算法课笔记

### ✨[Demo](https://github.com/colinaaa/algorithm-course-notes/releases/download/v1.8.0/book-v1.8.0.pdf)

## 添加新章节

1. 在`src`中添加新文件`xxx.tex`（可参考`example.tex`）
2. 在`Makefile`的`SRC`中添加`xxx.tex`

```make
TEX=\
	$(SRC)/example.tex\
	$(SRC)/xxx.tex\
```

3. 在`book.tex`中添加一个`\input`

```tex
\input{src/xxx.tex}
```

4. 测试一下

```sh
make dev
```

## FAQ

- *Q:* 编译出错: ! LaTeX Error: File <code>`pgfornament.sty'</code> not found.
- *A:* 见 [#8](https://github.com/colinaaa/algorithm-course-notes/issues/8)

- *Q:* 图片或定理的label应该怎么写？
- *A:* 见 [#19](https://github.com/colinaaa/algorithm-course-notes/issues/19) 最好使用有意义的名称，若实在没什么含义，也请加上作用域

## 工具链

- TexLive 2020
- [Elegant LaTeX](https://elegantlatex.org/en/)
- Neovim with vimtex

## 编译

```sh
make
```

## 本地编写

```sh
make dev
```

## 清理

```sh
make clean

# or clean up outputs
make clean-all
```

## Author

👤 **Colin Wang**

* Website: about.outsiders.top
* Github: [@colinaaa](https://github.com/colinaaa)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check [issues page](https://github.com/colinaaa/algorithm-course-notes/issues).

## Show your support

Give a ⭐️ if this project helped you!


***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_
