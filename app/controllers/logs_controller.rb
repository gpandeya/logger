class LogsController < ApplicationController

    def index
        data= Log.all
        json_data = data.to_json
        response.body = json_data
        render :json => json_data
    end
    
    def create
        p params
        
        Log.create!(params[:log].permit(:uid,:email,:role,:controller,:action,:params,:datetime))
        
        head :ok
    end
    
    
end