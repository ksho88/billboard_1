class songController < ApplicationController
      before_action :set_billboard
    def index
      # @song = song
      @songs = @billboard.songs
      render component: 'songs', props: { songs: @songs }
    end
    def show
      @song = @billboard.song.find(params[:id])
      render component: 'song', props: { song: @song }
    end
    def new
      @song = @billboard.song.new
      render component: 'songNew', props: { song: @song }
    end
    def create
      @song = @billboard.song.new(song_params)
      if @song.save
        redirect_to root_path
      else
        render component: 'songNew', props: { song: @song }
      end
    end
    def edit
      @song = @billboard.song.find(params[:id])
      render component: 'songEdit', props: { song: @song }
    end
    def update
      @song = @billboard.song.find(params[:id])
      if @song.update(song_params)
        redirect_to root_path
      else
        render component: 'songEdit', props: { song: @song }
      end
    end
    def destroy
      @billboard.song.find(params[:id]).destroy
      redirect_to root_path
    end
    private
      def set_billboard
        @billboard = billboard.find(params[:billboard_id])
      end
  end