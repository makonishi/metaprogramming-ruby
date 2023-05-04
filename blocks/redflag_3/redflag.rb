@setups = []
@events = []
def setup(&block)
  @setups << block
end

def event(description, &block)
  @events << { :description => description, :condition => block }
end
load File.expand_path('../events.rb', __FILE__)

@events.each do |event|
  @setups.each do |setup|
    setup.call
  end
  puts "ALERT: #{ event[:description] }" if event[:condition].call
end
