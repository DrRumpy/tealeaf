line_width = 50
table_of_contents = 'Table of Contents'
chpt1 = 'Chapter 1:  Getting Started'
chpt2 = 'Chapter 2:  Numbers'
chpt3 = 'Chapter 3:  Letters'
pg1 = 'page  1'
pg2 = 'page  2'
pg3 = 'page 13'
puts table_of_contents.center(line_width)
puts ''
puts ''
puts(chpt1.ljust(line_width/2) + pg1.rjust(line_width/2 - 2))
puts(chpt2.ljust(line_width/2) + pg2.rjust(line_width/2))
puts(chpt3.ljust(line_width/2) + pg3.rjust(line_width/2))