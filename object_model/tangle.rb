module Printable
  def print
    'Printableモジュールのprintメソッド'
  end

  def prepare_cover
    'Printableモジュールのprepare_coverメソッド'
  end
end

module Document
  def print_to_screen
    p prepare_cover
    p format_for_screen
    p print
  end

  def format_for_screen
    'Documentモジュールのformat_for_screenメソッド'
  end

  def print
    'Documentモジュールのprintメソッド'
  end
end

class Book
  include Document
  include Printable
end

book = Book.new
book.print_to_screen
p Book.ancestors # => [Book, Printable, Document, Object, Kernel, BasicObject]

# printメソッドを呼び出す際のselfがbookインスタンス
# 継承チェーンを見てわかる通り、Printableモジュールの方が近い
# そのため、printメソッドは、Printable#printが呼び出される
# Document#printを呼び出したい場合、DocumentをPrintableよりもしたでincludeするか、prependする
