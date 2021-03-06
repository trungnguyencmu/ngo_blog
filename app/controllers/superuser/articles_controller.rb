# frozen_string_literal: true

module Superuser
  class ArticlesController < Superuser::BaseController
    def index
      @articles = Article.all.page params[:page]
    end

    def new
      @article = Article.new
    end

    def edit
      @article = Article.find(id)
    end

    def active
      @article = Article.find(params[:article_id])
      @article.update_attributes(active: !@article.active)
      respond_to do |format|
        format.js
        format.html { redirect_to root_path}
      end
    end

    def update
      @article = Article.find(id)
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

    def destroy
      @article = Article.find id
      @article.destroy
      flash[:notice] = 'Article has been deleted successfully.'
      redirect_to superuser_articles_path
    end

    private

    def id
      params.require(:id)
    end

    def article_params
      params.require(:article).permit(:content,:title, :category_id, :image, :description)
    end

  end
end
