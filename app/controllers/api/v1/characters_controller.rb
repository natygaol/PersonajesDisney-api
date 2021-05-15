class Api::V1::CharactersController < Api::V1::BaseController
    acts_as_token_authentication_handler_for User, except: [ :index, :show ]
    before_action :set_character, only: [ :show, :update ]
  
      def index
        @characters = policy_scope(Character)
      end
      
      def show  
      end

      def update
        if @character.update(character_params)
          render :show
        else
          render_error
        end
      end

      def create
        @character = Character.new(character_params)
        if @character.save
          render :show
        else
          render_error
        end
      end
  
      private
  
      def set_character
        @character = Character.find(params[:id])
        authorize @character # For Pundit
      end
  
      def character_params
        #falta agregar en permit la foto
        params.require(:character).permit(:name, :age, :weight, :story)
      end

      def render_error
        render json: { errors: @character.errors.full_messages },
          status: :unprocessable_entity
      end
    end