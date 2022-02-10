class Api::V1::BooksController < ApplicationController
  def index
    @books = Book.all
    render json: @books.to_json(only: [:title, :publishdate, :available, :rating ],
      :include => {
        :author => {only: [:name, :deceased]}
      })
  end

  def show
    @book = Book.find_by(id: params[:id])
    if @book
      render json: @book, status: 200
    else
      render json: "Book not found"
    end
  end
end
