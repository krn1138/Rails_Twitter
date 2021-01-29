class WordsController < ApplicationController
  before_action :set_word, only: [:show, :edit, :update, :destroy]
  def index
    @words = Word.all
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_params)
    if params[:back]
      render :new
    else
    if @word.save
      redirect_to words_path, notice: "tweetしました！"
    else
      render :new
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    if @word.update(word_params)
      redirect_to words_path, notice: "tweetを編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @word.destroy
    redirect_to words_path, notice:"tweetを削除しました！"
  end

  def confirm
    @word = Word.new(word_params)
    render :new if @word.invalid?
  end

  private
  def word_params
    params.require(:word).permit(:content)
  end

  def set_word
    @word = Word.find(params[:id])
  end

end
