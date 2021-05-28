class Api::V1::ApplicationsController < ApplicationController

    def index
        user_id = decoded_token[0]['user_id']
        @user = User.find(user_id)
        @applications = @user.application.all
        render json: @applications
    end

    def create 
        application = Application.create(
            status: "Applied",  #=> applied by default, interviewing, second interview, final interview, etc.
            dateApplied: params['dateApplied'], # ? double check params
            user_id: @user.id,
            job_id: params['id'],# ? double check params
        )
        render json: application
    end

    def update
        application = Application.find(params[:id])
        application.update(params.require(:application).permit(
            status: params['status']
        ))
        render json: application
    end

    def destroy
        application = @applications.find(params[:id])
        application.destroy
    end

    private

    def application_params
        params.require(:application).permit(
            :status,
            :dateApplied,
            :user_id,
            :job_id
        )
    end

end
