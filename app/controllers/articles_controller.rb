class ArticlesController < ApplicationController
	def index
		@articles = Article.all.where(active: true)
	end

	def show
		@article = Article.friendly.where(active: true).find(params[:id])
	end

end