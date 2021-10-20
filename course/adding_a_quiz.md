---
title: Adding quizzes
nav_order: 4
parent: Add Content to the Repository
---

# Adding quizzes

This template allows the creation of quizzes thanks to [quizdown.js](https://github.com/bonartm/quizdown-js).
You'll be able to create single-choice, multiple-choice or sequence ordering quizzes!

We recommend using [Quizdown Live Editor](https://bonartm.github.io/quizdown-live-editor/) for creating the `markdown` for your quiz.

Let's use their **Multiple Choice** example and change it a little bit.

```markdown
---
primary_color: steelblue
secondary_color: '#e8e8e8'
text_color: black
shuffle_questions: false
shuffle_answers: true
locale: en
---

# Git fundamentals

Which of these are `git` commands?

> You can run them in your console to check if they actually exist!

- [x] git add
- [ ] git delete
- [x] git commit
- [ ] git pop
```

We just created our first multiple choice quiz!
To add it to our site, we'll get the `markdown` we got from the **Live Editor** and surround it with the `{% quiz %} {% endquiz %}` tags:

```markdown
{% raw %}{% quiz %}{% endraw %}
---
primary_color: steelblue
secondary_color: '#e8e8e8'
text_color: black
shuffle_questions: false
shuffle_answers: true
locale: en
---

# Git fundamentals

Which of these are `git` commands?

> You can run them in your console to check if they actually exist!

- [x] git add
- [ ] git delete
- [x] git commit
- [ ] git pop
{% raw %}{% endquiz %}{% endraw %}
```

This quiz will end up looking something like this:

{% quiz %}

---
primary_color: steelblue
secondary_color: '#e8e8e8'
text_color: black
shuffle_questions: false
shuffle_answers: true
locale: en
---

# Git fundamentals

Which of these are `git` commands?

> You can run them in your console to check if they actually exist!

- [x] git add
- [ ] git delete
- [x] git commit
- [ ] git pop

{% endquiz %}

You can add multiple questions to your quiz: just add the `markdown` underneath your previous quiz!

```markdown
{% raw %}{% quiz %}{% endraw %}
---
primary_color: steelblue
secondary_color: '#e8e8e8'
text_color: black
shuffle_questions: false
shuffle_answers: true
locale: en
---

# Git commands

Which of these are `git` commands?

> You can run them in your console to check if they actually exist!

- [x] git add
- [ ] git delete
- [x] git commit
- [ ] git pop


# Git comments

How can you modify your latest commit message?

> You could say that we want to **amend** your comment!

1. [ ] git commit .modify
1. [x] git commit --amend
1. [ ] git modify_commit_message
1. [ ] git restore

{% raw %}{% endquiz %}{% endraw %}
```

Click on **Next** to move to the second question!

{% quiz %}
---
primary_color: steelblue
secondary_color: '#e8e8e8'
text_color: black
shuffle_questions: false
shuffle_answers: true
locale: en
---

# Git commands

Which of these are `git` commands?

> You can run them in your console to check if they actually exist!

- [x] git add
- [ ] git delete
- [x] git commit
- [ ] git pop


# Git comments

How can you modify your latest commit message?

> You could say that we want to **amend** your comment!

1. [ ] git commit .modify
1. [x] git commit --amend
1. [ ] git modify_commit_message
1. [ ] git restore

{% endquiz %}


## More documentation

Wondering what you can and you cannot do with Quizdown?
Check out their [documentation](https://github.com/bonartm/quizdown-js/blob/main/docs/syntax.md) for each type of quiz!
