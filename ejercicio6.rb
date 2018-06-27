class Product

  attr_accessor :name

  def initialize(name, *sizes)
    @name = name
    @large = sizes[0].to_i
    @medium = sizes[1].to_i
    @small = sizes[2].to_i
    @xsmall = sizes[3].to_i
  end

  def average
    average = (@large + @medium + @small + @xsmall) / 4
  end

end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

puts products_list

products_list.each do |product|
  puts "El producto #{product.name} tiene precio promedio de #{product.average}"
end
