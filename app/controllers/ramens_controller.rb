class RamensController < ApplicationController
    def new
        @ramens = Raman.new
      end
    
      def index
        @ramens = Raman.all
      end
      
      def show
      end

      def create
        ramen = Raman.new(ramen_params)
        if raman.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
    
      private
      def raman_params
        params.require(:ramen).permit(:shop, :genre, :address, :about)
      end
end
