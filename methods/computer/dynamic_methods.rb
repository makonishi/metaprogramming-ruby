class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def self.define_component(name)
    define_method(name) do
      info = @data_source.send "get_#{name}_info", @id
      price = @data_source.send "get_#{name}_price", @id
      result = "Mouse: #{info} ($#{price})"
      return "* #{result}" if price >= 100
      result
    end
  end

  # ここでのレシーバーは暗黙的にComputerクラス(selfが省略)

  define_component :mouse
  define_component :cpu
  define_component :keyboard
end

p Computer.instance_methods(false) #=> [:mouse, :keyboard, :cpu]
