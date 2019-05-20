def badge_maker(name)
  "Hello, my name is #{name}."
end

# def batch_badge_creator(attendees)
#   badges = []
#   attendees.each do |name|
#     badges << badge_maker(name)
#   end
#   badges
# end

def batch_badge_creator(attendees)
  attendees.map do |attendee| 
    badge_maker(attendee)
  end
end

def assign_rooms(attendees)
  attendees.map.with_index(1) do |name, index|
    "Hello, #{name}! You'll be assigned to room #{index}!"
  end
end

# def assign_rooms(attendees)
#   room_assignments = []
#   attendees.each_with_index do |name, index|
#     room_assignments << "Hello, #{name}! You'll be assigned to room #{index + 1}!" 
#   end
# room_assignments
# end

def printer(attendees)
  batch_badge_creator(attendees).each {|badge| puts badge}
end

printer(["Michael"])


