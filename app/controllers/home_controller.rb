class HomeController < ApplicationController
    def index
        show
    end
    def show
        render 'home/index'
    end
end
