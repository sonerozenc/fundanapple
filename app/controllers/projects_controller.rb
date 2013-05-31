class ProjectsController < ApplicationController
  # GET /projects
  # GET /projects.json
  def index

    @grid = Grid.new
    
    @projects = Project.all
    @project = Project.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
    end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show

    @grid = Grid.new

    @project = Project.includes(:grids).find(params[:id])

    @artworks = Artwork.all
    # @artwork = Artwork.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project }
    end
  end

  # GET /projects/new
  # GET /projects/new.json
  def new
    @project = Project.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project }
    end
  end

  # GET /projects/1/edit
  def edit
    @project = Project.find(params[:id])
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(params[:project])
    @project.user = current_user

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render json: @project, status: :created, location: @project }
      else
        format.html { render action: "new" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end


  # POST /projects/1/add_grid
  def add_grid

    @grid = Grid.new(params[:grid])
    @project = Project.find(params[:project_id])
    @grid.project = @project

    respond_to do |format|
      if @grid.save
        format.html { redirect_to @project, notice: 'Grid was successfully created.' }
        format.json { render json: @grid, status: :created, location: @project }
      else
        format.html { render action: "show" }
        format.json { render json: @grid.errors, status: :unprocessable_entity }
      end
    end
  end

  def update_grid
    @grid = Grid.find(params[:id])

    @grid.x_location = params[:x]
    @grid.y_location = params[:y]

    if @grid.save
      respond_to do |format|
        format.json { render json: @grid }
      end
    else
      respond_to do |format|
        format.json { render json: 'failed' }
      end
    end
  end

  # PUT /projects/1
  # PUT /projects/1.json
  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to projects_url }
      format.json { head :no_content }
    end
  end
end
