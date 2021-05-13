class Api::V1::MoviesController < Api::V1::BaseController
    before_action :set_movie, only: [ :show, :create, :update, :delete]
  
      def index
        @movies = policy_scope(Movie)
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