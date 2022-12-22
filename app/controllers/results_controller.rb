class ResultsController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  def index
    @result = Result.all
    @result = Augury.find(params[:augury_id])
  end

end
