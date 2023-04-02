module M1; end

module M2
  include M1
end

module M3
  prepend M1
  include M2
end

# M1はM2でincludeされているが, M3でprependされているため、2回目のM1は無視される。
p M3.ancestors # => [M1, M3, M2]
