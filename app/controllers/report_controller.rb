class ReportController < ApplicationController
  def by_year
  	@batches = Batch.all
  	@batch_years = @batches.group_by {|batch| batch.start_date.beginning_of_year}
  end

  def income
  	@payments_2015 = Payment.where('payment_date >= ? AND payment_date <= ?', Date.parse("2015-01-01"), Date.parse("2015-12-31"))
  	@payments_2016 = Payment.where('payment_date >= ? AND payment_date <= ?', Date.parse("2016-01-01"), Date.parse("2016-12-31"))
  	@payments_by_month_2015 = @payments_2015.group_by {|payment| payment.payment_date.beginning_of_month}	
  	@payments_by_month_2016 = @payments_2016.group_by {|payment| payment.payment_date.beginning_of_month}	
  end
end
