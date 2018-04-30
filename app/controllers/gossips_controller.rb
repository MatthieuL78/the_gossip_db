class GossipsController < ApplicationController
  
  def index
    @gossip_array = Gossip.all.map do |gossip|
      author_content_id = [ gossip.anonymous_author, gossip.content, gossip.id, gossip.comments.count ]
    end 
  end

  def issue
  end

  def new
  end
  
  def create
    @my_new_gossip = Gossip.create(anonymous_author: params[:author], content: params[:content])
    if @my_new_gossip.save 
      redirect_to gossip_path(@my_new_gossip.id)
    else
      redirect_to issue_path
    end
  end

  def show
    @my_gossip = Gossip.find(params[:id])
  end

  def edit
    @my_gossip = Gossip.find(params[:id])
  end

  def update
    @my_gossip = Gossip.find(params[:id])
    @my_gossip.content = params['gossip']['content']
    @my_gossip.anonymous_author = params['gossip']['anonymous_author']
    @my_gossip.save
    if @my_gossip.save
      redirect_to gossip_path
    else
      redirect_to issue_path
    end
  end

  def destroy
    Gossip.find(params[:id]).delete
    redirect_to root_path
  end

end
