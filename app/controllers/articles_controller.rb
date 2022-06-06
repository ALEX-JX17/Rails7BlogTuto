class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new  
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = "Successfuly created"
      redirect_to @article
    else
      flash[:error] = "Something was wrong"
      render :new, status: :unprocessable_entity
    end
  end

  def edit
     end

  def update
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end  
  end

  def destroy
    @article.destroy 
    redirect_to articles_path, status: :see_other
    #redirect_back(fallback_location: articles_path)
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
        params.require(:article).permit(:title, :body, :status)
    end
      
end
