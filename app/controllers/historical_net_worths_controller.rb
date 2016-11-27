class HistoricalNetWorthsController < ApplicationController
  def index
    @q = HistoricalNetWorth.ransack(params[:q])
    @historical_net_worths = @q.result(:distinct => true).includes(:net_worth_total, :user).page(params[:page]).per(10)

    render("historical_net_worths/index.html.erb")
  end

  def show
    @historical_net_worth = HistoricalNetWorth.find(params[:id])

    render("historical_net_worths/show.html.erb")
  end

  def new
    @historical_net_worth = HistoricalNetWorth.new

    render("historical_net_worths/new.html.erb")
  end

  def create
    @historical_net_worth = HistoricalNetWorth.new

    @historical_net_worth.user_id = params[:user_id]
    @historical_net_worth.date = params[:date]
    @historical_net_worth.asset_value_total_id = params[:asset_value_total_id]
    @historical_net_worth.liabilities_value_total_id = params[:liabilities_value_total_id]
    @historical_net_worth.net_worth_total_id = params[:net_worth_total_id]

    save_status = @historical_net_worth.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/historical_net_worths/new", "/create_historical_net_worth"
        redirect_to("/historical_net_worths")
      else
        redirect_back(:fallback_location => "/", :notice => "Historical net worth created successfully.")
      end
    else
      render("historical_net_worths/new.html.erb")
    end
  end

  def edit
    @historical_net_worth = HistoricalNetWorth.find(params[:id])

    render("historical_net_worths/edit.html.erb")
  end

  def update
    @historical_net_worth = HistoricalNetWorth.find(params[:id])

    @historical_net_worth.user_id = params[:user_id]
    @historical_net_worth.date = params[:date]
    @historical_net_worth.asset_value_total_id = params[:asset_value_total_id]
    @historical_net_worth.liabilities_value_total_id = params[:liabilities_value_total_id]
    @historical_net_worth.net_worth_total_id = params[:net_worth_total_id]

    save_status = @historical_net_worth.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/historical_net_worths/#{@historical_net_worth.id}/edit", "/update_historical_net_worth"
        redirect_to("/historical_net_worths/#{@historical_net_worth.id}", :notice => "Historical net worth updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Historical net worth updated successfully.")
      end
    else
      render("historical_net_worths/edit.html.erb")
    end
  end

  def destroy
    @historical_net_worth = HistoricalNetWorth.find(params[:id])

    @historical_net_worth.destroy

    if URI(request.referer).path == "/historical_net_worths/#{@historical_net_worth.id}"
      redirect_to("/", :notice => "Historical net worth deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Historical net worth deleted.")
    end
  end
end
