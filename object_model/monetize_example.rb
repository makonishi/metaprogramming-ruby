# 数値からMoneyオブジェクトを生成

require 'monetize'

# :en is not a valid locale (I18n::InvalidLocale)が出たので追加
I18n.load_path << Dir[File.expand_path("config/locales") + "/*.yml"]
I18n.default_locale = :en # (note that `en` is already the default!)

bargain_price = Monetize.from_numeric(99, "USD")
p bargain_price.format #=> "$99.00"

standard_price = 100.to_money("USD")
p standard_price.format # => "$100.00"

