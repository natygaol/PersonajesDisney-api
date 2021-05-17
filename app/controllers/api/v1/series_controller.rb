class Api::V1::SeriesController < Api::V1::BaseController
    acts_as_token_authentication_handler_for User, except: [ :index, :show ]
    before_action :set_serie, only: [ :show, :create, :update, :destroy]
  
      def index
        @series = policy_scope(Serie)
      end
      
      def show  
      end

      def create
        @serie = Serie.new(serie_params)
        #@serie.user = current_user
        authorize @serie
        if @serie.save
          render :show
        else
          render_error
        end
      end
  
      private
  
      def set_serie
        @serie = Serie.find(params[:id])
        authorize @serie # For Pundit
      end
  
      def serie_params
        params.require(:movie).permit(:title, :rating, :created_at, :genre)
      end
    end