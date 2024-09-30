# Clean Code ✨

A clean repository dedicated to share Clean Code techniques, hints, didactic examples, good references and signals that the code is dirty.


# What is Clean Code? ♻️

It is a software development philosophy that consists in applying techniques that make the code...

|              More             | Easy to               | Ultimately More                           |
|-------------------------------|-----------------------|-------------------------------------------|
| ✅ Clear                      | ✅ Read              | ✅ Reusable                               |
| ✅ Intuitive                  | ✅ Modify            | ✅ Maintanable                            |
| ✅ Reliable                   | ✅ Review            | ✅ Resistant to Technical Debts 🛠️ (TDs)  |
| ✅ Understandable             | ✅ Maintain          | ✅ Resistant to Bugs 🐛                   |


# Where did Clean Code originate? 📘

> [!NOTE]
> “Clean Code: A Handbook of Agile Software Craftsmanship” (2008)
>
> — Robert C. Martin


# Some signs that the code is dirty 💩

<!-- Code Smells -->
<table>
  <tr><td>
    <details open>
      <summary>Code Smells</summary>
        <ol>
          <li><a href="#rigidity">Rigidity</a>: No change is trivial; each change in the code adds more twists and tangles.</li>
          <li><a href="#complexity">Complexity</a>: Changes require a lot of research for understanding and implementation.</li>
          <li><a href="#fragility">Fragility</a>: Changes break existing parts of the code.</li>
          <li><a href="#imobility">Immobility</a>: You can't reuse existing parts of the code.</li>
        </ol>
    </details>
  </td></tr>
</table>

## Rigidity

It's when you have a system that displays the user's name on the screen, and you're going to implement the code that shows the surname, but you had to change the code that shows the age, nationality, CPF, the one that calculates the next prime number, and the one that discovers the cure for cancer.

> [!NOTE]
> "Business changes. Technology changes. The team changes. Team members change. The problem is not the change itself, because change will happen; the problem, in fact, is the inability to cope with change when it arrives."
>
> — Kent Beck

<p align="right">(<a href="#some-signs-that-the-code-is-dirty-">back to code smells</a>)</p>


## Complexity

It's when the code for sorting a list uses the code for sorting a queue and then reverses the result, making it work magically
(*WTF metric*)

> [!NOTE]
> "Complexity kills. Complexity destroys the developer's life. Complexity makes the product hard to plan, build, and test."
>
> — Ray Ozzie (CTO of Microsoft)

> [!NOTE]
> "It is harder to read the code than to write it."
>
> — Joel Spolsky (Creator and CEO of Stack Overflow)

<p align="right">(<a href="#some-signs-that-the-code-is-dirty-">back to code smells</a>)</p>


## Fragility

It's when you fix the login and break the registration.

> [!NOTE]
> "If a change in requirements breaks your architecture, then your architecture is crap."  
>
> — Robert C. Martin

> [!NOTE]
> "If you are afraid to change something, then it is poorly designed."  
>
> — Martin Fowler

<p align="right">(<a href="#some-signs-that-the-code-is-dirty-">back to code smells</a>)</p>


## Imobility

It's when you implement code that builds a table but can't reuse existing code that builds a table that is 90% similar.

<p align="right">(<a href="#some-signs-that-the-code-is-dirty-">back to code smells</a>)</p>


# How can I clean my code? 🧹

There are various clean code techniques available! 🚀  
Here are some of them...

<!-- Techniques -->
<table>
  <tr><td>
    <details open>
      <summary>Techniques</summary>
        <ol>
          <li><a href="#dry">DRY</a></li>
          <li><a href="#kiss">KISS</a></li>
          <li><a href="#yagni">YAGNI</a></li>
          <li><a href="#srp">SRP</a></li>
          <li><a href="#avoid-hadouken-ifs">Avoid IFs Hadouken </a></li>
          <li><a href="#avoid-negative-conditionals">Avoid Negative Conditionals</a></li>
          <li><a href="#avoid-flag-arguments">Avoid Flag Arguments</a></li>
          <li><a href="#avoid-comments">Avoid Comments</a></li>
          <li><a href="#good-nomenclatures">Good Nomenclatures</a></li>
          <li><a href="#use-vertical-formatting">Use Vertical Formatting</a></li>
          <li><a href="#delete-code--create-code">Delete Code > Create Code</a></li>
          <li><a href="#boy-scout-rule">Boy Scout Rule</a></li>
        </ol>
    </details>
  </td></tr>
</table>


## DRY

**Don't Repeat Yourself**

- If a piece of code is identical or very similar to another, try to extract it into a generalized function (parameters are your friends).

> [!NOTE]
> "Duplication is the primary enemy of a well-designed system. It represents extra work, extra risk, and unnecessary extra complexity."
>
> — Robert C. Martin

