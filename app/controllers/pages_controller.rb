class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def search
  	@arrEvents = @events.to_a
	if (params[:starts_at] && params[:ends_at] && !params[:starts_at].empty? & !params[:ends_at].empty?)
		starts_at = Date.parse(params[:starts_at])
		ends_at = Date.parse(params[:ends_at])

		
	end


  end
end
