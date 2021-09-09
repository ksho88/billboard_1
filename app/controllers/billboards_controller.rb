class BillboardsController < ApplicationController
 
  def index
    @billboards = Billboard.all
    render component: 'Billboards', props: {billboards: @billboards}
  end
  def show
    @billboard = Billboard.find(params[:id])
    render component: 'Billboard', props: { billboard: @billboard }
  end
  def new
    @billboard = Billboard.new
    render component: 'Billboard', props: {billboard: @billboard }
  end
  def create
    @billboard = Billboard.new (billboard_params)
    if @billboard.save
      redirect_to billboards_path
    else
      render component: 'billboardNew', props: { billboard: @billboard }
    end
  end
  def edit
    @billboard = Billboard.find(params{:id})
    render component: 'billboardEdit', props: {billboard: @billboard}
  end
  def update
    billboard = Billboard.find(params[:id])
    if @billboard.update(billboard_params)
      redirect_to billboards_path
    else
      render component: 'billboardEdit', props:
      {billboard: @billboard}
    end
  end
  def destroy
    Billboard.find(params[:id]).destroy
    @billboard.destroy
    redirect_to billboards_path
  private
    { billboard: {name: 'musician'}}
    { billboard: {name: 'musician'}}
    def billboard_params
    params.require(:billboards).permit(:name)
    end
  end
end 
#   Create a new rails app and make sure you make it a git repo and have a github repo linked to it
# Billboard Model   has_many artists
# Artist Model - belongs_to billboard  and has_many songs
# Song Model - belongs_to artist
# Each model has more than one attributes
# Have Validations for each model
# All CRUD actions for each Table
# Fill out all the controllers
# Fill out the views
# This is going to use nested routes for easier use of controller data flow
