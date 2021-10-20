---
title: Adding Slides
nav_order: 5
parent: Add Content to the Repository
---

# Adding slides

`markdown` has more uses than creating pages for your course.
You can build slides with it as well!
To do this create a new `markdown` file (remember that it **needs** to have a `.md` or `.markdown` extension ) in the `attached_files/slides_markdown` directory.

Just like we did with the pages, we'll have to write a header right at the top of all the slides files:

```yaml
---
title: 
- Slides Title
author:
- Your Name
---
```

Now each `markdown` title in that file (remember that `markdown` titles begin with a `#`) will become it's own slide in a new slide deck!
We can also make use of all the `markdown` we learned before: we can add pictures, hyperlinks and format our text.

```md
---
title: 
- Git Workflow
author:
- Évariste Galois
---

# Introduction

*Git* is a **distributed version-control** system for tracking changes in files and coordinating work on those files among multiple people.
Distributed means that all users have a copy of the repository instead of a centralized version on a server.

![what-is-git](https://i.imgur.com/rxpXW0j.png)

# Git Workflow

- Create an issue
- Create a branch to tackle that issue
- Push commits
- Open a Merge Request
- Ask from feedback from your colleagues
- Deploy and merge once it's approved!
```

Now we can attach our slides like we learned:

`{% raw %}{% attach_file {"file_name": "slides_markdown/git_slides.pdf", "title":"Git slide deck"} %}{% endraw %}`

## Customizing your slides

The header supports lots of configurations. They are listed [here](https://pandoc.org/MANUAL.html#variables-for-beamer-slides).

For example, we could add a *theme*, the insitute where we're presenting our slide presentation and school logo.

```yaml
---
title: 
- Git Workflow
author:
- Évariste Galois
insitute:
- École normale supérieure
theme:
- Copenhagen
---
```
Once you commit your code and run the pipeline, your slide shoould be available! 

You can check the resulting slides [here](https://devops-education.gitlab.io/pj-cwac-git-example/attached_files/slides_pdf/git_slides.pdf)!


[Next Page](https://devops-education.gitlab.io/cwac-workshop/course/adding_more_than_one_page/)