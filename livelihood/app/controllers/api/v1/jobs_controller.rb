class Api::V1::JobsController < ApplicationController

    def index
        user_id = decoded_token[0]['user_id']
        @user = User.find(user_id)
        @jobs = @user.jobs
        render json: @jobs, include: [:applications]
    end

    def create 
        job = Job.create(
            jobTitle: params['jobTitle'],
            companyName: params['companyName'],
            description: params['description'],
            jobPostUrl: params['jobPostUrl'],
            salary: params['salary'],
            dateApplied: params['dateApplied'],
            user_id: @user.id
        )
        render json: job
    end

    def update
        job = @user.jobs.find_by(id: params[:id])
        appId = job.applications[0].id
        job.update(
            description: params['description'],
            salary: params['salary'],
            applications_attributes: [{id: appId, status: params['status']}]
        )
        render json: job
    end

    def destroy
        job = @job.find(params[:id])
        job.destroy
    end

    private

    def job_params
        params.require.(:job).permit(
            :jobTitle,
            :companyName,
            :description,
            :jobPostUrl,
            :dateApplied,
            :salary,
            applications_attributes: [:id, :status]
        )
    end
    
end
