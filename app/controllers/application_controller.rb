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

  def calculate_random
    @lower = params.fetch("user_min").to_i
    @upper = params.fetch("user_max").to_i
    @result = rand(@lower..@upper)
    render({ :template => "calculation_templates/rand_results.html.erb"})
  
  end

end
