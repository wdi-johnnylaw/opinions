class WelcomeController < ApplicationController
  def index
    @things = Thing.all
  end
end
