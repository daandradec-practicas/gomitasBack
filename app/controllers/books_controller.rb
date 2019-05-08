class BooksController < ApplicationController
    

    # GET
    def index
        id = params[:author_id]
        author = Author.find(id)
        books = author.books
        render json:books, status:200
    end
    
    # POST
    def create
        author = Author.new(params_author)
        if author.save
            render json: author, status:201
        else
            render json: author.errors, status: :unprocessable_entity
        end
    end
    
    # GET
    def show
        id = params[:id]
        author = Author.find(id)
        render json: author, status:200
    end
    
    # PUT, PATCH
    def update
        id = params[:id]
        author = Author.find(id)
        if author.update(params_author)
            render json: author, status: :updated_entity
        else
            render json: author.errors, status: :unprocessable_entity
        end
    end
    
    # DELETE
    def destroy
    end
    
    def params_author
        params.require(:author).permit(:name, :age)
    end


end
