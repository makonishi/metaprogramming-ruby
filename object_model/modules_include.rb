# 継承チェーンにモジュールを追加
# includeの場合, includeしたclassの前に挿入
module M1
  def my_method
    'M1#my_method()'
  end
end

class C
  include M1
end

class D < C; end

p D.ancestors # => [D, C, M1, Object, Kernel, BasicObject]

# includeの場合, includeしたclassの前に挿入
module M2
  def my_method
    'M2#my_method()'
  end
end

class C2
  prepend M2
end

class D2 < C2; end

p D2.ancestors # => [D2, M2, C2, Object, Kernel, BasicObject]
