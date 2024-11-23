class InquiriesController < ApplicationController
  before_action :set_inquiry, only: %i[ show edit update destroy ]

  # GET /inquiries or /inquiries.json
  def index
    @inquiries = Inquiry.all
  end

  # GET /inquiries/1 or /inquiries/1.json
  def show
  end

  # GET /inquiries/new
  def new
    @inquiry = Inquiry.new
  end

  # GET /inquiries/1/edit
  def edit
  end

  # POST /inquiries or /inquiries.json
  def create
    # load in Loren Zuko as the default musician for now
    @Musician = Musician.find_by(first_name: "Loren", last_name: "Zuko")
    #set inquiry_params so that the musician_id is set to Loren Zuko's id for every inquiry
    inquiry_params[:musician_id] = @Musician.id
    @inquiry = Inquiry.new(inquiry_params)

    respond_to do |format|
      if @inquiry.save
        format.html { redirect_to @inquiry, notice: "Inquiry was successfully created." }
        format.json { render :show, status: :created, location: @inquiry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @inquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inquiries/1 or /inquiries/1.json
  def update
    respond_to do |format|
      if @inquiry.update(inquiry_params)
        format.html { redirect_to @inquiry, notice: "Inquiry was successfully updated." }
        format.json { render :show, status: :ok, location: @inquiry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inquiries/1 or /inquiries/1.json
  def destroy
    @inquiry.destroy!

    respond_to do |format|
      format.html { redirect_to inquiries_path, status: :see_other, notice: "Inquiry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inquiry
      @inquiry = Inquiry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inquiry_params
      params.require(:inquiry).permit(:host_first_name, :host_last_name, :host_email, :host_phone_number, :event_name, :event_location, :event_date, :start_time, :duration, :musician_id)
    end
end
