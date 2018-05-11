require 'pry'
class CommandLineInterface

  def run
    greet
    input = gets_user_input
    # done
  end

def greet
  puts "Welcome to Invitor, the command line solution go-to for your event-related needs!"
end

def user_input
  puts "What is the name of your event?"
  title = gets.chomp.capitalize
  puts "What city is the event taking place in?"
  location = gets.chomp.capitalize
  puts "What date is your event? Please use this format: MM/DD/YYYY"
  date = gets.chomp
  puts "What is the time of your event? Please use HH:MM PM/AM"
  time = gets.chomp
  datetime = date + " " + time
  datetime2 = DateTime.strptime(datetime, '%m/%d/%Y %I:%M %p')
  arr = [title, location, datetime2]

end

  def create_event(title, location, datetime)
    event = Event.create(title: title, location: location, datetime: datetime)
    puts "You made a new event called #{event.title}, and it will be held on #{event.datetime} in #{event.location}."
    puts "Now it's time to invite your guests to #{event.title}."
  end

  def prompt
    # ask the user if they want to add more guests
    loop do
      puts "Do you have any guests that you want to invite to your event? (Y/N)"
      input = gets.chomp
      break
      if input != "Y"
        # || input != "N"
      #   input
      #   break
      # else
        puts "Please enter 'Y' or 'N'."
        break if input == "N"
      end
    end
  end

  def guest_list
    # loop responses
    # if/else statement
    arr = []
    while prompt != "N"
      puts "Please enter the first and last name of your guest."
      input = gets.chomp
      arr << input
    end
  end

def gets_user_input
  puts "Are you planning or attending an event? Enter 1 for planner, enter 2 for guest."
  input = gets.chomp.downcase

    loop do
    if input == "1"
        var = user_input
        # binding.pry
        create_event(var[0],var[1],var[2])
        guest_list
        break

    elsif input == "2"
      puts "What is your name?"
       puts "Here is a list of events you've been invited to"
    else
      puts "Please enter 1 or 2."
    end
    input = gets.chomp
  end
end

  # def question
  #   puts "Please enter the first name and last name of each guest you want to invite to #{.title}."
  #   arr = []
  #   name_input = gets.chomp.capitalize
  #   arr << name_input
  #   puts "Do you have any more guests you want to invite to your event? (Y/N)"
  #     answer = gets.chomp
  #     while answer != "done"
  #       if answer == "Y"
  #         puts "Please enter their first name and last name."
  #       elsif
  #         puts "Please enter Y or N."
  #       else answer == "N"
  #   puts "Please enter done."
  #       end
  #     end
  #   end
  #
  # def done
  #   puts "You have invited #{event.arr}"
  # end


# Create an event(planner)
# - name of event(title)
# - where will it be held?(location, formatted with city & state)
# - day/time? (datetime)
# - how many people will be attending?
# - return info/confirm to planner

# Check an event near you(guest)
# Choose an event
# RSVP to an event
# Return event info to guest

end
