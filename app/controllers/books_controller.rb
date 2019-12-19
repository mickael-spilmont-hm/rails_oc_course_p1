class BooksController < ApplicationController
  def index
    @books = Book.all
    @categories = Category.all
  end

  def new
    Book.create title: params[:title], category_id: params[:category_id]
    redirect_to "/"
  end

  def update
    @book = Book.find(params[:id])
    @categories = Category.all
    if @book.update title: params[:title], category_id:[:category_id]
      redirect_to "/#{@id}"
    else
      render 'show'
    end
  end

  def delete
    Book.find(params[:id]).destroy
    redirect_to "/"
  end

  def show
    @book = Book.find(params[:id])
    @categories = Category.all
  end
end
