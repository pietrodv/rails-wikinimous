# frozen_string_literal: true

# Document/article exercise
class ArticlesController < ApplicationController
  before_action :fetch_article, only: %i[show edit update destroy]

  def index
    @articles = Article.all
  end

  def show; end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save

    # Redirect to the index page
    redirect_to root_path
  end

  def edit; end

  def update
    @article.update(article_params)
    # Redirect to the task page
    redirect_to @article
  end

  def destroy
    @article.destroy

    # Redirect to the index page
    redirect_to root_path
  end

  private

  def fetch_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
