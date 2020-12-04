# 八百屋プログラム 条件分岐 part1
# 商品データ
# products = [
#   {name: "トマト", price: 100},
#   {name: "きゅうり", price: 200},
#   {name: "玉ねぎ", price: 300},
#   {name: "なす", price: 400}
# ]

# # 商品を表示
# puts "いらっしゃいませ！商品を選んで下さい。"
# products.each.with_index(1) do |product,i|
#   puts "#{i}.#{product[:name]}（#{product[:price]}円）"
# end

# # 商品を選択（★ここを変更★）
# while true
#   print "商品の番号を選択 > "
#   select_product_num = gets.to_i
#   break if (1..4).include?(select_product_num)
#   puts "1〜4の番号を入力して下さい。"
# end
# chosen_product = products[select_product_num - 1]

# # 個数を決定（★ここを変更★）
# puts "#{chosen_product[:name]}ですね。何個買いますか？"
# while true
#   print "個数を入力 > "
#   quantity_of_product = gets.to_i
#   break if quantity_of_product >= 1
#   puts "1個以上選んでください。"
# end

# # 合計金額を計算
# total_price = chosen_product[:price] * quantity_of_product
# if quantity_of_product >= 5
#   puts "5個以上なので10％割引となります！"
#   total_price *= 0.9
# end
# puts "合計金額は#{total_price.floor}円です。"
# puts "お買い上げありがとうございました！"

# # 変更に強いプログラム
# # 商品データ
# products = [
#   {name: "トマト", price: 100},
#   {name: "きゅうり", price: 200},
#   {name: "玉ねぎ", price: 300},
#   {name: "なす", price: 400}
# ]

# # 定数を設定。ここでの変更がコード全体に反映される
# FIRST_PRODUCT_NUM = 31 # 表示する最初の商品の番号（変更可）
# LAST_PRODUCT_NUM = (FIRST_PRODUCT_NUM + products.size) - 1 # 表示する最後の商品の番号（変更不可）
# DISCOUNT_STANDARD_VALUE = 5 # 割引きを適用する個数の基準値（変更可）
# DISCOUNT_RATE = 0.1 # 割引率（変更可）
# AFTER_DISCONUT_RATE = 1 - DISCOUNT_RATE # 割引後の本体価格の割合（変更不可）

# # 商品を表示
# puts "いらっしゃいませ！商品を選んでください。"
# products.each.with_index(FIRST_PRODUCT_NUM) do |product, i|
#   puts "#{i}.#{product[:name]}(#{product[:price]}円)"
# end

# # 商品を選択
# while true
#   print "商品の番号を選択 > "
#   select_product_num = gets.to_i
#   break if (FIRST_PRODUCT_NUM..LAST_PRODUCT_NUM).include?(select_product_num)
#   puts "#{FIRST_PRODUCT_NUM}~#{LAST_PRODUCT_NUM}の入力してください"
# end

# # (インデックスを調整して「選んだ商品」を定義)
# chosen_product_index = select_product_num - FIRST_PRODUCT_NUM
# chosen_product = products[chosen_product_index]

# # 個数を決定
# puts "#{chosen_product[:name]}ですね、何個買いますか？"
# while true
#   print "個数を入力 > "
#   quantity_of_product = gets.to_i
#   break if quantity_of_product >= 1
#   puts "1個以上選んでください。"
# end

# total_price = chosen_product[:price] * quantity_of_product
# discounted_total_price = (total_price * 0.9).floor

# if quantity_of_product >= DISCOUNT_STANDARD_VALUE
#   puts "#{DISCOUNT_STANDARD_VALUE}個異常なので#{(DISCOUNT_RATE*100).floor}%割引となります!"
#   total_price *= 0.9
# end
# puts "合計金額は#{total_price.floor}円です"
# puts "お買い上げありがとうございました!"

#  メソッド part2

require "./methods.rb"

