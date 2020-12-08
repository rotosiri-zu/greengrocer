# Greengrocerクラスを定義
class Greengrocer
  # 八百屋の開店と同時に商品インスタンスを生成
  # 仮引数はproduct_params
  # (1)クラスの外から参照可能にする
  attr_reader :products
  def initialize(product_params)
    @products = []
    register_product(product_params)
  end

  # 商品を登録するメソッドを定義
  # 仮引数とメソッド内の変数をadding_productsからproduct_paramsに変更
  # 商品を登録
  def register_product(product_params)
    product_params.each do |param|
      @products << Product.new(param)
    end  
  end

   # (2)product.name、product.priceと書くことで参照
  # （eachメソッドを使用しているため単数形になっている）
  # (4).with_index(1)を外し、idを利用した形にする
  # 商品を表示
  def disp_products
    puts "いらっしゃいませ！商品を選んで下さい。"
    @products.each do |product|
      puts "#{product.id}.#{product.name}" "（¥#{product.price}円）"
    end
  end

  # (2)(3)「個数を質問する」メソッドを定義、引数とコードを調整
  def ask_quantity(chosen_product)
    puts "#{chosen_product.name}ですね。何個買いますか？"
  end  

  # (2)「合計金額を計算する」メソッドを追加
   # 合計金額を計算（引数をuserとし、メソッドの中も調整）
  def calculate_charges(user)
    total_price = user.chosen_product.price * user.quantity_of_product
    if user.quantity_of_product >= 5
      puts "5個以上なので10%割引となります!"
      total_price *= 0.9
    end
    puts "合計金額は#{total_price.floor}円です。"
    puts "お買い上げありがとうございました!"
  end
end