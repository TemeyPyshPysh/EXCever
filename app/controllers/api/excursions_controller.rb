class Api::ExcursionsController < ApplicationController
  def index
    tmp = Excursion.all.to_json
    if tmp == [].to_json
      tmp = ['No one excursions.'].to_json
    end

    render json: tmp
  end
end