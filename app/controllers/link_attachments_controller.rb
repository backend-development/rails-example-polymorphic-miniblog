class LinkAttachmentsController < ApplicationController
  # GET /link_attachments
  # GET /link_attachments.json
  def index
    @link_attachments = LinkAttachment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @link_attachments }
    end
  end

  # GET /link_attachments/1
  # GET /link_attachments/1.json
  def show
    @link_attachment = LinkAttachment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @link_attachment }
    end
  end

  # GET /link_attachments/new
  # GET /link_attachments/new.json
  def new
    @link_attachment = LinkAttachment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @link_attachment }
    end
  end

  # GET /link_attachments/1/edit
  def edit
    @link_attachment = LinkAttachment.find(params[:id])
  end

  # POST /link_attachments
  # POST /link_attachments.json
  def create
    @link_attachment = LinkAttachment.new(params[:link_attachment])

    respond_to do |format|
      if @link_attachment.save
        format.html { redirect_to @link_attachment, notice: 'Link attachment was successfully created.' }
        format.json { render json: @link_attachment, status: :created, location: @link_attachment }
      else
        format.html { render action: "new" }
        format.json { render json: @link_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /link_attachments/1
  # PUT /link_attachments/1.json
  def update
    @link_attachment = LinkAttachment.find(params[:id])

    respond_to do |format|
      if @link_attachment.update_attributes(params[:link_attachment])
        format.html { redirect_to @link_attachment, notice: 'Link attachment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @link_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /link_attachments/1
  # DELETE /link_attachments/1.json
  def destroy
    @link_attachment = LinkAttachment.find(params[:id])
    @link_attachment.destroy

    respond_to do |format|
      format.html { redirect_to link_attachments_url }
      format.json { head :no_content }
    end
  end
end
