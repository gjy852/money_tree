class AssetTypesController < ApplicationController
  def index
    @q = AssetType.ransack(params[:q])
    @asset_types = @q.result(:distinct => true).includes(:assets).page(params[:page]).per(10)

    render("asset_types/index.html.erb")
  end

  def show
    @asset = Asset.new
    @asset_type = AssetType.find(params[:id])

    render("asset_types/show.html.erb")
  end

  def new
    @asset_type = AssetType.new

    render("asset_types/new.html.erb")
  end

  def create
    @asset_type = AssetType.new

    @asset_type.checking_account = params[:checking_account]
    @asset_type.savings_account = params[:savings_account]
    @asset_type.other_cash_equivalents = params[:other_cash_equivalents]
    @asset_type.brokerage = params[:brokerage]
    @asset_type.retirement = params[:retirement]
    @asset_type.real_estate = params[:real_estate]
    @asset_type.other_invested_assets = params[:other_invested_assets]
    @asset_type.principal_home = params[:principal_home]
    @asset_type.car = params[:car]
    @asset_type.other_use_assets = params[:other_use_assets]

    save_status = @asset_type.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/asset_types/new", "/create_asset_type"
        redirect_to("/asset_types")
      else
        redirect_back(:fallback_location => "/", :notice => "Asset type created successfully.")
      end
    else
      render("asset_types/new.html.erb")
    end
  end

  def edit
    @asset_type = AssetType.find(params[:id])

    render("asset_types/edit.html.erb")
  end

  def update
    @asset_type = AssetType.find(params[:id])

    @asset_type.checking_account = params[:checking_account]
    @asset_type.savings_account = params[:savings_account]
    @asset_type.other_cash_equivalents = params[:other_cash_equivalents]
    @asset_type.brokerage = params[:brokerage]
    @asset_type.retirement = params[:retirement]
    @asset_type.real_estate = params[:real_estate]
    @asset_type.other_invested_assets = params[:other_invested_assets]
    @asset_type.principal_home = params[:principal_home]
    @asset_type.car = params[:car]
    @asset_type.other_use_assets = params[:other_use_assets]

    save_status = @asset_type.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/asset_types/#{@asset_type.id}/edit", "/update_asset_type"
        redirect_to("/asset_types/#{@asset_type.id}", :notice => "Asset type updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Asset type updated successfully.")
      end
    else
      render("asset_types/edit.html.erb")
    end
  end

  def destroy
    @asset_type = AssetType.find(params[:id])

    @asset_type.destroy

    if URI(request.referer).path == "/asset_types/#{@asset_type.id}"
      redirect_to("/", :notice => "Asset type deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Asset type deleted.")
    end
  end
end
