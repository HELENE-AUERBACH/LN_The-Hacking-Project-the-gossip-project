class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
    puts "$" * 60
    puts "Voici le nombre de potins dans la base : #{@gossips.length}"
    puts "$" * 60
  end

  def show
    @gossip_hash = { "gossip" => nil, "index" => -1 }
    gossip_id = params[:gossip_index].to_i
    puts "$" * 60
    puts "gossip_id : #{gossip_id}"
    if (gossip_id != -1)
      gossip = Gossip.find(gossip_id)
      puts "gossip : #{gossip}"
      @gossip_hash = { "gossip" => gossip, "index" => gossip_id }
      puts "gossip_hash : #{@gossip_hash}"
    end
    puts "$" * 60
  end
end
