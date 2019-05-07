class AuthorsController < ApplicationController
    def index
        render json: Author.all
    end
    def create
        author = Author.new(params_author)
        if author.save
            render json: author, status:201
        else
            render json: author.errors, status: unprocessable_entity
        end
    end
    
    def params_author
        params.require(:author).permit(:name)
    end
end
