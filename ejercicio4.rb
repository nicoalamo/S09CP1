
class Dog

  def initialize(arg_propiedades)
    @name = arg_propiedades[:nombre]
    @type = arg_propiedades[:raza]
    @color = arg_propiedades[:color]
  end

  def ladrar
    "¡#{@name} está ladrando!"
  end

end


propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
perro1 = Dog.new(propiedades)

puts perro1.ladrar
