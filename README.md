# Clean Code ✨

<p align="center">
  <img src="https://github.com/user-attachments/assets/d28d517f-71df-4646-ba0d-a391a80ecdc6" alt="output_image" style="width: 250px; height: 250px" />
</p>



A clean repository dedicated to share Clean Code techniques, hints, didactic examples, realiable references and signals that the code is dirty.


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

<img src="https://github.com/user-attachments/assets/1cad5ec1-4116-4068-845b-dfd0f01f6863" alt="Rigidity" style="width: 750px;">


> [!NOTE]
> "Business changes. Technology changes. The team changes. Team members change. The problem is not the change itself, because change will happen; the problem, in fact, is the inability to cope with change when it arrives."
>
> — Kent Beck

<p align="right">(<a href="#some-signs-that-the-code-is-dirty-">back to code smells</a>)</p>


## Complexity

It's when the code for sorting a list uses the code for sorting a queue and then reverses the result, making it work magically
(**WTF** *metric*)

<img src="https://github.com/user-attachments/assets/e7f45b3b-9f73-473b-90cd-620578aee39d" alt="Complexity" style="width: 750px;">


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

<img src="https://github.com/user-attachments/assets/3b96de55-3069-414d-b1ba-95c95381d664" alt="Fragility" style="width: 500px;">


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

It's when you want to implement a code that builds a table but can't reuse an existing code that builds a table that is 90% similar.

<img src="https://github.com/user-attachments/assets/13248c78-0554-4831-9644-168606b1094a" alt="Imobility" style="width: 400px;">

> [!NOTE]
> "Code reuse is the Holy Grail of Software Engineering."
>
> — Douglas Crockford

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
          <li><a href="#avoid-hadouken-ifs">Avoid Hadouken IFs</a></li>
          <li><a href="#avoid-negative-conditionals">Avoid Negative Conditionals</a></li>
          <li><a href="#encapsulate-conditionals">Encapsulate Conditionals</a></li>
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

> [!WARNING]
> The didactic examples are written in Ruby language to convey the idea in a simple and didactic way, but keep in mind that these Clean Code techniques work in any programming language.

## DRY

**Don't Repeat Yourself**

- If a piece of code is identical or very similar to another, try to extract it into a generalized function
- parameters are your friends

> [!NOTE]
> "Duplication is the primary enemy of a well-designed system. It represents extra work, extra risk, and unnecessary extra complexity."
>
> — Robert C. Martin

> [!NOTE]
> "I think one of the most valuable rules is to avoid duplication. Once and only once."
>
> — Martin Fowler

### Didactic Example 👨‍💻

* Before **DRY**
```rb
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
```

* After **DRY**
```rb
def greet(day_period, name)
  puts "Good #{day_period}, #{name}!"
end

greet("morning", "Alice")
greet("afternoon", "Alice")
greet("evening", "Alice")
```


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

* Before **KISS**
```rb
def calculate_discount(price)
  if price > 100
    if price < 200
      discount = 10
    else
      discount = 20
    end
  else
    discount = 0
  end
  discounted_price = price - (price * discount / 100)
  return discounted_price
end

puts calculate_discount(150)
puts calculate_discount(50)
puts calculate_discount(250)
```

* After **KISS**
```rb
def calculate_discount(price)
  discount = case price
             when 0..100 then 0
             when 101..200 then 10
             else 20
             end
  price - (price * discount / 100)
end

puts calculate_discount(150)
puts calculate_discount(50)
puts calculate_discount(250)
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

* Before **YAGNI**
```rb
class User
  attr_accessor :name, :email, :age, :address, :phone_number

  def initialize(name, email)
    @name = name
    @email = email
    @age = nil  # Unused feature
    @address = nil  # Unused feature
    @phone_number = nil  # Unused feature
  end

  def send_welcome_email
    puts "Welcome, #{name}! A welcome email has been sent to #{email}."
  end
end

user = User.new("Alice", "alice@example.com")
user.send_welcome_email
```

* After **YAGNI**
```rb
class User
  attr_accessor :name, :email, :age, :address, :phone_number

  def initialize(name, email)
    @name = name
    @email = email
  end

  def send_welcome_email
    puts "Welcome, #{name}! A welcome email has been sent to #{email}."
  end
end

user = User.new("Alice", "alice@example.com")
user.send_welcome_email
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

* Before **SRP**
```rb
class ReportGenerator
  def generate_report(data)
    # Process the data
    processed_data = data.map { |item| Processor.process(item) }

    # Convert data to JSON
    json_data = processed_data.to_json

    # Save the report to a file
    File.open('report.json', 'w') do |file|
      file.write(json_data)
    end

    # Send the report via email
    Email.send(data: json_data)
  end
end

data = ["a", "b", "c", "d"]
report = ReportGenerator.new
report.generate_report(data)
```

