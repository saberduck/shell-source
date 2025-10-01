#!/bin/bash

# snake_case
function snake_case_function() {

}

# lowercase
function lowercasefunction() {

}

# with a digit
function my_method2() {

}

# UPPERCASE
function UPPERCASEFUNCTION() { # Noncompliant {{Function 'UPPERCASEFUNCTION' should be named in snake case.}}
#        ^^^^^^^^^^^^^^^^^
}

# PascalCase
function PascalCaseFunction() { # Noncompliant

}

# camelCase
function camelCaseFunction() { # Noncompliant

}

# capitalized
function Capitalized() { # Noncompliant

}

# only last letter
function lasT() { # Noncompliant

}
