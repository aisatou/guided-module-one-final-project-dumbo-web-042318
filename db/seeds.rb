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
