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
    if @article.save
      flash[:success] = "Creado exitosamente"
      redirect_to @article
    else
      flash[:error] = "Algo salio mal"
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

    redirect_to articles_path, status: :see_other
    #redirect_back(fallback_location: articles_path)
  end

  private
    def article_params
        params.require(:article).permit(:title, :body)
    end
  
end
