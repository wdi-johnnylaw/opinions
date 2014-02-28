class OpinionsController < ApplicationController
  respond_to :json

  # PUT /opinions/4544.json
  def update
    @opinion = Opinion.find_by(id: params[:id], user_id: current_user.id)

    # @opinion = Opinion.find params[:id]
    # return unless @opinion.user_id == current_user.id
    if @opinion && @opinion.update_attribute(:thumb_direction, opinion_params[:thumb_direction])
      render :nothing, :status => 204
    else
      render status: :not_found, nothing: true
    end
  end

  # POST /opinions.json
  def create
    @opinion = Opinion.new(opinion_params)
    if @opinion.save
      render status: :created, json: @opinion
    else
      render status: :bad_request, nothing: true
    end
  end

  # DELETE /opinions/4544.json
  def destroy
  end

  private

  def opinion_params
    params.require(:opinion).permit(:thing_id, :thumb_direction).merge(user_id: current_user.id)
  end
end