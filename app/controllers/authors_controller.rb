class AuthorsController < ApplicationController

  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
    @author.books.build
    @author.books.build
  end

  def edit
    @author = Author.find(params[:id])
  end

  def create
    @author = Author.new(author_params)

    if @author.save
      redirect_to @author
    else
      render :new
    end
  end

  def update
    @author = Author.find(params[:id])

    @author.update(author_params)

    if @author.save
      redirect_to @author
    else
      render :edit
    end
  end

  def show
    @author = Author.find(params[:id])
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    flash[:notice] = "Author deleted."
    redirect_to authors_path
  end

  private
  def author_params
    params.require(:author).permit(:name, book_attributes: [:title, :synopsis, :image_url])
  end
end
