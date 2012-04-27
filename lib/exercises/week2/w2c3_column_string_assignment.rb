=begin
  \netbeans\rubylearn\coreruby32\lib\samples\week2\w2c3_column_string_assignment.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/27/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: NetBeans 7.1.1 with Ruby for Netbeans Plugin Preview1

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  This program illustrates the use of the .split method combined with the .each_index method. Adding to the request
  the first #split assignment, this program variably adjusts the output to gracefully handle the varying width of
  line numbers of climbing magnitudes.
=end

# A line splitting method, parsing a string on each newline using .split and putting the result back out
# with line numbers.
def line_split (in_string)
  my_string_array = in_string.split("\n")

  my_string_array.each_index do |index|
    # determine digits in largest line num, digits in current line num, & necessary padding
    max_line_digits = my_string_array.count.to_s.length
    this_line_digits = (index+1).to_s.length
    padding = ' ' * (max_line_digits - this_line_digits)

    # output the line
    puts "Line #{padding}#{index + 1}: #{my_string_array[index]}"
  end
end

# Main ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
initial_string = "Ruby is a dynamic, reflective, general-purpose object-oriented programming language
that combines syntax inspired by Perl with Smalltalk-like features. It was also influenced by Eiffel and Lisp.
Ruby was first designed and developed in the mid-1990s by Yukihiro 'Matz' Matsumoto in Japan.
Ruby supports multiple programming paradigms, including functional, object oriented, imperative and reflective.
It also has a dynamic type system and automatic memory management; it is therefore similar in varying respects
to Smalltalk, Python, Perl, Lisp, Dylan, Pike, and CLU.

The standard 1.8.7 implementation is written in C, as a single-pass interpreted language.
The language specifications for Ruby was developed by the Open Standards Promotion Center of the
Information-Technology Promotion Agency (a Japanese government agency) for submission to the Japanese
Industrial Standards Committee and then to the International Organization for Standardization.
It was accepted as a Japanese Industrial Standard (JIS X 3017) in 2011[8] and an international standard
(ISO/IEC 30170) in 2012.[9] As of 2010, there are a number of complete or upcoming alternative implementations
of Ruby, including YARV, JRuby, Rubinius, IronRuby, MacRuby, and HotRuby. Each takes a different approach,
with IronRuby, JRuby, MacRuby and Rubinius providing just-in-time compilation and MacRuby also providing
ahead-of-time compilation. The official 1.9 branch uses YARV, as will 2.0 (development), and will eventually
supersede the slower Ruby MRI.

Contents
1 History
1.1 Choice of the name 'Ruby'
1.2 First publication
1.3 Ruby 1.0
1.4 Ruby on Rails
1.5 Ruby 1.8
1.6 Ruby 1.9
1.7 Ruby 2.0
2 Philosophy
3 Features
4 Semantics
5 Syntax
6 Deviations from behavior elsewhere
7 Interaction
8 Examples
8.1 Strings
8.2 Collections
8.3 Blocks and iterators
8.4 Classes
8.4.1 Open classes
8.5 Exceptions
8.6 Metaprogramming
8.7 More examples
9 Implementations
10 Repositories and libraries
11 See also
12 References
13 Further reading
14 External links
History

Ruby was conceived on February 24, 1993 by Yukihiro Matsumoto who wished to create a new language
that balanced functional programming with imperative programming.[10] Matsumoto has said, 'I wanted a
scripting language that was more powerful than Perl, and more object-oriented than Python. That's why
I decided to design my own language.'[11]
At a Google Tech Talk in 2008 Matsumoto further stated, 'I hope to see Ruby help every programmer in the
world to be productive, and to enjoy programming, and to be happy. That is the primary purpose of Ruby language.'[12]
Choice of the name 'Ruby'
The name 'Ruby' was decided on during an online chat session between Matsumoto and Keiju Ishitsuka on February 24, 1993,
before any code had been written for the language.[13] Initially two names were proposed: 'Coral' and 'Ruby',
with the latter being chosen by Matsumoto in a later email to Ishitsuka.[14] Matsumoto has later remarked that
a factor in choosing the name 'Ruby' was because it was the birthstone of one of his colleagues.[15][16]

First publication
The first public release of Ruby 0.95 was announced on Japanese domestic newsgroups on December 21, 1995.[17][18]
Subsequently three more versions of Ruby were released in two days.[13] The release coincided with the launch
of the Japanese-language ruby-list mailing list, which was the first mailing list for the new language.
Already present at this stage of development were many of the features familiar in later releases of Ruby, including
object-oriented design, classes with inheritance, mixins, iterators, closures, exception handling, and garbage collection.[19]

