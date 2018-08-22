class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def create
    #fail
    @article = Article.new
    @article.title = params[:article][:title]
    @article.save
  end

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end
end
