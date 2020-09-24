# Welcome to algorithm-course-notes 👋
![Version](https://img.shields.io/badge/version-1.0.0-blue.svg?cacheSeconds=2592000)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](#)

> 算法课笔记

### ✨ [Demo](https://alg.outsiders.top)

## 添加新章节

1. 在`src`中添加新文件`xxx.tex`（可参考`example.tex`）
2. 在`Makefile`的`SRC`中添加`xxx.tex`

```Makefile
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
