class Api::AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :update, :destroy]

  def everything
    render json: {books: Book.all, author: Author.all}
  end

  def index
    render json: Author.all
  end

  def show
      render json: {author: @author, books: @author.books}
  end

  def create
      @author = Author.new(author_params)
      if(@author.save)
          render json: @author
      else
          render json: @author.errors.full_message, status: 422
      end
  end

  def update
      if(@author.update(author_params))
          render json: @author
      else
          render json: @author.errors.full_message, status: 422
      end
  end

  def destroy
      render json: @author.destroy
  end


  private

  def set_author
    @author = Author.find(params[:id])
  end

  def author_params
    params.require(:author).permit(:name, :age)
  end

end
