class AssetsController < ApplicationController
  def index
    @assets = Asset.page(params[:page]).per(10)

    render("assets/index.html.erb")
  end

  def show
    @asset = Asset.find(params[:id])

    render("assets/show.html.erb")
  end

  def new
    @asset = Asset.new

    render("assets/new.html.erb")
  end

  def create
    @asset = Asset.new

    @asset.stocks_and_stock_funds = params[:stocks_and_stock_funds]
    @asset.cash = params[:cash]
    @asset.retirement_account = params[:retirement_account]
    @asset.real_estate = params[:real_estate]
    @asset.asset_total = params[:asset_total]
    @asset.bonds = params[:bonds]
    @asset.health_savings_account = params[:health_savings_account]
    @asset.asset_detailed_info = params[:asset_detailed_info]

    save_status = @asset.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/assets/new", "/create_asset"
        redirect_to("/assets")
      else
        redirect_back(:fallback_location => "/", :notice => "Asset created successfully.")
      end
    else
      render("assets/new.html.erb")
    end
  end

  def edit
    @asset = Asset.find(params[:id])

    render("assets/edit.html.erb")
  end

  def update
    @asset = Asset.find(params[:id])

    @asset.stocks_and_stock_funds = params[:stocks_and_stock_funds]
    @asset.cash = params[:cash]
    @asset.retirement_account = params[:retirement_account]
    @asset.real_estate = params[:real_estate]
    @asset.asset_total = params[:asset_total]
    @asset.bonds = params[:bonds]
    @asset.health_savings_account = params[:health_savings_account]
    @asset.asset_detailed_info = params[:asset_detailed_info]

    save_status = @asset.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/assets/#{@asset.id}/edit", "/update_asset"
        redirect_to("/assets/#{@asset.id}", :notice => "Asset updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Asset updated successfully.")
      end
    else
      render("assets/edit.html.erb")
    end
  end

  def destroy
    @asset = Asset.find(params[:id])

    @asset.destroy

    if URI(request.referer).path == "/assets/#{@asset.id}"
      redirect_to("/", :notice => "Asset deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Asset deleted.")
    end
  end
end
