require 'bundler'
Bundler.require

require_relative './model.rb'
require_relative './controller.rb'

########################################
########################################
####### CLASSE
class View

 #attr_accessor :var, :var2

 ########################################
 def initialize()
 end

 ########################################
 ####### CREATE GOSSIP
 def create_gossip
  puts ""
  puts "Saisir votre nom d'auteur :"
  print "> "
  input1 = gets.chomp.to_s
  puts ""
  puts "Saisir votre Gossip"
  print "> "
  input2 = gets.chomp.to_s
  return params = { author: input1, content: input2 }
 end


 ########################################
 ####### QUEL GOSSIPS DETRUIRE
 def wich_one_destroy?
  puts ""
  puts "Saisir le nom de l'auteur auquel enlever les gossips"
  print "> "
  input1 = gets.chomp.to_s
  return input1
 end


 ########################################
 ####### INDEX GOSSIPS
 def index_gossips(array)
  puts ""
  puts "Voici les comérages du moment:"
  puts ""
  array.each do |i|
    puts "Auteur: #{i.author}"
    puts "Potin: #{i.content}"
    puts ""
  end
 end

########################################
end


