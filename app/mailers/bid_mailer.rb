#encoding: utf-8
class BidMailer < ActionMailer::Base
  default from: "from@example.com"

  def incoming_bid_email(bid)
    @bid = bid
    #TODO: Ввести email, куда будут доставляться новые заявки.
    mail to: '',
         subject: 'Новая заявка на замер.'
  end

end
