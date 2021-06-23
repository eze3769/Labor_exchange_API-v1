class Api::V1::PostulantsController < ApplicationController
  before_action :set_offer, only: [:state, :index]
  def create
  end

  def show
  end

  def destroy
  end
  def index

    @postulant = User.where(id: Company.find(params[:company_id]).offers.find(params[:offer_id]).postulants ) 
    
    render :index
    
  end
  def state
    @postulant = User.where(id: Postulant.all )
  end
  def state_index 

  end
  def set_offer
    @offer = Offer.find(params[:offer_id])
  end
end
