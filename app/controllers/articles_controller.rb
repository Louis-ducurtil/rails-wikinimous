# No Nachos
class ArticlesController < ApplicationController
  class ArticlesController < ApplicationController
    def index
      @articles = Article.all
    end

    def show
      @articles = Article.find(params[:id]) # can be url or input in a form
    end

    def new
      @article = Article.new # for the form, this is a post form so it will push it to articles
    end

    def create
      @article = Article.new(articles_params) # params:[article] is replaces by articles_params
      @article.save
      redirect_to articles_path
    end

    def edit
      @article = Article.find(params[:id])
    end

    def update
      @article = Article.find(params[:id])
      @article.update(articles_params)
      redirect_to article_path
    end

    def destroy
      @article = Article.find(params[:id])
      @article.destroy
      redirect_to articles_path, status: :see_other
    end

    private

    def articles_params
      params.require(:article).permit(:title, :content)
    end
  end
end