> [!NOTE]
> "I think one of the most valuable rules is to avoid duplication. Once and only once."
>
> — Martin Fowler

### Didactic Example 👨‍💻

<table>
  <tr>
    <td style="vertical-align: top; padding-right: 20px;">
      <pre><code class="language-ruby">
def greet_morning
  puts "Good morning, Alice!"
end

def greet_afternoon
  puts "Good afternoon, Alice!"
end

def greet_evening
  puts "Good evening, Alice!"
end

greet_morning
greet_afternoon
greet_evening
      </code></pre>
    </td>
    <td style="vertical-align: top; padding-left: 20px;">
      <pre><code class="language-ruby">
def greet(time_of_day, name)
  puts "Good #{time_of_day}, #{name}!"
end

greet("morning", "Alice")
greet("afternoon", "Alice")
greet("evening", "Alice")
      </code></pre>
    </td>
  </tr>
</table>


<p align="right">(<a href="#how-can-i-clean-my-code-">back to techniques</a>)</p>


## KISS

**Keep It Simple Stupid**

- Try to make the code so "stupid" that a 5-year-old could understand it.

> [!NOTE]
> "A difference between a smart programmer and a professional programmer is that the professional understands that clarity is what matters. 👑 Professionals use their powers for good and write code that others can understand."
>
> — Robert C. Martin

> [!NOTE]
> "Simple can be harder than complex. You have to work hard to get your thinking clean and simple. But it's worth it in the end, because once you get there, you can move mountains."
>
> — Steve Jobs

### Didactic Example 👨‍💻

* Before
```rb

```

* After
```rb

```

<p align="right">(<a href="#how-can-i-clean-my-code-">back to techniques</a>)</p>


## YAGNI

**You Ain’t Gonna Need It**

- Don't build a cannon to kill a fly; you might not even need it afterward.

> [!NOTE]
> "90% of the features for the future are never used."
>
> — Don Wells (Extreme Programming)

> [!NOTE]
> "YAGNI applies only to the effort of making the software support future and/or hypothetical functionality; it does not apply to the effort of making the software easier to change."
>
> — Martin Fowler

> [!TIP]
> Use The Combo **YAGNI** → **KISS** → **DRY**
>
> Do the **Necessary** → Do the **Simple** → Do the **Unique**

### Didactic Example 👨‍💻

* Before
```rb

```

* After
```rb

```

<p align="right">(<a href="#how-can-i-clean-my-code-">back to techniques</a>)</p>


## SRP

**Single Responsibility Principle**

- Separate the code into **simple**, **well-defined**, **well-intentioned** tasks and give **clear names**.
- Prevents "spaghetti code" 🍝  

> [!NOTE]
> "Functions should do one thing, do it well, and do only that."  
>
> — Robert C. Martin

### Didactic Example 👨‍💻

* Before
```rb

```

* After
```rb

```

<p align="right">(<a href="#how-can-i-clean-my-code-">back to techniques</a>)</p>


## Avoid Hadouken IFs 

- Avoid nested IFs (**Hadouken IFs**)
- Solution: Early Returns, Switch-Cases

### Didactic Example 👨‍💻

* Before
```rb

```

* After
```rb

```

<p align="right">(<a href="#how-can-i-clean-my-code-">back to techniques</a>)</p>


## Avoid Negative Conditionals

- Positive conditionals reduce mental strain and make it easier to reason about the code.
- Extract complex conditional into a function that conveys the intent of the condition.

> [!NOTE]
> "Extract complex conditionals into functions.
>
> — Robert C. Martin"

> [!NOTE]
> "Whenever possible, conditionals should be expressed as **positives**."
>
> — Robert C. Martin"

### Didactic Example 👨‍💻

* Before
```rb

```

* After
```rb

```

<p align="right">(<a href="#how-can-i-clean-my-code-">back to techniques</a>)</p>


## Avoid Flag Arguments

- Avoid providing **boolean** arguments (`true`/`false`) to functions or methods.
- You could pass a string with a clearer name (for example).

> [!NOTE]
> "Flag arguments are ugly. Passing a boolean into a function is a truly terrible practice."  
>
> — Robert C. Martin

### Didactic Example 👨‍💻

* Before
```rb

```

* After
```rb

```

<p align="right">(<a href="#how-can-i-clean-my-code-">back to techniques</a>)</p>


## Avoid Comments

- Prefer to avoid comments rather than to write them
- If a comment is truly necessary, explain the **“why”** not the **“what”**.

> [!NOTE]
> "Don’t use a comment when you can use a function or a variable."
>
> — Robert C. Martin

