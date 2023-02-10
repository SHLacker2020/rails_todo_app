class PostsController < ApplicationController

  def index

  end

  def search
    coin_info = find_coin(params[:coin])
    unless coin_info
      flash[:alert] = "Coin not found"
      return render action :index
    end

    @coin = coin_info["rates"]
  end

  private

  def request_api(url)
    response = Excon.get(url)
    return nil if response.status != 200
    JSON.parse(response.body)
  end

  def find_coin(coin)
    request_api("https://api.coingecko.com/api/v3/exchange_rates")
  end

end
