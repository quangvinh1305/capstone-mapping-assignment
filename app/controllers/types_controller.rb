class TypesController < ApplicationController
  def index
    expires_in 1.minute, :public=>true
    @types = Type.all
    stale?(@types.maximum(:updated_at))
  end
end
