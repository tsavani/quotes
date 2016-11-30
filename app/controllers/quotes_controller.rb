class QuotesController < ApplicationController
  def index
    @quote = Quote.find(Quote.pluck(:id).shuffle.first)
    respond_to do |format|
      format.js
      format.html
    end
  end
end
