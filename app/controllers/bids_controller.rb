class BidsController < ApplicationController

  def create
    @bid = Bid.new(params[:bid])
    @bid.save!
    #BidMailer.bid_reg_email(@bid).deliver
    head :ok
  end

end
