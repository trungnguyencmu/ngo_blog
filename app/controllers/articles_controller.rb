class ArticlesController < ApplicationController
	def index
		@articles = Article.all.where(active: true).order(:created_at).page(params[:page])
	end

	def show
		@article = Article.friendly.where(active: true).find(params[:id])
	end

end