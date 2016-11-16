class RetirementCalculationsController < ApplicationController
  def index
    @q = RetirementCalculation.ransack(params[:q])
    @retirement_calculations = @q.result(:distinct => true).includes(:assumptions, :user).page(params[:page]).per(10)

    render("retirement_calculations/index.html.erb")
  end

  def show
    @retirement_calculation = RetirementCalculation.find(params[:id])

    render("retirement_calculations/show.html.erb")
  end

  def new
    @retirement_calculation = RetirementCalculation.new

    render("retirement_calculations/new.html.erb")
  end

  def create
    @retirement_calculation = RetirementCalculation.new

    @retirement_calculation.assumptions_id = params[:assumptions_id]
    @retirement_calculation.calculation_by_month = params[:calculation_by_month]

    save_status = @retirement_calculation.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/retirement_calculations/new", "/create_retirement_calculation"
        redirect_to("/retirement_calculations")
      else
        redirect_back(:fallback_location => "/", :notice => "Retirement calculation created successfully.")
      end
    else
      render("retirement_calculations/new.html.erb")
    end
  end

  def edit
    @retirement_calculation = RetirementCalculation.find(params[:id])

    render("retirement_calculations/edit.html.erb")
  end

  def update
    @retirement_calculation = RetirementCalculation.find(params[:id])

    @retirement_calculation.assumptions_id = params[:assumptions_id]
    @retirement_calculation.calculation_by_month = params[:calculation_by_month]

    save_status = @retirement_calculation.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/retirement_calculations/#{@retirement_calculation.id}/edit", "/update_retirement_calculation"
        redirect_to("/retirement_calculations/#{@retirement_calculation.id}", :notice => "Retirement calculation updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Retirement calculation updated successfully.")
      end
    else
      render("retirement_calculations/edit.html.erb")
    end
  end

  def destroy
    @retirement_calculation = RetirementCalculation.find(params[:id])

    @retirement_calculation.destroy

    if URI(request.referer).path == "/retirement_calculations/#{@retirement_calculation.id}"
      redirect_to("/", :notice => "Retirement calculation deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Retirement calculation deleted.")
    end
  end
end
