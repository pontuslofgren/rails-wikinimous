class ArticlesController < ApplicationController
  before_action :set_articles, except: %i[]
  before_action :set_article, except: %i[index new create]

  def index
    # @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save

    redirect_to articles_path
  end

  def edit
    add_breadcrumb("Home", root_path)
    add_breadcrumb("Article", article_path)
    add_breadcrumb("Edit")
  end

  def update
    @article.update(article_params)

    redirect_to articles_path
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def set_articles
    @articles = Article.all
  end

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end


end
