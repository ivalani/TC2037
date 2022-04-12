#  User manual - Programming DFA 

DFA (deterministic finite automata) It is a way of representing a state machine, since it represents in a more human-readable way the type of string accepted by the machine.

## _Index_

1. [Index](#index) 
2. [Activity descrption](#description)
3. [Program Requirements](#requirements)
4. [How to run the program](#ejecution)
5. [Automata layout diagram](#diagram)

## _description_ 
_
Make a function that receives as an argument a string containing arithmetic expressions and comments, with its list of tokens.

### Tokens: 
- Integers
- Floating
- Operators
- Identifiers
- Special symbols: ( )
- Comments // (with characters)

### Algorithm: 
- The **recognition** of tokens must be done through the transition of a Deterministic Finite Automaton.
- The design of the automaton must be a fundamental part of the documentation.

## _requirements_

The program is designed with the language of Racket following the indications of the activity described above.

It is necessary to install racket version 8.4 (or similar), for this you can follow the following installation link:
https://racket-lang.org/download/ 

### Pre-Requirements

Pollen will run on Mac OS, Linux, or Windows.

Pollen is not a self-contained GUI program like Adobe InDesign. It’s a software package that runs atop the Racket language environment (also a free download).

Your three main tools in Pollen will be a text editor (for those starting out, I recommend DrRacket: The Racket Programming Environment), a terminal window, and a web browser. The terminal commands you’ll be using are simple, but if you haven’t used your terminal window before, this is the moment to learn where it is. (On Mac OS, your terminal window is called Terminal; on Windows it’s called the Windows Command Processor.)

After the initial download, Pollen does not require a network connection. (text extracted from https://docs.racket-lang.org/pollen/Installation.html#%28part._.Prerequisites%29)

## _Ejecution_

Once you have Racket installed and have downloaded the corresponding files into the repository (dfa2.rkt):

1. Run the racket program (recommend DrRacket or visual studio)
2. Open the downloaded file within the program
3. Run the file.

Notes:
* Within the program there are test cases that are taken from the "arithmetic test" files
* To do a new test, add in the funtion "(define test-arithmetic-lexer
    (test-suite)) -- > (Ex: (check-equal? (arithmetic-lexer "2") '(("2" int)) "Single digit"))
* The program will return as output if the operation has finished successfully, otherwise it will indicate the error.


### _diagram_
![](Automata_diagram.png)  to add image
