class OpinionsController < ApplicationController

  # POST /opinions
  # POST /opinions.json
  def create
    @opinion = Opinion.new(opinion_params)
    respond_to do |format|
      if @opinion.save
        format.html { redirect_to @opinion.thing }
        format.json { render status: :created, json: @opinion }
      else
        format.html { redirect_to @opinion.thing }
        format.json { render status: :bad_request, nothing: true }
      end
    end
  end


  # PUT /opinions/4544
  # PUT /opinions/4544.json
  def update
    @opinion = Opinion.find_by(id: params[:id], user_id: current_user.id, thing_id: opinion_params.delete(:thing_id))

    respond_to do |format|
      if @opinion && @opinion.update(opinion_params)
        format.html { redirect_to @opinion.thing }
        format.json { render :nothing, :status => 204 }
      else
        format.html { redirect_to @opinion.thing }
        format.json { render status: :not_found, nothing: true }
      end
    end
  end

  private

  def opinion_params
    @opinion_params ||= params.require(:opinion).permit(:rating, :comment, :thing_id).merge(user_id: current_user.id)
  end
end