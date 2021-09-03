class billboardsController < ApplicationController
    before_action :set_billboards
    def index
      # @artists = artists
      @artists = @billboards.artists
      render component: 'artists', props: { artists: @artists }
    end
    def show
      @artists = @billboards.artists.find(params[:id])
      render component: 'artists', props: { artists: @artists }
    end
    def new
      @artists = @billboards.artists.new
      render component: 'artistsNew', props: { artists: @artists }
    end
    def create
      @artists = @billboards.artists.new(artists_params)
      if @artists.save
        redirect_to root_path
      else
        render component: 'artistsNew', props: { artists: @artists }
      end
    end
    def edit
      @artists = @billboards.artists.find(params[:id])
      render component: 'artistsEdit', props: { artists: @artists }
    end
    def update
      @artists = @billboards.artists.find(params[:id])
      if @artists.update(artists_params)
        redirect_to root_path
      else
        render component: 'artistsEdit', props: { artists: @artists }
      end
    end
    def destroy
      @billboards.artists.find(params[:id]).destroy
      redirect_to root_path
    end
    private
      def set_billboards
        @billboards= billboards.find(params[:billboards_id])
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
