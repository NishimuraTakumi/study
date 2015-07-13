class BbsController < ApplicationController
    def index

        if session[:user].blank?
            redirect_to '/'
        end

        if params[:send].present?
            BBS.create(
                :writer => session[:user]["id"],
                :content => params[:send],
            )
        end
        
        @bbs = BBS.all
    end
end
