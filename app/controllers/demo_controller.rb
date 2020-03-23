class DemoController < ApplicationController

  layout false
  
  def index
  end

  def hello
  end

  def about
    #static
    render('about_us')
  end

  def contact
    if ['us', 'ca'].include?(params[:country])
      @phone = '(800) 555-6789'
    elsif params[:country] == 'uk'
      @phone = '020 555-6789'
    else
      @phone = '(+1) 555-6789'
    end
      render('contact_us')
  end
end
