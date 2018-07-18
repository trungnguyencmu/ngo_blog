# frozen_string_literal: true

module Superuser
  class ArticlesController < Superuser::BaseController
    def index
    	@articles = Article.all
    end

    def new
    	@article = Article.new
    end

    def edit
      @article = Article.find(params[:id])
    end

    def update
      @article = Article.find(params[:id])
      if @article.update_attributes(article_params)
        redirect_to edit_superuser_article_path, notice: "Update successfully"
      else
        render :edit
      end
    end

    def create
    	@article = Article.new(article_params)
    	if @article.save
    		redirect_to superuser_articles_path, notice: "Create successfully"
    	else
    		render :new
    	end
    end

    private

    def article_params
    	params.require(:article).permit(:content,:title, :category_id, :image)
    end

  end
end
