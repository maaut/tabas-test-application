class PropertyController < ApplicationController
  def index
    @properties = Property.all
  end
end
