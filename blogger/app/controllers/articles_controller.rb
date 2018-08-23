class ArticlesController < ApplicationController
  include ArticlesHelper
  def new
    @article = Article.new(article_params)
  end

  def create
    #fail
    #@article = Article.new
    #@article.title = params[:article][:title]
    #@article = Article.new(
    #  title: params[:article][:title],
    #body: params[:article][:body])
    @article = Article.new(params[:article])
    @article.save
    redirect_to article_path(@article)
  end

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to action: "index"
  end
end
