class Api::V1::AssociatesController < ApplicationController

    def index
        user_id = decoded_token[0]['user_id']
        @user = User.find(user_id)
        @associates = @user.linkedin_network.associates
        render json: @associates
    end

    def show
        associate = Associate.find(params[:id])
    end

    def create
        linkedinNetworkId = @user.linkedin_network.id
        associate = Associate.create(
            fullName: params['fullName'],
            firstName: params['firstName'],
            lastName:  params['lastName'],
            company: params['company'],
            title: params['title'],
            profileUrl: params['profileUrl'],
            connectionDegree: params['connectionDegree'],
            email: params['email'],
            linkedinPremium: params['linkedinPremium'],
            message1: params['message1'],
            message2: params['message2'],
            message3: params['message3'],
            message4: params['message4'],
            message5: params['message5'],
            m2sent: params['m2sent'],
            m3sent: params['m3sent'],
            m4sent: params['m4sent'],
            m5sent: params['m5sent'],
            lastMessageSent: params['lastMessageSent'],
            linkedin_network_id: linkedinNetworkId
        )
        render json: associate
    end

    def extractor
        linkedinNetworkId = @user.linkedin_network.id
        associate = Associate.create(
            fullName: params['fullName'],
            firstName: params['firstName'],
            lastName:  params['lastName'],
            company: params['company'],
            title: params['title'],
            profileUrl: params['profileUrl'],
            connectionDegree: params['connectionDegree'],
            email: params['email'],
            linkedinPremium: params['linkedinPremium'],
            message1: params['message1'],
            message2: params['message2'],
            message3: params['message3'],
            message4: params['message4'],
            message5: params['message5'],
            m2sent: params['m2sent'],
            m3sent: params['m3sent'],
            m4sent: params['m4sent'],
            m5sent: params['m5sent'],
            lastMessageSent: params['lastMessageSent'],
            linkedin_network_id: linkedinNetworkId
        )
        render json: associate
    end

    def update
        associate = Associate.find(params[:id])
        associate.update(params.require(:associate).permit(
            company: params['company'],
            title: params['title'],
            connectionDegree: params['connectionDegree'],
            email: params['email'],
            message1: params['message1'],
            message2: params['message2'],
            message3: params['message3'],
            message4: params['message4'],
            message5: params['message5'],
            m2sent: params['m2sent'],
            m3sent: params['m3sent'],
            m4sent: params['m4sent'],
            m5sent: params['m5sent'],
            lastMessageSent: params['lastMessageSent'],
        ))
        render json: associate

    end

    def destroy
        associate = @associates.find(params[:id])
        associate.destroy
    end

private

    def associate_params
        params.require(:associate).permit(
            :fullName,
            :firstName,
            :lastName,
            :company,
            :title,
            :profileUrl,
            :connectionDegree,
            :email,
            :linkedinPremium,
            :message1,
            :message2,
            :message3,
            :message4,
            :message5,
            :m2sent,
            :m3sent,
            :m4sent,
            :m5sent,
            :lastMessageSent,
            :linkedin_network_id
        )
    end

end
