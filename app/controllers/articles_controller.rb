class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new  
  end

  def create
    @article = Article.new(article_params)
    if @object.save
      flash[:success] = "Object successfully created"
      redirect_to @article
    else
      flash[:error] = "Something went wrong"
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if article.update(article_params)
      redirect_to article
    else
      render :edit, status: :unprocessable_entity
    end  
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_back(fallback_location: articles_path)
  end

  private
    def article_params
        params.require(:article).permit(:title, :body)
    end
  
end
