---
title: Adding a Course Page
nav_order: 1
parent: Add Content to the Repository
---

# Adding a course page

Let's start by adding new content to your site.
We can do that by creating `markdown` files in the `course` directory of your repository.`Markdown` files are pretty similar to plain-text files, but have lots of simple yet powerful formatting capabilities.
You'll recognize `markdown` files by their `.md` or `.markdown` extension.

All `markdown` files created in the `course` directory will be picked up by the site as long as they include the following header at the top:

**Header Example**
```yaml
---
title: The title for your page
nav_order: Order in which you want this page to show up in your page
---
```

The `title` will be the name for your page that shows up in your Courseware website, while `nav_order` is the order in which the page will appear in your course (more on this later!).

Let's try this out by creating a `markdown` file in the `course` directory!

**Steps:**
1. From the repository, click on the course folder.
1. Then add a file by clicking on the + dropdown menu next to main and choose **new file**.   
![add_file.png]({{site.baseurl}}/attached_files/images/add_file.png)
1. Type in the name of the file and add the extension **.md** at the end to designate it as a markdown file.
1. Then copy and paste the header example to the file in the WebIDE. Change the title and the nav_order to 2.

Its contents should look something like this:

```yaml
---
title: Test page
nav_order: 2
---

Hello Courseware!
```

5. After adding these changes, saving and commiting those changes on GitLab, and allowing the pipeline to run, your new page will be available:

![resulting-page](https://i.imgur.com/0ELicN0.png)

Let's keep building on top of this page, format it and add some useful content.

<a href="https://devops-education.gitlab.io/cwac-workshop/course/formatting_text/" target="_blank">Next Page</a>
