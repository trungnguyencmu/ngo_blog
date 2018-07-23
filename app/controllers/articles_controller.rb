class ArticlesController < ApplicationController
	def index
		@articles = Article.all.where(active: true).search(params[:search]).order(:created_at).page(params[:page])
	end

	def show
		@article = Article.friendly.where(active: true).find(params[:id])
	end

end