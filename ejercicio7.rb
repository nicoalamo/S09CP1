class Product

  attr_accessor :name, :large, :medium, :small, :xsmall

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

def eliminate_xs (arg_product_list)

  new_filename = 'nuevo_catalogo.txt'
  file = File.open(new_filename, 'w')
  arg_product_list.each do |product|
    puts line = "#{product.name}, #{product.large}, #{product.medium}, #{product.small}"
    file.puts "#{line}"
  end
  file.close

  puts ''
  puts "El archivo '#{new_filename}' ha sido creado con éxito"
  puts ''

end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

puts "--------------- IMPRIMIENDO IDs DE PRODUCTOS ---------------"
puts products_list
puts ''

puts ''
puts "--------------- MOSTRANDO PRECIOS PROMEDIOS ---------------"
products_list.each do |product|
  puts "El producto #{product.name} tiene precio promedio de #{product.average}"
end

puts ''
puts "--------------- CREANDO NUEVO ARCHIVO DE PRECIOS ---------------"
eliminate_xs(products_list)
