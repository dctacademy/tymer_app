class ReportController < ApplicationController
  def by_year
  	@batches = Batch.order('start_date')
  	@batch_years = @batches.group_by {|batch| batch.start_date.beginning_of_year}
  end

  def income
    @payments_2014 = Payment.where('payment_date >= ? AND payment_date <= ?', Date.parse("2014-04-01"), Date.parse("2015-03-31"))
  	@payments_2015 = Payment.where('payment_date >= ? AND payment_date <= ?', Date.parse("2015-04-01"), Date.parse("2016-03-31"))
  	@payments_2016 = Payment.where('payment_date >= ? AND payment_date <= ?', Date.parse("2016-04-01"), Date.parse("2017-03-31"))
    @payments_2017 = Payment.where('payment_date >= ? AND payment_date <= ?', Date.parse("2017-04-01"), Date.parse("2018-03-31"))
    @payments_2018 = Payment.where('payment_date >= ? AND payment_date <= ?', Date.parse("2018-04-01"), Date.parse("2019-03-31"))
    @payments_2019 = Payment.where('payment_date >= ? AND payment_date <= ?', Date.parse("2019-04-01"), Date.parse("2020-03-31"))

    @payments_by_month_2014 = @payments_2014.group_by {|payment| payment.payment_date.beginning_of_month} 
  	@payments_by_month_2015 = @payments_2015.group_by {|payment| payment.payment_date.beginning_of_month}	
  	@payments_by_month_2016 = @payments_2016.group_by {|payment| payment.payment_date.beginning_of_month}	
    @payments_by_month_2017 = @payments_2017.group_by {|payment| payment.payment_date.beginning_of_month} 
    @payments_by_month_2018 = @payments_2018.group_by {|payment| payment.payment_date.beginning_of_month} 
    @payments_by_month_2019 = @payments_2019.group_by {|payment| payment.payment_date.beginning_of_month} 
  end


  def sources
    @sources = StudentSource.all
  end
end
