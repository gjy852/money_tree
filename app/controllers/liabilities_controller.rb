class LiabilitiesController < ApplicationController
  def index
    @q = Liability.ransack(params[:q])
    @liabilities = @q.result(:distinct => true).includes(:net_worth).page(params[:page]).per(10)

    render("liabilities/index.html.erb")
  end

  def show
    @liability = Liability.find(params[:id])

    render("liabilities/show.html.erb")
  end

  def new
    @liability = Liability.new

    render("liabilities/new.html.erb")
  end

  def create
    @liability = Liability.new

    @liability.mortgage = params[:mortgage]
    @liability.student_loan = params[:student_loan]
    @liability.credit_cards = params[:credit_cards]
    @liability.liabilities_total = params[:liabilities_total]

    save_status = @liability.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/liabilities/new", "/create_liability"
        redirect_to("/liabilities")
      else
        redirect_back(:fallback_location => "/", :notice => "Liability created successfully.")
      end
    else
      render("liabilities/new.html.erb")
    end
  end

  def edit
    @liability = Liability.find(params[:id])

    render("liabilities/edit.html.erb")
  end

  def update
    @liability = Liability.find(params[:id])

    @liability.mortgage = params[:mortgage]
    @liability.student_loan = params[:student_loan]
    @liability.credit_cards = params[:credit_cards]
    @liability.liabilities_total = params[:liabilities_total]

    save_status = @liability.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/liabilities/#{@liability.id}/edit", "/update_liability"
        redirect_to("/liabilities/#{@liability.id}", :notice => "Liability updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Liability updated successfully.")
      end
    else
      render("liabilities/edit.html.erb")
    end
  end

  def destroy
    @liability = Liability.find(params[:id])

    @liability.destroy

    if URI(request.referer).path == "/liabilities/#{@liability.id}"
      redirect_to("/", :notice => "Liability deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Liability deleted.")
    end
  end
end
