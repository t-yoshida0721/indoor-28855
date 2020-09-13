class IndoorsController < ApplicationController
  def index
    @indoors = Indoor.all
  end
end
