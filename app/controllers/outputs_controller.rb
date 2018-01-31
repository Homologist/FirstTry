class OutputsController < ApplicationController

  

 def index
    @outputs = Output.all
  end
 def show
    @output = Output.find(params[:id])
  end
  
   def display
    @output = Output.find(params[:id])
	 f=File.open("app/assets/tfls/safety/"+@output.output_file_name, "r")
	 f.read
	
  end
  
  

  def new
   @output = Output.new
  end
  
  def edit
  @output = Output.find(params[:id])
  end

  def create
   #render plain: params[:output].inspect
    @output = Output.new(output_params)
	if @output.save
       redirect_to @output
	else
       render 'new'
    end
  end
  
  def update
  @output = Output.find(params[:id])
 
  if @output.update(output_params)
    redirect_to @output
  else
    render 'edit'
  end
end


def destroy
  @output = Output.find(params[:id])
  @output.destroy
 
  redirect_to outputs_path
end

  
  private
  def output_params
    params.require(:output).permit(:title, :number, :TFL,
                     	:footnote, :population, :domain, :status, :program_name, :output_file_name)
  end
  
  
end
 