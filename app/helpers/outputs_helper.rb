module OutputsHelper

 def view_output(filename)
     f=File.open("app/assets/tfls/safety/"+filename, "r")
	 f.read 
  end
  

end
