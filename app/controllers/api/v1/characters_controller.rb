class Api::V1::CharactersController < Api::V1::BaseController
    before_action :set_character, only: [ :show ]
  
      def index
        @characters = policy_scope(Character)
      end
      
      def show  
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
    end