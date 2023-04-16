class Roulette
  def method_missing(name, *args)
    person = name.to_s.capitalize
    super unless %w[Bob Frank Bill].include? person # personの値を限定し、それ以外の値を受け取った場合、BasicObject#method_missingを呼び出す
    number = 0 # numberを定義し、scopeから外れないようにする
    3.times do
      number = rand(10) + 1
      puts "#{ number }..."
    end
    "#{ person } got a #{ number }"
  end
end

number_of = Roulette.new
puts number_of.bob
puts number_of.frank

# 2...
# 6...
# 1...
# Bob got a 1
# 7...
# 4...
# 7...
# Frank got a 7
