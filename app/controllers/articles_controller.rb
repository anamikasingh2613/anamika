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
    redirect_to @article
  else
    render 'new'
  end
end
private
  def article_params
    params.require(:article).permit(:first_name, :last_name, :email,
     :mobile_number,
       :state, :date, :gender, :password,
        :password_confirmation, :category, :remember_me)
end
end