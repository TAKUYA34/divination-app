class AugurysController < ApplicationController
  def index
    @augurys = Augury.all
  end

  def new
    @augury = Augury.new
  end

  def create
    @augury = Augury.new(augury_params)
    if @augury.save
      redirect_to root_path
    else
      render :new
    end
  end

    private

  def augury_params
    params.require(augury).permit(:nickname, :sign, :birth_id).merge(user_id: current_user.id)
  end
end
