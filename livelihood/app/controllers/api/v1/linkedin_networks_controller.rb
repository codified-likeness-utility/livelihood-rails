class Api::V1::LinkedinNetworksController < ApplicationController

    def index
        user_id = decoded_token[0]['user_id']
        @user = User.find(user_id)
        linkedin_network = @user.linkedin_network
        render json: linkedin_network
    end

    def create
        newUserLinkedinNetwork = LinkedinNetwork.create(user_id: @user.id)
        render json: newUserLinkedinNetwork
    end

end
