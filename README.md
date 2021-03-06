# Ruby Capstone Project - Ruby Linter

[![View Code](https://img.shields.io/badge/View%20-Code-green)](https://github.com/acushlakoncept/ruby-linter)
[![Github Issues](https://img.shields.io/badge/GitHub-Issues-orange)](https://github.com/acushlakoncept/ruby-linter/issues)
[![GitHub Pull Requests](https://img.shields.io/badge/GitHub-Pull%20Requests-blue)](https://github.com/acushlakoncept/ruby-linter/pulls)


# About 

The whole idea of writing code to check another code is intriguing at the same time cognitively demanding. 
Building Linters for Ruby, the project provides feedback about errors or warnings in code little by little. 
The project was built completely with Ruby following all possible best practices. Rubocop was used as a code-linter alongside Gitflow to ensure I maintain good coding standards.


# The Build
The custom Ruby linter currently checks/detects for the following errors/warnings.
- check for wrong indentation
- check for trailing spaces
- check for missing/unexpected tags i.e. '( )', '[ ]', and '{ }'
- check missing/unexpected end
- check empty line error

> Below are demonstrations of good and bad code for the above cases. I will use the pipe '|' symbol to indicate cursor position where necessary.

## Indentation Error Check
~~~ruby
# Good Code

class Game
  def initialize(player1, player2)
    @player1 = player1] 
    @player2 = player2
  end

end

# Bad Code

class Game
  def initialize(player1, player2)
    @player1 = player1] 
     @player2 = player2
  end

end
~~~

## Trailing spaces
> note where the cursor(!) is on the bad code 
~~~ruby
# Good Code

class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end
end

# Bad Code

class Game
  def initialize(player1, player2) !
    @player1 = player1
     @player2 = player2
  end

end
~~~

## Missing/Unexpected Tag
~~~ruby
# Good Code


class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end
end

# Bad Code

class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = ([player2]
  end
end
~~~

## Missing/unexpected end
~~~ruby
# Good Code

class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end
end

# Bad Code

class Game
  def initialize(player1, player2)
    @player1 = player1 
    @player2 = player2
  end
end
end
~~~

## Empty line error
~~~ruby
# Good Code

class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end
end

# Bad Code

class Game
  def initialize(player1, player2)
    @player1 = player1

     @player2 = player2
  end
end
~~~

## Built With
- Ruby
- RSpec for Ruby Testing


# Getting Started

To get a local copy of the repository please run the following commands on your terminal:

```
$ cd <folder>
```

```
$ git clone https://github.com/taiwo2/Ruby-Capstone-Project.git
```

**To check for errors on a file:** 

~~~bash
$ bin/main.rb
~~~

## Testing

To test the code, run `rspec` from root of the folder using terminal.
Note: `sample.rb` has been excluded from rubocop checks to allow RSpec testing without interfering with Gitflow actions

> Rspec is used for the test, to install the gem file, run

~~~bash
$ bundle install 
~~~

> But before that, make sure you have **bundler** installed on your system, else run

~~~bash
$ gem install bundler 
~~~

> or you simply install the the following directly using 

~~~bash
$ gem install rspec 
~~~

~~~bash
$ gem install colorize 
~~~


# Author


👤 **Taiwo Adetona**

- Github: [@taiwo2](https://github.com/taiwo2)

- LinkedIn: [Taiwo Adetona](https://www.linkedin.com/in/taiwo-waliyullahi-adetona-988898180/)

- Twitter: [@TaiwoAdetona4](https://twitter.com/TaiwoAdetona4/)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Project inspired by [Microverse](https://www.microverse.org)
