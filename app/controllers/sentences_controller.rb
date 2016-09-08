class SentencesController < ApplicationController
  def index
    @sentences = Sentence.all
  end

  def show
    @story = Story.find(params[:story_id])
    @sentence = Sentence.find(params[:id])
  end

  def new
    @story = Story.find(params[:story_id])
    @sentence = @story.sentences.new
  end

  def create
    @story = Story.find(params[:story_id])
    @sentence = @story.sentences.new(sentence_params)
    if @sentence.save
      flash[:notice] = "Sentence successfully added!"
      redirect_to story_path(@sentence.story)
    else
      render :new
    end
  end

  def edit
    @story = Story.find(params[:story_id])
    @sentence = Sentence.find(params[:id])
  end

  def update
    @story = Story.find(params[:story_id])
    @sentence= Sentence.find(params[:id])
    if @sentence.update(sentence_params)
      flash[:notice] = "Edit Successful!"
      redirect_to story_sentence_path(@story, @sentence)
    else
      render :edit
    end
  end

  def destroy
    @sentence = Sentence.find(params[:id])
    @sentence.destroy
    redirect_to story_path(@sentence.story)
  end

  private
  def sentence_params
    params.require(:sentence).permit(:sentence, :user)
  end

end
