---
title: Adding Content
nav_order: 4
parent: Add Content to the Repository
---

# Adding content

Our page about `git` has some nice text formatting, but it can still be better.
Let's add hyperlinks to the sites we references, some images and some files that to attach.

## HyperLinks

`markdown` allows hyperlinks by using the `[Link text](the link)`.
So, if we wanted to transform the sites we previously listed to hyperlinks we'd do:

```yaml
[About](https://git-scm.com/about)
[Documentation](https://git-scm.com/doc)
[Downloads](https://git-scm.com/downloads)
[Community](https://git-scm.com/community)
```

## Adding images

The syntax for adding external images is similar to the hyperlink: `![Link text](link to the image)`.

Let's add `git`'s logo right after our main title:

```
# Git Fundamentals

![git-logo](https://i.imgur.com/DJEpvCv.png)

git is a *free* and *open source* distributed version control system designed to handle everything from small to very large projects with speed and efficiency.
```

You could do the same with a **local** image.
Store it in the `attached_files/images` directory and you'll be able to use a similar syntax.

`![git logo]({{site.baseurl}}/attached_files/images/git_logo.png)`

## Attached files

If you want to attach a file, you'll have to store it first.
You can use the `attached_files/` directory in your repository.
Let's add a `.pdf` file to our course: first, we'll have to store it in the `attached_files/pdf` directory.

`{% raw %}{% attach_file {"file_name": "pdf/pro_git.pdf", "title":"Click here to download the Pro Git book"} %}{% endraw %}`

Here's our page after adding all the content we previously mentioned:

![git-tutorial-page-finished](https://i.imgur.com/QhTkaL4.png)


[Next Page](https://devops-education.gitlab.io/cwac-workshop/course/adding_a_quiz/)