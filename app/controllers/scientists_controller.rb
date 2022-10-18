class ScientistsController < ApplicationController
# rescue_from ActiveRecord::RecordNotFound
    


    #/scientists index
    def index
        scientist = Scientist.all
        render json: scientist
    end

    #/scientists/:id show
    def show
        scientist = find_params
         if scientist
            render json: scientist
         end
    end

    def create
        scientist = Scientist.create(scientist_params)
        render json: scientist
        #error goes here
    end

    def update
        










    private 

    def find_params
        Scientist.find(params[:id])
    end

    def scientist_params
        params.permit(:name, :field_of_study, :avatar)
    end


end
