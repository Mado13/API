class Api::V1::BooksController < ApplicationController
  before_action :set_book

  def index
    @books = Book.all
  end

  def show
  end

  private

  def set_book
    @book = Book.find_by(id: params[:id])
  end
end
