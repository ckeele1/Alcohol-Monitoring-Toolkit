class ClientEnrollmentsController < ApplicationController
  # GET /client_enrollments
  # GET /client_enrollments.xml
  def index
    @client_enrollments = ClientEnrollment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @client_enrollments }
    end
  end

  # GET /client_enrollments/1
  # GET /client_enrollments/1.xml
  def show
    @client_enrollment = ClientEnrollment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @client_enrollment }
    end
  end

  # GET /client_enrollments/new
  # GET /client_enrollments/new.xml
  def new
    @client_enrollment = ClientEnrollment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @client_enrollment }
    end
  end

  # GET /client_enrollments/1/edit
  def edit
    @client_enrollment = ClientEnrollment.find(params[:id])
  end

  # POST /client_enrollments
  # POST /client_enrollments.xml
  def create
    @client_enrollment = ClientEnrollment.new(params[:client_enrollment])

    respond_to do |format|
      if @client_enrollment.save
        format.html { redirect_to(@client_enrollment, :notice => 'Client enrollment was successfully created.') }
        format.xml  { render :xml => @client_enrollment, :status => :created, :location => @client_enrollment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @client_enrollment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /client_enrollments/1
  # PUT /client_enrollments/1.xml
  def update
    @client_enrollment = ClientEnrollment.find(params[:id])

    respond_to do |format|
      if @client_enrollment.update_attributes(params[:client_enrollment])
        format.html { redirect_to(@client_enrollment, :notice => 'Client enrollment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @client_enrollment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /client_enrollments/1
  # DELETE /client_enrollments/1.xml
  def destroy
    @client_enrollment = ClientEnrollment.find(params[:id])
    @client_enrollment.destroy

    respond_to do |format|
      format.html { redirect_to(client_enrollments_url) }
      format.xml  { head :ok }
    end
  end
end
