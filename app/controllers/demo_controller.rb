class DemoController < ApplicationController

	layout false

  def index
  	render('demo/hello')
  end #end of Demo#index

  def hello
  	#render('demo/index')
  	@array = [1,2,3,4,5]
  end #end of Demo#hello

  def other_hello
  	redirect_to(:controller => 'demo', :action => 'index')
  end

  def lynda
  	redirect_to('http://lynda.com')
  end

end
