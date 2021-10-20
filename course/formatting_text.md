---
title: Formatting your text
nav_order: 2
parent: Add Content to the Repository
---

# Formatting your text

Our previous page was kind of boring.
Let's start by adding some text and making sure to give it a nice format.

We'll take our old *test page* and instead write a small page about `git`:

```yaml
---
title: Git Fundamentals
nav_order: 2
---

git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.

Git is easy to learn and has a tiny footprint with lightning fast performance. It outclasses SCM tools like Subversion, CVS, Perforce, and ClearCase with features like cheap local branching, convenient staging areas, and multiple workflows.

About: https://git-scm.com/about
Documentation: https://git-scm.com/doc
Downloads: https://git-scm.com/downloads
Community: https://git-scm.com/community

Some useful commands are:

git add to add new or changed files to the staging area
git commit to capture those changes
git push to send them out to a remote repository!
```

And it looks something like this:

![git-page](https://i.imgur.com/N22CBLj.png)

Not bad, but not great either.

## Adding titles and sub-titles

Let's start by adding some useful titles and sub-titles to this page.
We can do that in `markdown` using the `#` symbol.
Sub-titles have two or more `#` symbols.

```yaml
---
title: Git Fundamentals
nav_order: 2
---

# Git Fundamentals

git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.

Git is easy to learn and has a tiny footprint with lightning fast performance. It outclasses SCM tools like Subversion, CVS, Perforce, and ClearCase with features like cheap local branching, convenient staging areas, and multiple workflows.

## Useful links

About: https://git-scm.com/about
Documentation: https://git-scm.com/doc
Downloads: https://git-scm.com/downloads
Community: https://git-scm.com/community


## Useful commands
Some useful commands are:

git add to add new or changed files to the staging area
git commit to capture those changes
git push to send them out to a remote repository!
```

![git-page-with-titles](https://i.imgur.com/BkFf7Xp.png)

That looks much better!

## Formatting your text

`markdown` has simple yet powerful ways to format your text.

- *Italics*: to italicize your text surround it with one asterisk: `*text*`
- **Bold**: surround the word you want to bolden with two asterisks like so: `**text**`
- `code`: to denote a word as code, enclose it in backticks \`text\`.

You can also have **ordered** lists and **unordered** lists.

Unordered:

`-` First item

`-` Second item

`-` Third item

Ordered:

`1.` First item

`2.` Second item

`3.` Third item

Let's format our text to make it look better:

```yaml
---
title: Git Fundamentals
nav_order: 2
---

# Git Fundamentals

git is a *free* and *open source* distributed version control system designed to handle everything from small to very large projects with speed and efficiency.

Git is easy to learn and has a tiny footprint with lightning fast performance. It outclasses SCM tools like **Subversion**, **CVS**, **Perforce**, and **ClearCase** with features like cheap local branching, convenient staging areas, and multiple workflows.

## Useful links

- **About**: https://git-scm.com/about
- **Documentation**: https://git-scm.com/doc
- **Downloads**: https://git-scm.com/downloads
- **Community**: https://git-scm.com/community


## Useful commands
Some useful commands are:

1. `git add` to add new or changed files to the staging area
2. `git commit` to capture those changes
3. `git push` to send them out to a remote repository!
```

![git-page-formatted](https://i.imgur.com/UcfSGzW.png)

Now our course is starting to take shape.
Let's continue by adding content.
