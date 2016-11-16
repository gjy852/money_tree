class UsersController < ApplicationController
  def index
    @users = User.all

    render("users/index.html.erb")
  end

  def show
    @user = User.find(params[:id])

    render("users/show.html.erb")
  end

  def new
    @user = User.new

    render("users/new.html.erb")
  end

  def create
    @user = User.new

    @user.age = params[:age]
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.individual_net_worth = params[:individual_net_worth]
    @user.individual_retirement_goal = params[:individual_retirement_goal]
    @user.annual_savings = params[:annual_savings]
    @user.current_income = params[:current_income]
    @user.email = params[:email]
    @user.password = params[:password]

    save_status = @user.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/users/new", "/create_user"
        redirect_to("/users")
      else
        redirect_back(:fallback_location => "/", :notice => "User created successfully.")
      end
    else
      render("users/new.html.erb")
    end
  end

  def edit
    @user = User.find(params[:id])

    render("users/edit.html.erb")
  end

  def update
    @user = User.find(params[:id])

    @user.age = params[:age]
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.individual_net_worth = params[:individual_net_worth]
    @user.individual_retirement_goal = params[:individual_retirement_goal]
    @user.annual_savings = params[:annual_savings]
    @user.current_income = params[:current_income]
    @user.email = params[:email]
    @user.password = params[:password]

    save_status = @user.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/users/#{@user.id}/edit", "/update_user"
        redirect_to("/users/#{@user.id}", :notice => "User updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "User updated successfully.")
      end
    else
      render("users/edit.html.erb")
    end
  end

  def destroy
    @user = User.find(params[:id])

    @user.destroy

    if URI(request.referer).path == "/users/#{@user.id}"
      redirect_to("/", :notice => "User deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "User deleted.")
    end
  end
end
