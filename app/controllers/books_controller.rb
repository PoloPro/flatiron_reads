class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def search
    search_title = params[:book][:title]
    @book = Book.find_by(title: search_title)
    redirect_to @book
  end

  def edit
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book
    else
      redirect_to books_path
    end
  end

  def update
    @book = Book.find(params[:id])

    @book.update(book_params)

    if @book.save
      redirect_to @book
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = "Book deleted."
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :synopsis, :image_url, :author_id, :author_name)
  end

end
