def replace(array, original, replacement)
  array.map { |e| e == original ? replacement : e }
end

p replace(['one', 'two', 'one', 'three'], 'one', 'two') # => ["two", "two", "two", "three"]

class Array
  # 既存のreplaceメソッドを上書き
  def replace(original, replacement)
    map { |e| e == original ? replacement : e }
  end
end

p ['one', 'two', 'one', 'three'].replace('one', 'two') # => ["two", "two", "two", "three"]

