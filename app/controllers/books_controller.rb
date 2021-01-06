class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end
  
  def new
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_path
  end

  def show
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
