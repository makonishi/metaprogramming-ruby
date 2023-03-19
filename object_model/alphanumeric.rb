# 全ての句読点や特殊文字を削除し、アルファベットとスペースだけを残す
def to_alphanumeric(s)
  s.gsub(/[^\w\s]/, '')
end

p to_alphanumeric('#3, the *Magic, Number*?') # => "3 the Magic Number"

# オープンクラス; 既存のクラス(ここではString)を再オープンしてメソッドを追加
class String
  def to_alphanumeric
    gsub(/[^\w\s]/, '')
  end
end

p '#3, the *Magic, Number*?'.to_alphanumeric # => "3 the Magic Number"

