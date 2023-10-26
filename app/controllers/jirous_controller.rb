class JirousController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]
    
      def new
        @jirous = Jirou.new
      end
    
      def index
        @jirous = Jirou.all
        @jirous = @jirous.page(params[:page]).per(5)
      end

      def create
        jirou = Jirou.new(jirou_params)
        jirou.user_id = current_user.id
        if jirou.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
      
      def show
        @jirou = Jirou.find(params[:id])
        @comments = @jirou.comments
        @comment = Comment.new
      end
      
      def sindan
      end
      
      def edit
        @jirou = Jirou.find(params[:id])
      end
      
      def update
        jirou = Jirou.find(params[:id])
        if jirou.update(jirou_params)
          redirect_to :action => "show", :id => jirou.id
        else
          redirect_to :action => "new"
        end
      end
      
      def destroy
        jirou = Jirou.find(params[:id])
        jirou.destroy
        redirect_to action: :index
      end
      
      def jirou_params
        params.require(:jirou).permit(:shop,:lat,:lng)
      end
  
      private
      def jirou_params
        params.require(:jirou).permit(:shop, :genre, :address, :about, :image, :lat, :lng, :overall)
      end
end