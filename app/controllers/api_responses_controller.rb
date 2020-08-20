class ApiResponsesController < ApplicationController
  before_action :set_api_response, only: [:show, :edit, :update, :destroy]

  # GET /api_responses
  # GET /api_responses.json
  def index
    @api_responses = ApiResponse.all
  end

  # GET /api_responses/1
  # GET /api_responses/1.json
  def show
    respond_to do |format|
      format.html { }
      format.json { render status: :ok, json: @api_response.json }
    end
  end

  # GET /api_responses/new
  def new
    @api_response = ApiResponse.new
  end

  # GET /api_responses/1/edit
  def edit
  end

  # POST /api_responses
  # POST /api_responses.json
  def create
    @api_response = ApiResponse.new(api_response_params)

    respond_to do |format|
      if @api_response.save
        format.html { redirect_to @api_response, notice: 'Api response was successfully created.' }
        format.json { render :show, status: :created, location: @api_response }
      else
        format.html { render :new }
        format.json { render json: @api_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api_responses/1
  # PATCH/PUT /api_responses/1.json
  def update
    respond_to do |format|
      if @api_response.update(api_response_params)
        format.html { redirect_to @api_response, notice: 'Api response was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_response }
      else
        format.html { render :edit }
        format.json { render json: @api_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api_responses/1
  # DELETE /api_responses/1.json
  def destroy
    @api_response.destroy
    respond_to do |format|
      format.html { redirect_to api_responses_url, notice: 'Api response was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_response
      @api_response = ApiResponse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_response_params
      params.require(:api_response).permit(:json)
    end
end
