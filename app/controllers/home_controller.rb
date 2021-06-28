class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_a43df2b4dba84345833cef4ffaeb78d9' ) 

    if params[:ticker] == ""
      @nothing = "Please Enter A Symbol"
    elsif params[:ticker]

      begin
    @stock = StockQuote::Stock.quote(params[:ticker])
  rescue RuntimeError
      @error = "Hey! That Stock Symbol doesn't exist. Please try again"

    else
    p "No error"

    ensure
    p "Done"


    end
  end
end

  def about
  end
  
end
