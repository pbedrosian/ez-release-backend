class ReleasesController < ApplicationController

    def index 
        releases = Release.all
        render json: releases
    end

    def show
        render json: @release
    end

    def create
        user = User.first
        release = user.releases.new(releases_params)
        render json: release.save ? release : {message: release.errors.full_messages}
    end

    def update
        release = Release.find_by_id(params[:id])
        release.update(releases_params)
        render json: release.save ? release : {message: release.errors.full_messages}
    end

    private

    def set_release
        @release = Release.find_by_id(params[:id])
    end

    def releases_params
        params.require(:release).permit(
            :jobTitle,
            :clientFirstName,
            :clientLastName,
            :clientEmail,
            :jobDescription,
            :dueDate,
            :additionalNotes,
            :signed
        )
    end
end
