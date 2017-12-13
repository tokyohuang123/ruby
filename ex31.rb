def prompt
  print ">"
end

puts "You. enter a dark room with two doors. Do you go through door #1 or door #2"
prompt; door = gets.chomp

if door == "1"
  puts "There's a giant bear here eating a cheese cake. WHat do you do ?"
  puts "1.Take the cake."
  puts "2.Scream at the bear."
  prompt;bear = gets .chomp

  if bear == "1"
    puts "The bear eats your face off.Good job!"
  elsif bear == "2"
  	puts "The bear eats your legs off.Good job!"
  else 
  	puts "Well, doing #{bear} is probaby better, Bear runs away."
  end
  
elsif door == "2"
  puts "You starte into the endless abyss at Chhuhlu's retina."
  puts "1.Blueberrieds."
  puts "2.Yellow jacket clothesping."
  puts "3.Understanding revolvers yelling melodies."

  prompt;insanity = gets.chomp

  if insanity =="1" or insanity =="2"
    puts "Your body survives powered by a mind of jello . Good Job!"
  elsif insanity =="3"
  	puts "the insanity is Understanding your minds ,Now you will do what? "
  	puts "1.run and hit ,kill anyone you saw!"
  	puts "2.wait. until it Understand you "
  	prompt;do_what = gets.chomp
  	if do_what =="1"
  	  puts "When you ready to run ,someone cuts your head,You are Dead!"
  	elsif do_what =="2"
  	  puts "A cat beats your legs,but you are found a new door"
  	  puts "The door is auto opened you :?"
  	  puts "1.Go.maybe  you can back home!"
  	  puts "2.Not care .mayebe this is a dead way,get away here"
  	  puts "3.Kill cat.Because it beated you..."
  	  prompt;new_door =gets.chomp
  	  if new_door =="1"
  	  	puts"You are awake.ALL is a dream, Good luck"
  	  elsif new_door =="2"
  	  	puts"''HaHaHa,wellcome to hall,now,you will be .....',you hear a laugh sounds ,So,you go to search the sounds"
  	  elsif new_door =="3"
  	  	puts "THe cat become a double heads tiger,it eats yor .Good Job"
  	  else
  	  	puts "You are hited by a roll,your are dangerous very much."
  	  end
  	  	
  	else 
  	  puts "the  #{insanity}  insanity rots your eyes into a pool of muck .Good Job!"
    end

  else
    puts "You stumble around and fall on a kinife and die. Good job!!" 
		  end
 else 
 	puts"'1 or 2,live or dead!'your must chose one ,a tiger run to you!!!!"
end