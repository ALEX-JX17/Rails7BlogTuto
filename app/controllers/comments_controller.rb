class CommentsController < ApplicationController
    before_action :set_article

    def create
        @comment = @article.comments.create(comment_params)
        redirect_to article_path(@article)
    end

    def destroy
        @comment = @article.comments.find(params[:id])
        @comment.destroy
        puts "si entro al controlador y destruyo el cometario"
        redirect_to article_path(@article), status: 303
    end

    private
        def set_article
            @article = Article.find(params[:article_id])
        end

        def comment_params
            params.require(:comment).permit(:commenter, :body, :status)
        end
end
