class ProjectsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_project, :only => [:edit, :update, :show]
  before_filter :correct_user_project, :only => [:edit, :update]

  def index
    @projects = Project.page(params[:page]).per(10)
    @title = "All Projects"
  end

  def new
    @title = "Create a new project"
    @project = current_user.profile.projects.new
  end

  def create
    @project = current_user.profile.projects.create(params[:project])
    if @project
      @project.relations.first.relationship = "Champion"
      @project.save
      flash[:success] = "Project was successfully created."
      redirect_to (@project)
    else
      @title = "Create a new project"
      render 'new'
    end
  end

  def show
    @title = @project.title
    @relation = Relation.where(:profile_id => current_user.profile.id, 
                               :project_id => @project.id).first
    @new_relation = Relation.new if @relation.blank?
  end

  def edit
    @title = "Edit project"
  end

  def update
    if @project.update_attributes(params[:project])
      flash[:notice] = "Project successfully updated"
      redirect_to project_path
    else
      @title = "Edit project"
      render 'edit'
    end
  end

  private
    def find_project
      @project = Project.find(params[:id])
    end

    def correct_user_project
      redirect_to(root_path) unless @project.profiles.first == current_user.profile
    end
end
