---
title: Adding a course page
nav_order: 2
---

# Adding a course page

Let's start by adding new content to your site.
We can do that by creating `markdown` files in the `course` directory.
`markdown` files are pretty similar to plain-text files, but have lots of simple formatting capabilities.
You'll recognize `markdown` files by their `.md` or `.markdown`.

All `markdown` files created in the `course` directory will be picked up by the site if they have the following header at the top:

```yaml
---
title: The title for your page
nav_order: Order in which you want this page to show up in your page
---
```

The `title` will be the name for your page that shows up in your Courseware website, while `nav_order` is the order in which the page will appear in your course (more on this later!).

Let's try this out by creating a `markdown` file of your liking in the `course` directory!

Its contents should look something like this:

```yaml
---
title: Test page
nav_order: 2
---

Hello Courseware!
```

After adding these changes, your new page will be available:

![resulting-page](https://i.imgur.com/0ELicN0.png)

Let's keep building on top of this page, format it and add some useful content.