class MatchesController < ApplicationController
  def index
    @matches = Match.all
  end

  def show
    @match = Match.find(params[:id])
  end

  def new
    @match = Match.new
  end

  def edit
    @match = Match.find(params[:id])
  end

  def update
    @match = Match.find(params[:id])
    if @match.update(post_params)
      redirect_to @match
    else
      render 'edit'
    end
  end

  def create
    @match = Match.new(post_params)
    if @match.save
      redirect_to @match
    else
      render 'new'
    end
  end

  def destroy
    @match = Match.find(params[:id])
    @match.destroy
    redirect_to matches_path
  end

  private
  def post_params
    params.require(:match).permit(:fighter1, :fighter2, :winner)
  end
end
