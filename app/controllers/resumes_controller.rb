class ResumesController < ApplicationController
  def index
    @resumes = Resume.all.uniq
  end

  def new
    @resume = Resume.new
  end

  def create
    # byebug

    # Resume.create(name: params.require(:resume)[:name], attachment: params.require(:resume).permit(:attachment))

    Resume.create(name: params.require(:resume)[:name], attachment:  params.require(:resume)[:attachment])
    Resume.create(name: params.require(:resume)[:name], attachment:  params.require(:resume)[:attachment1])
    Resume.create(name: params.require(:resume)[:name], attachment:  params.require(:resume)[:attachment2])
    Resume.create(name: params.require(:resume)[:name], attachment:  params.require(:resume)[:attachment3])


    # @resume = Resume.new(params.require(:resume).permit(:name, :attachment))
    # @resume.save
    # @resume = Resume.new(params.require(:resume).permit(:name, :attachment1))
    # @resume.save
    # @resume = Resume.new(params.require(:resume).permit(:name, :attachment2))
    # @resume.save
    # @resume = Resume.new(params.require(:resume).permit(:name, :attachment3))


    # # byebug
    # if @resume.save
    redirect_to resumes_path#, notice: "The resume #{@resume.name} has been uploaded."
    # else
    #   render "new"
    # end
  end

  def destroy
    @resume = Resume.find(params[:id])
    @resume.destroy
    redirect_to resumes_path, notice:  "The PDF #{@resume.name} has been deleted."
  end

private
  def resume_params
    params.require(:resume).permit(:name, :attachment, :attachment1, :attachment2, :attachment3)
  end
end