class SongsController < ApplicationController
    before_action :set_song, only: [:show, :edit, :update]
    
    def index
        @songs = Song.all
    end

    def show
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.create(song_params(:name))
        redirect_to song_path(@song)
    end

    def edit
    end

    def update
        @Song.update(song_params(:name))
        redirect_to song_path(@song)
    end

    private

    def set_song
        @song = Song.find(params[:id])
    end

    def song_params(*args)
        params.require(:song).permit(*args)
    end

end
