class DojosController < ApplicationController
  def index
  	@Dojos = Dojo.all
  	return render "index.html.erb"
  end
end
