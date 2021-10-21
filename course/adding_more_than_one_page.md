---
title: Adding More Than One Page
nav_order: 2
parent: Add Content to the Repository
---

# Adding more than one page

We have been working with only one page until now.
To add more pages to your course just repeat the same process: add a new `markdown` file in the course directory and add the format and content you desire.

## Page order

Remember the `nav_order` value in our header?

```yaml
---
title: Test page
nav_order: 2
---

Hello Courseware!
```

This means the order in which the page will show up in the site.
For example this *Test Page* will show up second.
If we wanted it to be third, we'd change that with `nav_order: 3`.
If no `nav_order` is specified, the pages will be sorted alphabetically.

## Parent and children pages

If some of our pages depend on another, we can define them as *children* and *parent* images respectively. *Parent* means there are nested pages underneath it. *Children* are the nested pages under a parent. Once declared as a child, the page has it's own Nav order that starts with `1` for the first child page. . 

To define a page as a parent page, simply add the declaration `has_children: true` to the header of the page. 

```yaml
---
title: Add Content to the Repository
nav_order: 4
has_children: true
---
```

Lkewise, if you want a page to be a child, declare what it's parent page is using the declaration `parent: <NAME OF PARENT PAGE>`

```yaml
---
title: Adding More Than One Page
nav_order: 6
parent: Add Content to the Repository
---
```

The [just-the-docs tutorial](https://pmarsceill.github.io/just-the-docs/docs/navigation-structure/#pages-with-children) explains more about using parent and children pages!

[Next Page](https://devops-education.gitlab.io/cwac-workshop/course/links_to_examples/)