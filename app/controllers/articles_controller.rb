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
        @article = Article.new(article_params) #データを保存する場所を用意し、データを入れる
        if @article.save  # データを保存する
            redirect_to article_path(@article)  # 保存したらそのページに飛ぶ
        else
            render :new, status: :unprocessable_entity # new.html.erb を表示（model: @articleにはデータが一時的に保持された@articleが使われるため、データが入ったままのページが表示される）
        end
    end

    private
    def article_params
        params.require(:article).permit(:title, :content)
    end
end