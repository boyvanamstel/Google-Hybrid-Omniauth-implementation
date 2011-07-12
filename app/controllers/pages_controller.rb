class PagesController < ApplicationController
  def home
  end

  def callback
    raise request.env["omniauth.auth"].to_yaml
  end
end
