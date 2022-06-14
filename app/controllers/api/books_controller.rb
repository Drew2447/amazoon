class Api::BooksController < ApplicationController
  before_action :set_author, exept: [:all_books]
  before_action :set_book, only: [:show, :update, :destroy]

  def all_books
    render json: Book.all
 
  def index
      render json: @author.books.all
  end

  def show
      render json: @book
  end
 
  def create
      @book = @author.books.new(books_params)
      if(@book.save)
          render json: @book
      else
          render json: @author.errors.full_message, status: 422
      end
  end
 
  def update
      if(@book.update(books_params))
          render json: @book
      else
          render json: @author.errors.full_message, status: 422
      end
  end
 
  def destroy
      render json: @book.destroy
  end

  private
  
  def books_params
    params.require(:book).permit(:title, :genre)
  end

  def set_author
    @author = Author.find(params[:author_id])
  end

  def set_book
      @book = @author.books.find(params[:id])
  end
end
