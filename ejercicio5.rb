class Morseable
  def initialize(number)
    @number = number
  end

  def generate_hash(number)
    # Esto es una aberración y debe ser refactorizado!
    hash = {0 =>'-----', 1=>'.----', 2=>'..---', 3=>'...--', 4=>'....-',
      5=>'.....', 6=>'-....', 7=>'--...', 8=>'---..', 9=>'----.'}
    hash[number]
  end

  def to_morse
    generate_hash(@number)
  end
end

print m = Morseable.new(3).to_morse