# # 商品データ
# products = [
#   {name: "トマト", price: 100},
#   {name: "きゅうり", price: 200},
#   {name: "玉ねぎ", price: 300},
#   {name: "なす", price: 400}
# ]

# disp_products(products) # 商品を表示
# chosen_product = chosen_product(products) # 商品を選択
# quantity_of_product = decide_quantity(chosen_product) # 商品の個数を決定
# calculate_charges(chosen_product, quantity_of_product) # 合計金額を計算

#  変更に強いプログラム

# def disp_products(products)
#   puts "いらっしゃいませ!商品を選んでください"
#   products.each.with_index(FIRST_PRODUCT_NUM) do |product, i|
#     puts "#{i}.#{product[:name]}(#{product[:price]}円)"
#   end  
# end

# # 商品を選択
# def chosen_product(products)
#   while true
#     print "商品の番号を選択 > "
#     select_product_num = gets.to_i
#     break if (FIRST_PRODUCT_NUM..LAST_PRODUCT_NUM).include?(select_product_num)
#     puts "#{FIRST_PRODUCT_NUM}~#{LAST_PRODUCT_NUM}の番号から選んでください。"
#   end
#   # (インデックスを調整して「選んだ商品」を定義)
#   chosen_product_index = select_product_num - FIRST_PRODUCT_NUM
#   products[chosen_product_index]
# end

# # 個数を決定
# def decide_quantity(chosen_product)
#   puts "#{chosen_product[:name]}ですね。何個買いますか？"
#   while true
#     print "個数を入力 > "
#     quantity_of_product = gets.to_i
#     break if quantity_of_product >= 1
#     puts "1個以上選んでください。"
#   end
#   quantity_of_product
# end

# # 合計金額を計算
# def calculate_charges(chosen_product, quantity_of_product)
#   total_price = chosen_product[:price] * quantity_of_product
#   if quantity_of_product >= DISCOUNT_STANDARD_VALUE
#     puts "#{DISCOUNT_STANDARD_VALUE}個以上なので#{(DISCOUNT_RATE*100).floor}%割引となります!"
#     total_price *= AFTER_DISCONUT_RATE
#   end
#   puts "合計金額は#{total_price.floor}円です。"
#   puts "お買い上げありがとうございました!"
# end

# # メソッドの呼び出し部分-------------------------

# # 商品データ
# products = [
#   {name: "トマト", price: 100},
#   {name: "きゅうり", price: 200},
#   {name: "玉ねぎ", price: 300},
#   {name: "なす", price: 400}
# ]

# # 定数を設定。ここでの変更がコード全体に反映される
# FIRST_PRODUCT_NUM = 31  # 表示する最初の商品の番号（変更可）
# LAST_PRODUCT_NUM = (FIRST_PRODUCT_NUM + products.size) - 1  # 表示する最後の商品の番号（変更不可）
# DISCOUNT_STANDARD_VALUE = 5  # 割引きを適用する個数の基準値（変更可）
# DISCOUNT_RATE = 0.1 # 割引率（変更可）
# AFTER_DISCOUNT_RATE = 1 - DISCOUNT_RATE  # 割引後の本体価格の割合（変更不可）

# disp_products(products) # 商品を表示
# chosen_product = choose_product(products) # 商品を選択
# quantity_of_product = decide_quantity(chosen_product) # 個数を決定
# calculate_charges(chosen_product, quantity_of_product) # 合計金額を計算

# 八百屋プログラム（クラス）part3

product_params =  [
  {name: "トマト", price: 100},
  {name: "きゅうり", price: 200},
  {name: "玉ねぎ", price: 300},
  {name: "なす", price: 400}
]

# productsにproduct_paramsの各要素から生成した Productクラスのインスタンスを入れていく
# products = []
# product_params.each do |param|
#   products << product.new(param)
# end

# mapメソッドを使用して商品インスタンスを作成
products = product_params.map {|param| Product.new(param)}