class ReportController < ApplicationController
  def by_year
  	@batches = Batch.all
  	@batch_years = @batches.group_by {|batch| batch.start_date.beginning_of_year}
  end

  def income
  	@batches = Batch.all
  	@batch_years = @batches.group_by {|batch| batch.start_date.beginning_of_month }
  end
end
