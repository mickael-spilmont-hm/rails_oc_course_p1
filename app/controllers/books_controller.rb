class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    Book.create title: params[:title]
    redirect_to "/"
  end

  def update
    Book.find(params[:id]).update title: params[:title]
    redirect_to "/#{@id}"
  end

  def delete
    Book.find(params[:id]).destroy
    redirect_to "/"
  end

  def show
    @book = Book.find(params[:id])
  end
end