Ruby 1.0
Ruby reached version 1.0 on December 25, 1996.[13]
Following the release of Ruby 1.3 in 1999 the first English language mailing list ruby-talk began,[11] which signalled a
growing interest in the language outside of Japan. In September 2000, the first English language book Programming Ruby
was printed, which was later freely released to the public further widening the adoption of Ruby amongst English speakers.

Ruby on Rails
Around 2005, interest in the Ruby language surged in tandem with Ruby on Rails, a popular web application framework written
in Ruby. Rails is frequently credited with making Ruby 'famous'.[20]

Ruby 1.8
Ruby 1.8 was stable for a long time. Although deprecated, there is still code based on it. Ruby 1.8 is incompatible with Ruby 1.9.
Ruby 1.9
The latest stable version of the reference implementation is 1.9.3 and is dual-licensed under the Ruby License and a BSD License.
Ruby 1.9 introduces many significant changes over the 1.8 series.[21] Examples:
Block local variables (variables that are local to the block in which they are declared)
An additional lambda syntax (fun = ->(a,b) { puts a + b })
Per-string character encodings are supported
New socket API (IPv6 support)
require_relative import security
Ruby 2.0
Ruby 1.9 will be followed by Ruby 2.0. [22]
Ruby 2.0 is rumored to be '100% compatible' with Ruby 1.9.3.[23]
As of October 2011, the plan is to have code freeze October 2012 and release February 2013.[23]


Philosophy

Matsumoto has said that Ruby is designed for programmer productivity and fun, following the principles of good user interface
design.[24] He stresses that systems design needs to emphasize human, rather than computer, needs:[25]

'Often people, especially computer engineers, focus on the machines. They think, 'By doing this, the machine will run faster.
By doing this, the machine will run more effectively. By doing this, the machine will something something something.' They
are focusing on machines. But in fact we need to focus on humans, on how humans care about doing programming or
operating the application of the machines. We are the masters. They are the slaves.	”
Ruby is said to follow the principle of least astonishment (POLA), meaning that the language should behave in such a
way as to minimize confusion for experienced users. Matsumoto has said his primary design goal was to make a language
which he himself enjoyed using, by minimizing programmer work and possible confusion. He has said that he had not
applied the principle of least surprise to the design of Ruby,[25] but nevertheless the phrase has come to be closely
associated with the Ruby programming language. The phrase has itself been a source of surprise, as novice users may
take it to mean that Ruby's behaviors try to closely match behaviors familiar from other languages. In a May 2005,
discussion on the newsgroup comp.lang.ruby, Matsumoto attempted to distance Ruby from POLA, explaining that because
any design choice will be surprising to someone, he uses a personal standard in evaluating surprise. If that personal
standard remains consistent, there would be few surprises for those familiar with the standard.[26]

Matsumoto defined it this way in an interview:[25]
'Everyone has an individual background. Someone may come from Python, someone else may come from Perl, and
they may be surprised by different aspects of the language. Then they come up to me and say, 'I was surprised by
this feature of the language, so Ruby violates the principle of least surprise.' Wait. Wait. The principle of least surprise
is not for you only. The principle of least surprise means principle of least my surprise [sic]. And it means the principle
of least surprise after you learn Ruby very well. For example, I was a C++ programmer before I started designing Ruby.
I programmed in C++ exclusively for two or three years. And after two years of C++ programming, it still surprises me.'

Features
Thoroughly object-oriented with inheritance, mixins and metaclasses [27]
Dynamic typing and duck typing
Everything is an expression (even statements) and everything is executed imperatively (even declarations)
Succinct and flexible syntax [28] that minimizes syntactic noise and serves as a foundation for domain-specific languages [29]
Dynamic reflection and alteration of objects to facilitate metaprogramming[30]
Lexical closures, iterators and generators, with a unique block syntax [31]
Literal notation for arrays, hashes, regular expressions and symbols
Embedding code in strings (interpolation)
Default arguments
Four levels of variable scope (global, class, instance, and local) denoted by sigils or the lack thereof
Garbage collection
First-class continuations
Strict boolean coercion rules (everything is true except false and nil)
Exception handling
Operator overloading
Built-in support for rational numbers, complex numbers and arbitrary-precision arithmetic
Custom dispatch behavior (through method_missing and const_missing)
Native threads and cooperative fibers
Initial support for Unicode and multiple character encodings (still buggy as of version 1.9)[32]
Native plug-in API in C
Interactive Ruby Shell (a REPL)
Centralized package management through RubyGems
Implemented on all major platforms
Large standard library"

line_split(initial_string)
