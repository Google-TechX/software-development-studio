# Software Development Studio

This course is an integrative experience that brings together all components of
the undergraduate computer science curriculum in a hands-on real-world setting.
The course is a bridge between the academic experience and the software
engineering professional workplace.

## Building codelabs

https://github.com/googlecodelabs/tools

First, export from Google Docs to Markdown to have a consistent source.

```
claat export -f md -o codelabs 1iYGnCE9AqZKczqEBQJQ4LgliY0UcZdQdgkNcPc3msJU
```

Next, generate HTML from Markdown.

```
claat export -f html -o docs codelabs/01a-cloud-shell/index.md
```
