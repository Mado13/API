class Api::V1::BooksController < ApplicationController
  before_action :set_book

  def index
    if params[:query].present?
      @books = Book.search_author(params[:query])
    else
      @books = Book.where(available: true)
    end
  end

  def show
  end

  private

  def set_book
    @book = Book.find_by(id: params[:id])
  end
end
