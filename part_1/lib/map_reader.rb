class MapReader
  
  #atributos
  attr_reader :csv, :trees

  #construtor
  def initialize(csv)
    @csv = csv
    @trees = trajectory()
  end

  #metodos privados
  private

  def trajectory()
    i = 0
    trees = 0
    csv.each do |hash|
      line = hash[0]
      if line[i] == '#'
        trees += 1
      end
      i += 3
      if i >= (line.length)
        i = i - (line.length)
      end
    end
    return trees
  end

end