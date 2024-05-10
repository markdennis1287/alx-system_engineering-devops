#!/usr/bin/env ruby

# The first command-line argument will be the input string
input_string = ARGV[0]

# Match the pattern that starts with 'hb' followed by one or more 't', but not 'tn'
matches = input_string.scan(/hb(t+[^n])/)

# Join the matched results and print
puts matches.join
