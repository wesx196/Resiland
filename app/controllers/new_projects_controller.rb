class NewProjectsController < ApplicationController
  before_action :set_new_project, only: [:show, :edit, :update, :destroy]

  # GET /new_projects
  # GET /new_projects.json
  def index
    @new_projects = NewProject.all
  end

  # GET /new_projects/1
  # GET /new_projects/1.json
  def show
  end

  # GET /new_projects/new
  def new
    @new_project = NewProject.new
  end

  # GET /new_projects/1/edit
  def edit
  end

  # POST /new_projects
  # POST /new_projects.json
  def create
    @new_project = NewProject.new(new_project_params)

    respond_to do |format|
      if @new_project.save
        format.html { redirect_to @new_project, notice: 'New project was successfully created.' }
        format.json { render :show, status: :created, location: @new_project }
      else
        format.html { render :new }
        format.json { render json: @new_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_projects/1
  # PATCH/PUT /new_projects/1.json
  def update
    respond_to do |format|
      if @new_project.update(new_project_params)
        format.html { redirect_to @new_project, notice: 'New project was successfully updated.' }
        format.json { render :show, status: :ok, location: @new_project }
      else
        format.html { render :edit }
        format.json { render json: @new_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_projects/1
  # DELETE /new_projects/1.json
  def destroy
    @new_project.destroy
    respond_to do |format|
      format.html { redirect_to new_projects_url, notice: 'New project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_project
      @new_project = NewProject.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def new_project_params
      params.require(:new_project).permit(:title, :description, :img_url, :date)
    end
end
