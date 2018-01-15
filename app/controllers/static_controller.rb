class StaticController < ApplicationController

  def about
    @instanceVariable = 'Hello this is my instance variable'
  end

end
