require 'csv'
require_relative './lib/map_reader.rb'

puts('Toboggan Trajectory')
# These aren't the only trees, though; due to something you read about once involving arboreal genetics and biome stability,
# the same pattern repeats to the right many times:
# You start on the open square (.) in the top-left corner and need to reach the bottom (below the bottom-most row on your map).
# The toboggan can only follow a few specific slopes (you opted for a cheaper model that prefers rational numbers);
# start by counting all the trees you would encounter for the slope right 3, down 1

file = File.read('./../data/map.txt')
csv = CSV.parse(file)

slop1 = MapReader.new(csv, 1, 1).trees()
slop2 = MapReader.new(csv, 3, 1).trees()
slop3 = MapReader.new(csv, 5, 1).trees()
slop4 = MapReader.new(csv, 7, 1).trees()
slop5 = MapReader.new(csv, 1, 2).trees()

puts("Total de arvores no toboga 1: #{slop1}")
puts("Total de arvores no toboga 2: #{slop2}")
puts("Total de arvores no toboga 3: #{slop3}")
puts("Total de arvores no toboga 4: #{slop4}")
puts("Total de arvores no toboga 5: #{slop5}")

number = (slop1 * slop2 * slop3 * slop4 * slop5)

puts("Total da multiplicação: #{number}")
