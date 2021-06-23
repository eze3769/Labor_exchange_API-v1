class Api::V1::OffersController < ApplicationController
  before_action :set_offer, only: [:show, :update, :destroy]

  # GET /offers
  def index
    @offers = Offer.all

    render json: @offers, :except=>[:created_at, :updated_at, :company_id]
  end

  # GET /offers/1
  def show
    render json: @offer, :except=>[:created_at, :updated_at]
  end

  # POST /offers
  def create
    @offer = Offer.create(offer_params)

    # if @offer.save
    #   render json: @offer, status: :created, location: @offer
    # else
    #   render json: @offer.errors, status: :unprocessable_entity
    # end
  end

  # PATCH/PUT /offers/1
  def update
    if @offer.update(offer_params)
      render json: @offer
    else
      render json: @offer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /offers/1
  def destroy
    @offer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offer
      @offer = Offer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def offer_params
      params.require(:offer).permit(:title, :description, :company_id)
    end
end
