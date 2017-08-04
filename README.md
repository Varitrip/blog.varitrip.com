# Blog
Varitrip [Blog Site] source code.

## Prerequisite

Install [Hugo] On Mac:

```shell
brew cask install hugo
```


## How to write blog

Create post by hugo:

```shell
hugo new post/example.md
```

Edit `content/post/example.md` as your wish, [Hugo] use Markdown Extension [Mmark Syntax].

Use ```make``` to run http server on ```http://localhost:1313```, view and verify your blog post.

Undraft your blog post ```hugo undraft content/post/example.md```

Commit and push your changes:

```
git add content/post/example.md
git commit -m "Add example blog post"
git push origin source:source
```

Wait [Travis build](https://travis-ci.org/varitrip/varitrip.github.io) done,
It usually takes 1 minute.

Visit [Blog Site] to view your post.


## Links
* [Hugo]
* [Hugo Docs]
* [Mmark Syntax]

[Blog Site]: http://blog.varitrip.com
[Hugo]: https://gohugo.io
[Hugo Docs]: https://gohugo.io/documentation/
[Mmark Syntax]: https://github.com/miekg/mmark/wiki/Syntax
