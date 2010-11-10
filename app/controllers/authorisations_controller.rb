class AuthorisationsController < ApplicationController
  # GET /authorisations
  # GET /authorisations.xml
  def index
    @authorisations = Authorisation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @authorisations }
    end
  end

  # GET /authorisations/1
  # GET /authorisations/1.xml
  def show
    @authorisation = Authorisation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @authorisation }
    end
  end

  # GET /authorisations/new
  # GET /authorisations/new.xml
  def new
    @authorisation = Authorisation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @authorisation }
    end
  end

  # GET /authorisations/1/edit
  def edit
    @authorisation = Authorisation.find(params[:id])
  end

  # POST /authorisations
  # POST /authorisations.xml
  def create
    @authorisation = Authorisation.new(params[:authorisation])

    respond_to do |format|
      if @authorisation.save
        format.html { redirect_to(@authorisation, :notice => 'Authorisation was successfully created.') }
        format.xml  { render :xml => @authorisation, :status => :created, :location => @authorisation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @authorisation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /authorisations/1
  # PUT /authorisations/1.xml
  def update
    @authorisation = Authorisation.find(params[:id])

    respond_to do |format|
      if @authorisation.update_attributes(params[:authorisation])
        format.html { redirect_to(@authorisation, :notice => 'Authorisation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @authorisation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /authorisations/1
  # DELETE /authorisations/1.xml
  def destroy
    @authorisation = Authorisation.find(params[:id])
    @authorisation.destroy

    respond_to do |format|
      format.html { redirect_to(authorisations_url) }
      format.xml  { head :ok }
    end
  end
end
