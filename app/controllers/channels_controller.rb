class ChannelsController < ApplicationController
  before_action :set_channel, only: [ :show, :update ]

  # GET /channels
  def index
    @channels = Channel.order(:order)
    render json: @channels
  end

  # GET /channels/:id
  def show
    render json: @channel
  end

  # PATCH/PUT /channels/:id
  def update
    if @channel.update(channel_params)
      render json: @channel
    else
      render json: { errors: @channel.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def set_channel
    @channel = Channel.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Channel not found" }, status: :not_found
  end

  def channel_params
    params.require(:channel).permit(:label, :order, :visible, ui_state: {})
  end
end
