class PagesController < ApplicationController
  def home
    @variable = 4
  end

  def contact
    @variable = 10
  end
end
