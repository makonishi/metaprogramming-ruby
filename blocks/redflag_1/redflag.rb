def event(description)
  puts "ALERT: #{ description }" if yield
end

load File.expand_path('../events.rb', __FILE__)
load File.expand_path('../../redflag_2/events.rb', __FILE__)