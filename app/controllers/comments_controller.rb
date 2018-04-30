class CommentsController < ApplicationController
  
  def new
  end

  def create
    p params[:id]
    @my_new_comment = Comment.create(anonymous_commentator: params[:author], body: params[:comment])
    Gossip.find(params[:id].to_i).comments << @my_new_comment
    if @my_new_comment.save
      redirect_to gossip_path(@my_new_comment.gossip.id)
    else
      redirect_to issue_path
    end
  end

  def show
    @my_comment = Comment.find(params[:id])
  end

  def edit
    @my_comment = Comment.find(params[:id])
  end

  def update
    @my_comment = Comment.find(params[:id])
    @my_comment.body = params['comment']['body']
    @my_comment.anonymous_commentator = params['comment']['anonymous_commentator']
    @my_comment.save
    if @my_comment.save
      redirect_to gossip_path(@my_comment.gossip.id)
    else
      redirect_to issue_path
    end
  end

  def destroy
  	my_id = Comment.find(params[:id]).gossip.id
    Comment.find(params[:id]).delete
    redirect_to gossip_path(my_id)
  end

end