* After **SRP**
```rb
class ReportGenerator
  def generate_report(data)
    processed_data = process_data(data)
    json_data = convert_to_json(processed_data)
    save_report(json_data)
    send_report(json_data)
  end

  private

  def process_data(data)
    data.map { |item| Processor.process(item) }
  end

  def convert_to_json(data)
    data.to_json
  end

  def save_report(json_data)
    File.open('report.json', 'w') do |file|
      file.write(json_data)
    end
  end

  def send_report(json_data)
    Email.send(data: json_data)
  end
end

data = ["a", "b", "c", "d"]
report = ReportGenerator.new
report.generate_report(data)
```

<p align="right">(<a href="#how-can-i-clean-my-code-">back to techniques</a>)</p>


## Avoid Hadouken IFs

- Avoid nested IFs (**Hadouken IFs**)
- Solution: Early Returns, Switch-Cases

### Didactic Example 👨‍💻

* Before **Avoid Hadouken IFs**
```rb
def process_order(order)
  if order.valid?
    if order.in_stock?
      if order.payment_successful?
        puts "Order processed successfully!"
      else
        puts "Payment failed."
      end
    else
      puts "Item is out of stock."
    end
  else
    puts "Order is invalid."
  end
end

order = Order.new
process_order(order)
```

* After **Avoid Hadouken IFs**
```rb
def process_order(order)
  return puts "Order is invalid." unless order.valid?
  return puts "Item is out of stock." unless order.in_stock?
  return puts "Payment failed." unless order.payment_successful?

  puts "Order processed successfully!"
end

order = Order.new
process_order(order)
```


<p align="right">(<a href="#how-can-i-clean-my-code-">back to techniques</a>)</p>


## Avoid Negative Conditionals

- Positive conditionals reduce mental strain and make it easier to reason about the code.

> [!NOTE]
> "Whenever possible, conditionals should be expressed as **positives**."
>
> — Robert C. Martin"

### Didactic Example 👨‍💻

* Before **Avoid Negative Conditionals**
```rb
def check_access(user)
  if !user.admin?
    if !user.premium_member?
      puts "Access denied."
    else
      puts "Access granted."
    end
  else
    puts "Access granted."
  end
end

user = User.new
check_access(user)
```

* After **Avoid Negative Conditionals**
```rb
def check_access(user)
  if user.admin? || user.premium_member?
    puts "Access granted."
  else
    puts "Access denied."
  end
end

user = User.new
check_access(user)
```

<p align="right">(<a href="#how-can-i-clean-my-code-">back to techniques</a>)</p>

## Encapsulate Conditionals

- Extract complex conditionals into functions that convey the intent of the condition.
- Create names that reveal the intent of the conditional.

> [!NOTE]
> "Boolean logic is hard enough to understand without having to see it in the context of an if or while statement. Extract functions that explain the intent of the conditional."
>
> — Robert C. Martin"

* Before **Encapsulate conditionals**
```rb
def check_availability(user)
  if user.age > 18 && !user.has_children? && (user.premium_member? || user.has_coupon?)
    puts "User is available for the offer."
  else
    puts "User is not available for the offer."
  end
end

user = User.new
check_availability(user)
```

* After **Encapsulate conditionals**
```rb
def check_availability(user)
  if available?(user)
    puts "User is available for the offer."
  else
    puts "User is not available for the offer."
  end
end

private

def available?(user)
  return false if user.age <= 18
  return false if user.has_children?
  return true if user.premium_member?
  return true if user.has_coupon?

  false
end

user = User.new
check_availability(user)
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

* Before **Avoid Flag Arguments**
```rb
def greet(name, formal)
  if formal
    puts "Good evening, #{name}."
  else
    puts "Hi, #{name}!"
  end
end

greet("Alice", true)
greet("Bob", false)
```

* After **Avoid Flag Arguments**
```rb
def greet(name, formality)
  case formality
  when "formal"
    puts "Good evening, #{name}."
  when "informal"
    puts "Hi, #{name}!"
  end
end

greet("Alice", "formal")
greet("Bob", "informal")
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

* Before **Avoid Comments**
```rb
class Calculator
  def calculate_area(radius)
    # Calculate the area of a circle
    area = Math::PI * radius ** 2

    # Round the area to two decimal places
    area = area.round(2)

    area
  end
end

calculator = Calculator.new
puts calculator.calculate_area(5) # Outputs: 78.54
```

* After **Avoid Comments**
```rb
class Calculator
  def calculate_area(radius)
    area = circle_area(radius)
    area = area.round(2)
    area
  end

  private

  def circle_area(radius)
    Math::PI * radius ** 2
  end
end

calculator = Calculator.new
puts calculator.calculate_area(5) # Outputs: 78.54
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

* Before **Good Nomenclatures**
```rb
def fact(n)
  if n <= 1
    1
  else
    n * fact(n - 1)
  end
end

x = 5
y = fact(x)
puts y # Outputs: 120
```

* After **Good Nomenclatures**
```rb
def factorial(number)
  if number <= 1
    1
  else
    number * factorial(number - 1)
  end
end

number = 5
result = factorial(number)
puts result # Outputs: 120
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

