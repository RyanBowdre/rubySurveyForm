class SurveysController < ApplicationController
  def new
  end

  def submit
    if session.key?('count')
      session[:count]+= 1
    else
      session[:count] = 1
    end
    session[:name] = params[:name]
    session[:location] = params[:location]
    session[:language] = params[:language]
    session[:comment] = params[:comment]
    redirect_to '/result'
  end

  def result
  end
end
