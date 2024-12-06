class InquiriesController < ApplicationController
  before_action :set_inquiry, only: %i[ show edit update destroy ]

  # GET /inquiries or /inquiries.json
  def index
    @Musician = Musician.find_by(first_name: "Loren", last_name: "Zuko")
    @inquiries = Inquiry.all
  end

  # GET /inquiries/1 or /inquiries/1.json
  def show
    @Musician = Musician.find_by(first_name: "Loren", last_name: "Zuko")
  end

  # GET /inquiries/new
  def new
    @Musician = Musician.find_by(first_name: "Loren", last_name: "Zuko")
    @inquiry = Inquiry.new
  end

  # GET /inquiries/1/edit
  def edit
    @Musician = Musician.find_by(first_name: "Loren", last_name: "Zuko")
  end

  # POST /inquiries or /inquiries.json
  def create
    @inquiry = Inquiry.new(inquiry_params)
    

    respond_to do |format|
      if @inquiry.save
        UserMailer.with(inquiry: @inquiry).inquiry_email.deliver_later
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
