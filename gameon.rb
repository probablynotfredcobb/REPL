# Game On
@range = 1000000
@number = rand(@range)
@list_responses = {"" => "sorry, what was that \n (A) Out of how many? (B) I typed out the number like a dumbass (C) No, I'm not going to guess",
                  "1" => "did you seriously just guess a number? why didn't you choose option B? dick.", "1*" => "whatever. The number was #{@number} now fuck off",
                  "A" => "lots \n (A) Why? (B) Ok, I'm going to guess more (C) How many exactly?", "AA" => "fine its out of few now, happy? Guess a number.",
                  "AB" => "Good for you, its out of #{@range}. Goodluck", "AC" => "#{@range}, wanna change it? \n Y/N", "ACY" => "wimp, what do you want?",
                  "ACN" => "lol ok gl", "B" => "Well at least you're honest. The number is out of 100","C" => "Well you should probably play a diffrent game"}
@key_list =""

def guessing(aware)
  if (!aware)
      i =0
    while is_num && i <10
      if @response.to_i == @number
        p "holy fuck you did it good job"
        sleep(10)
        p "what are you still doing here? go home"
      else
        p "ha! no. try again?"
        i+=1
        @response = gets.chomp
      end
    end
    sassing
  else
    loop do
      @response = gets.chomp
      if @response.to_i == @number
        p "you did it good job"
        sleep(10)
        p "what are you still doing here? go home"
      else
        if @response.to_i > @number
          p "na guess lower"
        else
          p "na guess higher"
        end
      end
    end
  end
end

def sassing
  aware = false
  while (!aware)
    if (@key_list == "AB")
      @range = 1000
      @number = rand(@range)
      puts @list_responses[@key_list]
      @response = gets.chomp
      aware = true
      guessing(aware)
    elsif (@key_list == "AC")
      puts @list_responses[@key_list]
      @response = gets.chomp
      @key_list += @response
      if (@key_list == "ACY")
        puts @list_responses[@key_list]
        @response = gets.chomp
        # puts @response
        @range = @response.to_i
        @number = rand(@range)
        aware = true
        guessing(aware)
      else
        puts @list_responses[@key_list]
        aware = true
        guessing(aware)
      end
    elsif (@key_list == "B")
      @range = 100
      @number = rand(@range)
      puts @list_responses[@key_list]
      aware = true
      guessing(aware)
    elsif (@key_list == "AA")
      @range = 50
      @number = rand(@range)
      puts @list_responses[@key_list]
      aware = true
      guessing(aware)
    else
      # @range = 1000
      # @number = rand(@range)
      puts @list_responses[@key_list]
      @response = gets.chomp
      @key_list += @response
      sassing
    end


 puts @list_responses[@key_list]
 @response = gets.chomp
 @key_list += response.strip.upcase

 end
 guessing(aware)

end

def is_num
  @response.to_i.to_s == @response
end

puts "Guess a number"
  @response = gets.chomp
guessing(false)










# # puts "Guess a number"
# #   response = gets.chomp
# #   if response.to_i.to_s == response
# #     if response.to_i == number
# #       p "holy fuck you did it good job"
# #       sleep(10)
# #       p "what are you still doing here? go home"
# #     else
# #       p "ha! no. try again?"
# #     end
# #   else
# #     p "sorry, what was that?"
#     # p "(A) Out of how many? (B) I typed out the number like a dumbass (C) No, I'm not going to guess"
#     # response = gets.chomp
#     #   if response.to_i.to_s == response
#     #     p "did you seriously just guess a number?"
#     #     response = gets.chomp
#     #     p "whatever. The number was #{number} now fuck off"
#     #   elsif response.downcase.include?("a")
#         # p "lots"
#         # p "(A) Why? (B) Ok, I'm going to guess more (C) How many exactly?"
#         # response = gets.chomp
#         # if response.to_i.to_s == response
#         #   p "did you seriously just guess a number? why didn't you choose option B? dick."
#         #   guessing()
#         # elsif response.downcase.include?("a")
#         #   p "lots"
#         #   p "(A) Why? (B) Ok, I'm going to guess more (C) How many exactly?"
#         #   response = gets.chomp
#         #
#         # elsif response.downcase.include?("b")
#         #
#         # elsif response.downcase.include?("c")
#         # end
#       elsif response.downcase.include?("b")
#         p "Well at least you're honest. The number is out of 100"
#         number = rand(100)
#         p "(A) Why? (B) Ok, I'm going to guess more (C) How many exactly?"
#       elsif response.downcase.include?("c")
#
#       end
#   end
#
# def guessing(number)
#   response = gets.chomp
#     if response.to_i == number
#       p "holy fuck you did it good job"
#       sleep(10)
#       p "what are you still doing here? go home"
#     else
#       p "ha! no. try again?"
#     end
# end



# response = "string"
# p response.to_i.to_s
