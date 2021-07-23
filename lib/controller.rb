require 'bundler'
Bundler.require

require_relative './view.rb'
require_relative './model.rb'

########################################
########################################
####### CLASSE
class Controller

 attr_accessor :view

 ########################################
 def initialize()
   @view = View.new
 end

 ########################################
 ####### CREER GOSSIP
 def create_gossip
  params = @view.create_gossip
  my_gossip = Gossip.new(params[:author], params[:content]) #=> Crée une instance de potin, sauvergardée juste dans cette variable
  my_gossip.save #=> Sauvegarde l'instance de potin dans le CSV correspondant, en créant une nouvelle ligne dans mon fichier CSV
 end

  ########################################
 ####### DETRUIRE GOSSIP
 def destroy_gossip(input)
    #input = @view.wich_one_destroy?
    Gossip.destroy(input)
 end

 ########################################
 ####### AFFICHER GOSSIPS
 def index_gossips
  gossips = Gossip.all
  @view.index_gossips(gossips)
 end

########################################
end


