toc = 'Table of Contents'

chapters = [['Getting Started', 1],
            ['Numbers', 9],
            ['Letters', 13]]


puts toc.center(50)
puts

chap_count = 1
chapters.each do |chpt|
	title = chpt[0]
	num   = chpt[1]

	start_line = 'Chapter ' + chap_count.to_s + ': ' + title
  end_line   = 'page ' + num.to_s

  puts start_line.ljust(30) + end_line.rjust(20)
  chap_count = chap_count + 1
end