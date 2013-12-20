#encoding: utf-8
class BidMailer < ActionMailer::Base
  default from: "1@vektor-nsk.com"

  def incoming_bid_email(bid)
    @bid = bid
    mail to: '1@vektor-nsk.com',
         subject: 'Новая заявка на замер.'
  end

end
