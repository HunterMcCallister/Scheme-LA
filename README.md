# Project: Super-Duper (Scheme Recursion)  
**Author:** Hunter McCallister  
**Class:** CS354  
 

---

## Overview  
This project implements the Scheme function **`super-duper`**, which duplicates elements of a list a specified number of times. If the input is an atom, it is returned unchanged. If the input is a list, the program recursively walks through the list, duplicates each element `count` times, and returns a new list.  

Two helper functions support this:  
- **`replicate`**: creates a list with `n` copies of a given element.  
- **`cat`**: concatenates two lists using only `cons`.  

The function demonstrates recursive thinking in functional programming, without loops or mutation, and uses only basic Scheme primitives (`cons`, `car`, `cdr`, `pair?`, `null?`).  

---

## Compiling and Using  
To run the program:  
1. Make sure Guile Scheme is installed.  
2. Save the code into a file named `prog.scm`
3. Run in the terminal: 
`guile prog.scm`



---

## Results  
Running the provided tests displays the expected outputs:  
- `(super-duper 123 2)` → `123`  
- `(super-duper '(x y) 2)` → `(x x y y)`  
- `(super-duper '((a b) y) 3)` → `((a a a b b b) (a a a b b b) (a a a b b b) y y y)`  

The program correctly handles atoms, empty lists, simple lists and nested lists.  
