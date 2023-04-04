class Lawyer
  def method_missing(method, *args)
    puts "called: #{ method }(#{ args.join(', ') })"
    puts "(also pass block)" if block_given?
  end
end

bob = Lawyer.new
bob.talk_simple('a', 'b') do
  # block
end

# => 実行結果
# => called: talk_simple(a, b)
# => (also pass block)
