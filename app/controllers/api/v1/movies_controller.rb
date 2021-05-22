class Api::V1::MoviesController < Api::V1::BaseController
    acts_as_token_authentication_handler_for User, except: [ :index, :show ]
    before_action :set_movie, only: [ :show, :create, :update, :destroy]
  
      def index
        if params[:query].present?
          @movies = Movie.filter_by_genre
          render json: @movie
        else
        @movies = policy_scope(Movie)
        end
      end
      
      def show  
      end

      def create
        @movie = Movie.new(movie_params)
        #@movie.user = current_user
        authorize @movie
        if @movie.save
          render :show
        else
          render_error
        end
      end
  
      private
  
      def set_movie
        @movie = Movie.find(params[:id])
        authorize @movie # For Pundit
      end
  
      def movie_params
        params.require(:movie).permit(:title, :rating, :created_at, :genre)
      end
    end