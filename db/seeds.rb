User.destroy_all
anna = User.create(name: "Anna")
joel = User.create(name: "Joel")
tasha = User.create(name: "Tasha")
drake = User.create(name: "Drake")
nicki = User.create(name: "Nicki")

Event.destroy_all
wedding = Event.create(title: "Wedding")
party = Event.create(title: "Party")
gala = Event.create(title: "Met Gala")
celebration = Event.create(title: "Celebration")
show = Event.create(title: "Fashion Show")

Invitation.destroy_all
card = Invitation.create(user: anna, event: wedding)
mail = Invitation.create(user: joel, event: party)
email = Invitation.create(user: tasha, event: gala)
call = Invitation.create(user: drake, event: celebration)
text = Invitation.create(user: nicki, event: show)








  # def question
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
