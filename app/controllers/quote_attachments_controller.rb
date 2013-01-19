class QuoteAttachmentsController < ApplicationController
  # GET /quote_attachments
  # GET /quote_attachments.json
  def index
    @quote_attachments = QuoteAttachment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @quote_attachments }
    end
  end

  # GET /quote_attachments/1
  # GET /quote_attachments/1.json
  def show
    @quote_attachment = QuoteAttachment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @quote_attachment }
    end
  end

  # GET /quote_attachments/new
  # GET /quote_attachments/new.json
  def new
    @quote_attachment = QuoteAttachment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @quote_attachment }
    end
  end

  # GET /quote_attachments/1/edit
  def edit
    @quote_attachment = QuoteAttachment.find(params[:id])
  end

  # POST /quote_attachments
  # POST /quote_attachments.json
  def create
    @quote_attachment = QuoteAttachment.new(params[:quote_attachment])

    respond_to do |format|
      if @quote_attachment.save
        format.html { redirect_to @quote_attachment, notice: 'Quote attachment was successfully created.' }
        format.json { render json: @quote_attachment, status: :created, location: @quote_attachment }
      else
        format.html { render action: "new" }
        format.json { render json: @quote_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /quote_attachments/1
  # PUT /quote_attachments/1.json
  def update
    @quote_attachment = QuoteAttachment.find(params[:id])

    respond_to do |format|
      if @quote_attachment.update_attributes(params[:quote_attachment])
        format.html { redirect_to @quote_attachment, notice: 'Quote attachment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @quote_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quote_attachments/1
  # DELETE /quote_attachments/1.json
  def destroy
    @quote_attachment = QuoteAttachment.find(params[:id])
    @quote_attachment.destroy

    respond_to do |format|
      format.html { redirect_to quote_attachments_url }
      format.json { head :no_content }
    end
  end
end
