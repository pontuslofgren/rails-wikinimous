class ArticlesController < ApplicationController
  before_action :set_articles, except: %i[]
  before_action :set_article, except: %i[index]

  def index
    # @articles = Article.all
  end

  # def show
  # end

  private

  def set_articles
    @articles = Article.all
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
