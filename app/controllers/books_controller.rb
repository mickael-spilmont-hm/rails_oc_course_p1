class BooksController < ApplicationController
  def index
    @books = Book.page(params[:page])
    @categories = Category.all
  end

  def new
    Book.create title: params[:title], category_id: params[:category_id]
    redirect_to "/"
  end

  def update
    @book = Book.find(params[:id])
    @categories = Category.all

    previewTitle = @book.title
    if @book.update title: params[:title], category_id: params[:category_id]
      redirect_to "/books/#{params[:id]}"
    else
      @book.title = previewTitle
      render "show"
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
