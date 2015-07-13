class LoginController < ApplicationController

    def index
        user = User.login(params)
        session[:user] = user
        unless session[:user].nil?
            redirect_to '/bbs'
        end
    end

    def logout
        reset_session
        redirect_to '/'
    end

end
