# CS381 Project

## Application Details
The application will utilize parallelism and File I/O work in Elixir and how it varies in other functional languages like Standard ML. The application will count the number of words in the file given. If multiple files are given, the application will create a thread for each file. This will allow multiple files to be read at once. It makes good use of Elixir’s built-in functions for I/O and process communication. We then will replicate this application in Standard ML and Ruby.
When running the program, the list of files can be any length.

## How to run the Elixir code
To install Elixir follow the instructions for your machine type: https://elixir-lang.org/install.html
To run the program, go to the Elixer directory and type in the following commands in your command line shell:
```
$> iex
iex> c "main.exs"
iex> WordCounter.file_words ["textfile.txt"]
```
## How to run the Ruby code
To install Ruby follow the instructions for your machine type: https://www.ruby-lang.org/en/downloads/
To run the program, go to the Ruby directory and type in the following commands in your command line shell:
```
$> ruby main.rb
```
## How to run the Standard ML code
To install StandardML follow the instructions for your machine type: http://www.smlnj.org/dist/working/110.85/index.html
To run the program, go to the SML directory and type in the following commands in your command line shell:
```
$> sml
- use "main.sml";
- file_words ["textfile.txt"];
```
### By: Carlos Gonzalez & Michael Commins