* Before **Use Vertical Formatting**
```rb
class Calculator
  def add(a, b)
    a + b
  end

  def multiply(a, b)
    a * b
  end

  def calculate(a, b)
    sum = add(a, b)
    difference = subtract(a, b)
    product = multiply(a, b)
    quotient = divide(a, b)
    [sum, difference, product, quotient]
  end

  def divide(a, b)
    a / b
  end

  def subtract(a, b)
    a - b
  end
end

calculator = Calculator.new
result = calculator.calculate(10, 5)
puts result # 15, 5, 50, 2
```

* After **Use Vertical Formatting**
```rb
class Calculator
  def calculate(a, b)
    sum = add(a, b)
    difference = subtract(a, b)
    product = multiply(a, b)
    quotient = divide(a, b)
    [sum, difference, product, quotient]
  end

  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end

  def multiply(a, b)
    a * b
  end

  def divide(a, b)
    a / b
  end
end

calculator = Calculator.new
result = calculator.calculate(10, 5)
puts result # 15, 5, 50, 2
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

* Before **Delete Code > Create Code**
```rb
class NotificationService
  def send_notification(user, message)
    if user.email_notifications_enabled
      send_email(user.email, message)
    else
      puts "Email notifications are disabled for #{user.name}."
    end

    if user.sms_notifications_enabled
      send_sms(user.phone_number, message)
    else
      puts "SMS notifications are disabled for #{user.name}."
    end
  end

  private

  def send_email(email, message)
    # Code to send email
    puts "Email sent to #{email}: #{message}"
  end

  def send_sms(phone_number, message)
    # Code to send SMS
    puts "SMS sent to #{phone_number}: #{message}"
  end
end

class User
  attr_accessor :name, :email, :phone_number, :email_notifications_enabled, :sms_notifications_enabled

  def initialize(name, email, phone_number)
    @name = name
    @email = email
    @phone_number = phone_number
    @email_notifications_enabled = false
    @sms_notifications_enabled = false
  end
end

# Usage
user = User.new("Alice", "alice@example.com", "123-456-7890")
user.email_notifications_enabled = true
user.sms_notifications_enabled = true
service = NotificationService.new
service.send_notification(user, "Your order has been shipped.")
```

* After **Delete Code > Create Code**
```rb
class NotificationService
  def send_notification(user, message)
    send_email(user.email, message)
    send_sms(user.phone_number, message)
  end

  private

  def send_email(email, message)
    # Code to send email
    puts "Email sent to #{email}: #{message}"
  end

  def send_sms(phone_number, message)
    # Code to send SMS
    puts "SMS sent to #{phone_number}: #{message}"
  end
end

class User
  attr_accessor :name, :email, :phone_number

  def initialize(name, email, phone_number)
    @name = name
    @email = email
    @phone_number = phone_number
  end
end

# Usage
user = User.new("Alice", "alice@example.com", "123-456-7890")
service = NotificationService.new
service.send_notification(user, "Your order has been shipped.")
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

* Before **Boy Scout Rule**
```rb
def print_user_info(user)
  puts "Name: " + user[:name]
  puts "Email: " + user[:email]
  if user[:age] != nil
    puts "Age: " + user[:age].to_s
  end
end

user = { name: "Alice", email: "alice@example.com", age: 30 }
print_user_info(user)
```

* After **Boy Scout Rule**
```rb
def print_user_info(user)
  puts "Name: #{user[:name]}"
  puts "Email: #{user[:email]}"
  puts "Age: #{user[:age]}" if user[:age]
end

user = { name: "Alice", email: "alice@example.com", age: 30 }
print_user_info(user)
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
> "Make it work → Make it right *(Clean Code)* → Make it fast."
>
> — Kent Beck


# Conclusion 👨‍⚖️

Clean code brings a series of advantages that positively impact individuals at all stages of system development.

> [!TIP]
> "A good architecture makes the system easy to understand, easy to develop, easy to maintain, and easy to deploy. The ultimate goal is to minimize the lifetime cost of the system and maximize developer productivity."
>
> — Robert C. Martin

<p align="center">
  <img src="https://github.com/user-attachments/assets/9a87ec99-fd21-4a0f-8456-f11d8735edbb" alt="output_image" style="width: 500px" />
</p>


# References 📚

1. Robert C. Martin
2. Martin Fowler
3. Bill Gates
4. Steve Jobs
5. Don Wells
6. Ray Ozzie
7. Joel Spolsky
8. Bjarne Stroustrup
9. Ken Thompson
10. Santosh Kalwar
11. Donald Knuth
12. Kent Beck
13. Harold Abelson
14. Jerry Sussman
15. Douglas Crockford


# Slides 🖼️

* https://docs.google.com/presentation/d/1WLR0kgqMDsuLhBedybn5qwdRt_IV92fCCgdhAoKr_m4/edit?usp=sharing


# Contact 📞

* [Victor Cordeiro Costa](https://www.linkedin.com/in/victorcorcos/)

