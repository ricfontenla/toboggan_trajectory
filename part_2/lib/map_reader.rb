class MapReader
  
  #atributos
  attr_reader :csv, :trees

  #construtor
  def initialize(csv, right, down)
    @csv = csv
    @trees = trajectory(right, down)
  end

  #metodos privados
  private

  def trajectory(right, down)
    i = 0
    lines = 0
    trees = 0
    csv.each do |hash|
      if (lines % down == 0)
        line = hash[0]
        if line[i] == '#'
          trees += 1
        end
        i += right
        if i >= (line.length)
          i = i - (line.length)
        end
      end
      lines += 1
    end
    return trees
  end

end
