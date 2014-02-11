class DemoController < ApplicationController

	layout false

  def index
  	render('demo/hello')
  end #end of Demo#index

  def hello
  	render('demo/index')
  end #end of Demo#hello

  def other_hello
  	redirect_to(:controller => 'demo', :action => 'index')
  end

end
