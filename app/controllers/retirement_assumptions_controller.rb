class RetirementAssumptionsController < ApplicationController
  def index
    @retirement_assumptions = RetirementAssumption.page(params[:page]).per(10)

    render("retirement_assumptions/index.html.erb")
  end

  def show
    @retirement_assumption = RetirementAssumption.find(params[:id])

    render("retirement_assumptions/show.html.erb")
  end

  def new
    @retirement_assumption = RetirementAssumption.new

    render("retirement_assumptions/new.html.erb")
  end

  def create
    @retirement_assumption = RetirementAssumption.new

    @retirement_assumption.age_id = params[:age_id]
    @retirement_assumption.last_year_saving_id = params[:last_year_saving_id]
    @retirement_assumption.investment_return = params[:investment_return]
    @retirement_assumption.inflation = params[:inflation]
    @retirement_assumption.increase_in_savings = params[:increase_in_savings]
    @retirement_assumption.annual_savings = params[:annual_savings]
    @retirement_assumption.initial_savings = params[:initial_savings]
    @retirement_assumption.retirement_income = params[:retirement_income]
    @retirement_assumption.retirement_age = params[:retirement_age]
    @retirement_assumption.user_id = params[:user_id]

    save_status = @retirement_assumption.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/retirement_assumptions/new", "/create_retirement_assumption"
        redirect_to("/retirement_assumptions")
      else
        redirect_back(:fallback_location => "/", :notice => "Retirement assumption created successfully.")
      end
    else
      render("retirement_assumptions/new.html.erb")
    end
  end

  def edit
    @retirement_assumption = RetirementAssumption.find(params[:id])

    render("retirement_assumptions/edit.html.erb")
  end

  def update
    @retirement_assumption = RetirementAssumption.find(params[:id])

    @retirement_assumption.age_id = params[:age_id]
    @retirement_assumption.last_year_saving_id = params[:last_year_saving_id]
    @retirement_assumption.investment_return = params[:investment_return]
    @retirement_assumption.inflation = params[:inflation]
    @retirement_assumption.increase_in_savings = params[:increase_in_savings]
    @retirement_assumption.annual_savings = params[:annual_savings]
    @retirement_assumption.initial_savings = params[:initial_savings]
    @retirement_assumption.retirement_income = params[:retirement_income]
    @retirement_assumption.retirement_age = params[:retirement_age]
    @retirement_assumption.user_id = params[:user_id]

    save_status = @retirement_assumption.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/retirement_assumptions/#{@retirement_assumption.id}/edit", "/update_retirement_assumption"
        redirect_to("/retirement_assumptions/#{@retirement_assumption.id}", :notice => "Retirement assumption updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Retirement assumption updated successfully.")
      end
    else
      render("retirement_assumptions/edit.html.erb")
    end
  end

  def destroy
    @retirement_assumption = RetirementAssumption.find(params[:id])

    @retirement_assumption.destroy

    if URI(request.referer).path == "/retirement_assumptions/#{@retirement_assumption.id}"
      redirect_to("/", :notice => "Retirement assumption deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Retirement assumption deleted.")
    end
  end
end
