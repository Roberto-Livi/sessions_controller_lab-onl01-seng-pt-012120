class SessionsController < ApplicationController

    def new
    end

    def create
        if params_name
            session[:name] = params_name
            redirect_to "/"
        else
            redirect_to "/login"
        end
    end

    def destroy
        session.delete :name
        redirect_to "/login"
    end

end