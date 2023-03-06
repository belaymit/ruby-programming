<a name="readme-top"></a>


<div align="center">

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ (OPTIONAL)](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 Ruby Prog <a name="about-project"></a>


**Ruby Prog** is a...

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>


<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
  </ul>
</details>


### Key Features <a name="key-features"></a>


- **Array**


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>


To get a local copy up and running, follow these steps.

## Description
## Arrays
- Ruby arrays are ordered, ``integer-indexed`` collections of any object. Each element in an array is associated with and referred to by an index.
- Array indexing ``starts at 0``. A ``negative index`` is assumed relative to the end of the array --- that is, an index of  ``-1 indicates`` the last element of the array, ``-2`` is the next to last element in the array, and so on.
- Ruby arrays can hold objects such as ``String``, ``Integer``, ``Fixnum``, ``Hash``, ``Symbol``, even other Array objects. Ruby arrays are not as rigid as arrays in other languages. Ruby arrays grow automatically while adding elements to them.

```my_array = [1, 2, 3, "four", true]```
- In this example, ``my_array`` is an array with five elements, including an integer, a string, and a boolean.

- You can access individual elements of an array using their index, which starts at 0. For example, to access the first element of ``my_array``, you can do:
`` my_array[0]``
### Array Built-in Methods
- We need to have an instance of Array object to call an Array method. As we have seen, following is the way to create an instance of Array object −

``Array.[](...) [or] Array[...] [or] [...]``

- Ruby also provides many ``built-in`` methods for working with arrays. For example, you can add elements to the end of an array using the ``push`` method, or remove elements from the end using the ``pop`` method:
  ```sh
  my_array.push("five")
      puts my_array # outputs [1, 2, 3, "FOUR", true, "five"]

        my_array.pop
        puts my_array # outputs [1, 2, 3, "FOUR", true]
  ```
- We can also concatenate arrays using the ``+`` operator:

      array_one = ['String', 3, 4.5, true]
      array_two = [2, "Second array", false]
      new_array = array_one + array_two
## Accessing Elements
- Elements in an array can be retrieved using the ``Array#[]`` method. It can take a single integer argument (a numeric index), a pair of arguments ``(start and length)`` or a range. ``Negative`` indices start counting from the end, with ``-1`` being the ``last`` element.

- The special methods ``first`` and ``last`` will return the first and last elements of an array, respectively.

    ``array.first => return the first element``
    ``array.last => return the last element``

- To return the first n elements we can use ``take(n)``

    ``arr = [1, 2, 3, 4, 5, 6]``
    ``arr.take(3) => this will return [1, 2,3]``

- ``drop`` does the opposite of ``take``, by returning the elements after ``n elements`` have been dropped: 
    ``arr.drop(3) => return [4, 5, 6] ``
     
## Adding items to array
- Items can be added to ``array`` by using either ``push`` or ``<<``
    ``arr = [1, 2, 3, 4, 5]``
    ``arr.push(6) => [1, 2, 3, 4, 5, 6]``
    ``arr << 7 => [1, 2, 3, 4, 5, 6, 7]``

- ``unshift`` will add an element at the beginning of an array
```arr.unshift(0) => [0, 1, 2, 3, 4, 5, 6, 7]```

- We can add element to specified position using ``insert``
    ```arr.insert(index, value_to_be_inserted)``` 
- We can also add multiple elements at once using ``insert``
  ```arr.insert(index, 'String', number, boolean)```

## Removing an element from an Array
- ``pop`` => removes the last element and returns it
- ``shift`` => retrieve and remove the first element
- ``delete_at(index)`` => delete an element at given index
- ``delete(element)`` => delete particular element

- A useful method if you need to ``remove nil`` values from an array is ``compact``:
  ```arr = ['code', 2, 'Python', nil, 3.4, true, nill]```
    ```arr.compact => ['code', 2, 'Python', 3.4, true] ```
    ```arr => ['code', 2, 'Python', nil, 3.4, true, nill]```
    ```arr.compact! => ['code', 2, 'Python', 3.4, true] ```
    ```arr => ['code', 2, 'Python', 3.4, true]```
- The ``compact`` method returns only non-nill values while keeping nil values in disk
- Whereas the ``compact!`` method retrieves non-nil values and removes nil values from disk

- Another common need is to remove duplicate elements from an array.
- It has the non-destructive ``uniq``, and destructive method ``uniq!``

```sh
  arr = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
  arr.uniq #=> [2, 5, 6, 556, 8, 9, 0, 123]
```
## Iterating over Arrays

Like all classes that include the ``Enumerable`` module, ``Array`` has an each method, which defines what elements should be iterated over and how. In case of ``Array's each``, all elements in the ``Array`` instance are yielded to the supplied block in sequence.
    ``` arr = [1, 2, 3, 4, 5]```
    ```arr.each{|a| puts a -= 10, " "}```
    ```puts: => [-9, -8, -7, -6, -5]```
- Another sometimes useful iterator is ``reverse_each`` which will iterate over the elements in the array  in reverse order.
```words = %w[first, second, third, fourth]```
```str = ''```
```words.reverse_each{|w| str += "#{w} "}```
```# p str => "fourth third, second, first, "```

- The ``map`` method can be used to create a new array based on the original array, but with the values modified by the supplied block:
    ```sh
      arr.map { |a| 2*a }   #=> [2, 4, 6, 8, 10]
      arr                   #=> [1, 2, 3, 4, 5]
      arr.map! { |a| a**2 } #=> [1, 4, 9, 16, 25]
    arr                   #=> [1, 4, 9, 16, 25]
    ```

### Selecting Items from an Array
Elements can be selected from an array according to criteria defined in a block. The selection can happen in a ``destructive`` or a ``non-destructive`` manner. While the ``destructive`` operations will modify the array they were called on, the ``non-destructive`` methods usually return a new array with the selected elements, but leave the original array unchanged.

### Non destructive

```sh
    arr = [1, 2, 3, 4, 5, 6]
    arr.select { |a| a > 3 }     # => 5, 6]
    arr.reject { |a| a < 3 }     # => 4, 5, 6]
    arr.drop_while { |a| a < 4 } # => 5, 6]
    arr     # => 1, 2, 3, 4, 5, 6]
```

### Destructive methods
``select!`` and ``reject!`` are the corresponding destructive methods to ``select`` and ``reject``

- Similar to ``select`` vs. ``reject``, ``delete_if`` and ``keep_if`` have the exact opposite result when supplied with the same block:

```sh
    arr = [1, 2, 3, 4, 5, 6]
    arr.delete_if { |a| a < 4 } #=> [4, 5, 6]
    
    arr   # => [4, 5, 6]
    
    arr.keep_if { |a| a < 4 } #=> [1, 2, 3]
    arr #=> [1, 2, 3]
  
```

### Prerequisites

In order to run this project you need:

#### Select your platform
 - MacOS
 -  Ubuntu
 -  Windows

### Tools on Unix based systems

There are several tools that can be used to install Ruby on your local machine. The most popular are:
```sh
   rbenv
   RVM
   asdf
```
We will go with rbenv because it does not override any of the system shell scripts like RVM and it allows us to compile older Ruby versions that will fail with RVM.

## MacOS

Run the following commands in your terminal:
```sh
brew install rbenv ruby-build
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
source ~/.bash_profile
rbenv install 3.0.1
rbenv global 3.0.1
ruby -v
```
> Note: If you are using a shell other than bash, for example zsh, you should change the first line to use zshrc like this:
```sh
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.zshrc
```
> or any other config file of your shell.

## Ubuntu

> You can install Ruby on Ubuntu in several ways. The easiest way is to run the following command (source):
```sh
  sudo apt-get install ruby-full
```
If that doesn't work, you can try installing Ruby using [rbenv](https://github.com/rbenv/rbenv). This is a version manager tool for the Ruby programming language on Unix-like systems.

Run the following commands in your terminal:

```sh
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install 3.0.1
rbenv global 3.0.1
ruby -v
```
consider checking [ Install ruby on Ubuntu 20.04 with rbenv.](https://linuxtut.com/install-ruby-on-ubuntu-20.04-with-rbenv-e419f/)

## Windows
Installing Ruby on Windows is a little more difficult than installing it on another OS. We would recommend using [WSL](https://learn.microsoft.com/en-us/windows/wsl/about), but you can also try to install Ruby directly on your OS with [rubyinstaller](https://rubyinstaller.org/).

```sh
WSL only works on 64-bit installations of Windows.
```

If you are using a 64-bit version of Windows 10, we recommend following [this](https://gorails.com/setup/windows/10) article to install Ruby.

If you can not use WSL then you should follow these steps:

> Download the last version of [RubyInstaller](https://rubyinstaller.org/downloads/).
> Run RubyInstaller and follow the steps described [here](https://stackify.com/install-ruby-on-windows-everything-you-need-to-get-going/).

### Setup

Clone this repository to your desired folder:


```sh
  cd my-folder
  git clone git@github.com:belaymit/ruby-programming.git
```

### Install

Install this project with:


```sh
  cd ruby-programming
  gem install
```


### Usage

To run the project, execute the following command:

```sh
  ruby file_name.rb
```

### Run tests

```sh
  bundle exec rspec
```


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

<!-- AUTHORS -->

👤 **Belay Birhanu G**

- GitHub: [@githubhandle](https://github.com/belaymit)
- Twitter: [@twitterhandle](https://twitter.com/2belamit)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/belay-birhanu-144ba714b/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>


- [ ] **[new_feature_1]**
- [ ] **[new_feature_2]**
- [ ] **[new_feature_3]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/belaymit/ruby-programming/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>


If you like this project please give it a star

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>
I would like to thank ...
## References
 - [Tutorials point](https://www.tutorialspoint.com/ruby/ruby_arrays.htm)
 - [ruby-doc](https://ruby-doc.org/core-2.4.1/Array.html) 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ (OPTIONAL) <a name="faq"></a>


- **Describe different array operations in ruby**

  - Ruby provides a wide range of operations for working with arrays. Here are some of the most common array operations in Ruby:
    - **_Creating an Array_**: You can create an array in Ruby by enclosing a list of values in square brackets [], like this:   
    ```new_array = [1, 2, 3, 4, 5]```
    - **_Accessing Elements_**: You can access individual elements of an array using their index, which starts at 0. For example:
      ```sh
          new_array = [1, 2, 3, 4, 5]
          puts new_array[0] # Output: 1
          puts new_array[2] # Output: 3
      ```
    - **_Modifying Elements_**: You can modify elements of an array by assigning a new value to their index. For example:
        ```sh
            my_array = [1, 2, 3, 4, 5]
            my_array[2] = "three"
            puts my_array.inspect # Output: [1, 2, "three", 4, 5]
        ```
    - **_Adding and Removing Elements_**: You can add elements to the end of an array using the push method, or remove elements from the end using the pop method. For example:
      ```sh
      my_array = [1, 2, 3, 4, 5]
      my_array.push(6)
      puts my_array.inspect # Output: [1, 2, 3, 4, 5, 6]

      my_array.pop
      puts my_array.inspect # Output: [1, 2, 3, 4, 5]
      ```
    - **_Concatenating Arrays_**: You can concatenate two or more arrays using the ``+`` operator. For example:
    ```sh
        my_array = [1, 2, 3]
        my_other_array = [4, 5, 6]
        combined_array = my_array + my_other_array
        puts combined_array.inspect # Output: [1, 2, 3, 4, 5, 6]
    ```
    - **_Sorting_**: You can sort the elements of an array using the ``sort`` method. For example:
    ```sh
        my_array = [3, 1, 4, 1, 5, 9, 2, 6, 5]
        sorted_array = my_array.sort
        puts sorted_array.inspect # Output: [1, 1, 2, 3, 4, 5, 5, 6, 9]
    ```
    - **_Iterating_**: You can iterate over the elements of an array using various methods, such as ``each``, ``map``, ``select``, and more. For example:

    ```sh
        my_array = [1, 2, 3, 4, 5]
        my_array.each do |element|
        puts element * 2
      end
        # Output:
        # 2
        # 4
        # 6
        # 8
        # 10
    ```
- **[Question_2]**

  - [Answer_2]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./MIT.md) licensed.


<p align="right">(<a href="#readme-top">back to top</a>)</p>