> [!NOTE]
> "When you feel the need to write a comment, first try to refactor the code so that any comment becomes superfluous."
>
> — Martin Fowler

### Didactic Example 👨‍💻

* Before
```rb

```

* After
```rb

```

<p align="right">(<a href="#how-can-i-clean-my-code-">back to techniques</a>)</p>


## Good Nomenclatures

- Use **descriptive** variable names that reveal **intent**.
- Use **pronounceable** and **easily searchable names**.
- Use **conventions** (related to the *language*, the *business*, and the organization/team's *communication*).

> [!NOTE]
> "You should name a variable using the same care with which you name a first-born child."  
>
> — Robert C. Martin

> [!NOTE]
> "Any organization that designs a system will produce a design whose structure is a copy of the organization’s communication structure."  
>
> — Robert C. Martin

### Didactic Example 👨‍💻

* Before
```rb

```

* After
```rb

```

<p align="right">(<a href="#how-can-i-clean-my-code-">back to techniques</a>)</p>


## Use Vertical Formatting

- You should read your code **from top to bottom**.
- You should read your code **without "jumping" over functions**.
- Similar and dependent functions **should be close vertically**.

> [!NOTE]
> "Programs must be written for people to read, and only incidentally for machines to execute."  
>
> — Hal Abelson and Jerry Sussman

> [!NOTE]
> "Programming is the art of telling another human being what one wants the computer to do."  
>
> — Donald Knuth

### Didactic Example 👨‍💻

* Before
```rb

```

* After
```rb

```

<p align="right">(<a href="#how-can-i-clean-my-code-">back to techniques</a>)</p>


## Delete Code > Create Code

- Prefer to delete code rather than create code.
- Sometimes even new features can be created by deleting code.

> [!NOTE]
> "One of my most productive days was when I threw away 1,000 lines of code."  
>
> — Ken Thompson

> [!NOTE]
> "Code, like poetry, should be short and concise."  
>
> — Santosh Kalwar

> [!NOTE]
> "Measuring programming progress by lines of code is like measuring aircraft building progress by weight."  
>
> — Bill Gates

### Didactic Example 👨‍💻

* Before
```rb

```

* After
```rb

```

<p align="right">(<a href="#how-can-i-clean-my-code-">back to techniques</a>)</p>


## Boy Scout Rule

- Always leave the campsite cleaner than you found it.
- Take the time to apply **Clean Code** principles to small parts of the code as you program.
- Over time, you will find the codebase much cleaner than when you found it!

> [!NOTE]
> "Programming is a social activity."  
>
> — Robert C. Martin

> [!NOTE]
> "If we all checked in our code a little cleaner than when we checked it out, the code simply could not rot."  
>
> — Robert C. Martin

### Didactic Example 👨‍💻

* Before
```rb

```

* After
```rb

```

<p align="right">(<a href="#how-can-i-clean-my-code-">back to techniques</a>)</p>


# Performance vs. Clarity ⚖️

You will find programmers out there who prefer fast and cryptic code over slow and readable code.
But... was the code really slow? 🤔


> [!WARNING]
> "Programmers waste an enormous amount of time thinking or worrying about the speed of non-critical parts of their programs, and these attempts at efficiency have a strong negative impact when considering debugging and maintenance. We should forget about small efficiencies about 97% of the time: **premature optimization is the root of all evil.**"
>
> — Donald Knuth

> [!WARNING]
> "I asked a programmer why he wrote the code in **one line** instead of another approach that would **better express the intent**. His response was, 'This one is faster.' OK, it turns out that his code runs a picosecond (about 0.35 ps, to be precise) faster than what I proposed. And it’s triggered by a user's click on a button and executed only once. **An absolutely insignificant time gain led to writing less readable code**. **Never do that**: use the code that best expresses your intent for the next human who reads it, unless you really (really) need the execution time gain."
>
> — Someone on Quora

> [!TIP]
> "Make it work → Make it right (Clean Code) → Make it fast."
>
> — Kent Beck


# Conclusion 👨‍⚖️

Clean code brings a series of advantages that positively impact individuals at all stages of system development.

> [!TIP]
> "A good architecture makes the system easy to understand, easy to develop, easy to maintain, and easy to deploy. The ultimate goal is to minimize the lifetime cost of the system and maximize developer productivity."
>
> — Robert C. Martin


# References 📚

- Robert C. Martin
- Martin Fowler
- Don Wells
- Ray Ozzie
- Joel Spolsky
- Bjarne Stroustrup
- Ken Thompson
- Santosh Kalwar
- Donald Knuth
- Kent Beck
- Harold Abelson
- Jerry Sussman


# Contact 📞

* [Victor Cordeiro Costa](https://www.linkedin.com/in/victorcorcos/)

