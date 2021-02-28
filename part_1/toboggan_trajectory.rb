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

number = MapReader.new(csv).trees()

puts(" Numero de arvores nesse percurso: #{number}")
