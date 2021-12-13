class UsersController < ApplicationController
    layout 'simple'

    before_action :set_default_country, only: %i[new create edit]

    def index
        @users=User.all
    end

    def new
        @user=User.new
        @profile = @user.build_profile
    end

    def create
        @user=User.new(user_params)
        @profile=@user.build_profile(profile_params)

        if @user.save
            redirect_to users_url
        else
            @cities = City.by_country(@user.country_id)
            render :new
        end
    end

    def edit
        @user=User.find(params[:id])
        @profile=Profile.find(params[:id])

        @cities = City.by_country(@user.country_id)
    end

    def update
        @user=User.find(params[:id])
        @user.assign_attributes(user_params)
        @profile=Profile.find(params[:id])
        @profile.assign_attributes(profile_params)
        @user.update(user_params)
        @profile.update(profile_params)
        redirect_to '/users', :notice => "Your User Has Been Updated"
    end

    def destroy
        @user=User.find(params[:id])
        #@profile=@user.build_profile
        @user.destroy
        redirect_to '/users', :notice => "Your User Has Been Deleted"
    end

    private

    def set_default_country
        @countries=Country.all
        #@city=City.all
        @cities=[]
    end

    def user_params
        params.require(:user).permit(:email, :username, :pin, :terms_of_use, :country_id, :city_id)
    end

    def profile_params
        params.require(:profile).permit(:first_name, :last_name, :phone_number, :birth_date, :about_me)
    end
end