class RecordsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
  end

  def new
    redirect_to root_path
  end

  def create
    @record = record.new(record_params)
    if @record.valid? # => Validation
      @record.save
      # Success
      redirect_to root_path
    else
      # Failure
      render 'index'
    end
  end

  private

  def record_params
    params.require(:record).permit(:start, :end)
          .merge(user_id: current_user.id)
  end

end
