# app/controllers/api/v1/stories_controller.rb
class Api::V1::StoriesController < Api::V1::BaseController
  before_action :set_story, only: %i[show update]

  def index
    @stories = Story.all
  end

  def show; end

  def update
    if @story.update(story_params)
      render :show
    else
      render_error
    end
  end

  private

  def set_story
    @story = Story.find(params[:id])
  end

  def story_params
    params.require(:story).permit(:title, :text)
  end

  def render_error
    render json: { errors: @story.errors.full_messages },
      status: :unprocessable_entity
  end
end
