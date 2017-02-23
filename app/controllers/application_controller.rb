class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :set_charset

  def set_charset
  	headers["Content-type"] = "text/html; charset=euc-kr"
  end
end
