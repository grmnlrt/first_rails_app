class PagesController < ApplicationController
  def about
  end

  def contact
    @members = ["Thanh", "Julien", "Dimitri", "Damien", "Germain", "Edouard", "Lamiaa", "Anouk", "Thomas"]

    if params[:name]
      @members = @members.select { |member| member.downcase.start_with?(params[:name]) }
    end
  end

  def home
  end
end
