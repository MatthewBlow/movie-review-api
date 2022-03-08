module Api
    module V1
        class ActorsController < ApplicationController
            protect_from_forgery with: :null_session

        def index
            actors = Actor.all

            render json: ActorSerializer.new(actors, options).serialized_json
        end

        def show
            actor = Actor.find_by(slug: params[:slug])

            render json: ActorSerializer.new(actor, options).serialized_json
        end

        def create
            actor = Actor.new(actor_params)

            if actor.save
                render json: ActorSerializer.new(actor).serialized_json
            else
                render json: {error: actor.errors.message}, status: 422
            end
        end

        def update
            actor = Actor.find_by(slug: params[:slug])

            if actor.update(actor_params)
                render json: ActorSerializer.new(actor, options).serialized_json
            else
                render json: {error: actor.errors.message}, status: 422
            end
        end

        def destroy
            actor = Actor.find_by(slug: params[:slug])

            if actor.destroy
                head :no_content
            else
                render json: {error: actor.errors.message}, status: 422
            end

        end

        private

        def actor_params
            params.require(:actor).permit(:name, :image_url, :age, :movie_ids)
        end

        def options
            @options ||= { include: %i[movies] }
        end
      end  
    end
end


