class ServiceProvidersController < ApplicationController
  def index
    @service_providers = ServiceProvider.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @service_providers }
    end
  end

  def show
    @service_provider = ServiceProvider.find_by_subdomain!(request.subdomain)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @service_provider }
    end
  end

  def new
    @service_provider = ServiceProvider.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @service_provider }
    end
  end

  def edit
    @service_provider = ServiceProvider.find(params[:id])
  end

  def create
    @service_provider = ServiceProvider.new(params[:service_provider])

    respond_to do |format|
      if @service_provider.save
        format.html { redirect_to(root_url(:subdomain => @service_provider.subdomain), :notice => 'Service provider was successfully created.') }
        format.xml  { render :xml => @service_provider, :status => :created, :location => @service_provider }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @service_provider.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @service_provider = ServiceProvider.find(params[:id])

    respond_to do |format|
      if @service_provider.update_attributes(params[:service_provider])
        format.html { redirect_to(root_url(:subdomain => @service_provider.subdomain), :notice => 'Service provider was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @service_provider.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @service_provider = ServiceProvider.find(params[:id])
    @service_provider.destroy

    respond_to do |format|
      format.html { redirect_to(root_url(:subdomain => false)) }
      format.xml  { head :ok }
    end
  end
end
