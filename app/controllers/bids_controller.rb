class BidsController < ApplicationController

  def create
    @bid = Bid.new(params[:bid])
    @bid.save!
    BidMailer.incoming_bid_email(@bid).deliver
    head :ok
  end

end
