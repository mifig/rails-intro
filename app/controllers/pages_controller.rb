class PagesController < ApplicationController
  def about
  end

  def home
  end

  def contacts
    @contacts = [{name: "Miguel", role: "Batch Manager"}, {name: "Rodrigo", role: "Events Manager"}, {name: "Teresa", role: "Community Manager"}]

    if params[:contact]
      @contacts = @contacts.select do |contact|
        contact[:name].starts_with?(params[:contact])
      end
    end
  end
end
