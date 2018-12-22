class Api::ParticipantsController < ApplicationController
  def index
    tmp = Participant.all.to_json
    if tmp == [].to_json
      tmp = ['No one participant.'].to_json
    end

    render json: tmp
  end
end