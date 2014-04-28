def do_self_importantly some_proc
	puts "Everbody just HOLD ON!  I'm doing something..."
  some_proc.call
  puts "OK everyone, I'm done.  As you were."
end

say_hello = Proc.new {puts 'hello'}

say_goodbye = Proc.new {puts 'goodbye'}

do_self_importantly say_hello
do_self_importantly say_goodbye