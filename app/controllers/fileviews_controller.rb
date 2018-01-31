class FileviewsController < ApplicationController

 def display
    @output = Output.find(params[:id])
	 f=File.open("app/assets/tfls/safety/"+@output.output_file_name, "r")
	 f.read
	
  end
  

end
