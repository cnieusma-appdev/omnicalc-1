class ApplicationController < ActionController::Base
  def home
    render({ :template => "layouts/square_form.html.erb"})
  end

  def blank_square_form
    render({ :template => "calculation_templates/square_form.html.erb"})
  end

  def blank_sqrt_form
    render({ :template => "calculation_templates/sqrt_form.html.erb"})
  end

  def blank_payment_form
    render({ :template => "calculation_templates/payment_form.html.erb"})
  end


  def calculate_square
    @num = params.fetch("square").to_f
    @square_of_num = @num ** 2
    render({ :template => "calculation_templates/square_results.html.erb"})
  end

  def calculate_sqrt
    @num = params.fetch("sqrt").to_f
    @sqrt_of_num = @num ** 0.5
    render({ :template => "calculation_templates/sqrt_results.html.erb"})
  end

  def calculate_payment
    @APR = params.fetch("APR").to_f.round(4)
    @num_years = params.fetch("num_years").to_f.round()
    @principal = params.fetch("principal").to_f.round(2)
    @payment = (@principal * (@APR/100 / @num_years)).round(2)

    render({ :template => "calculation_templates/payment_results.html.erb"})
  end

  def calculate_random
    @lower = params.fetch("user_min").to_i
    @upper = params.fetch("user_max").to_i
    @result = rand(@lower..@upper)
    render({ :template => "calculation_templates/rand_results.html.erb"})
  
  end

end
