class AcademicModulesController < ApplicationController
  # GET /academic_modules
  # GET /academic_modules.xml
  def index
    @academic_modules = AcademicModule.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @academic_modules }
    end
  end

  # GET /academic_modules/1
  # GET /academic_modules/1.xml
  def show
    @academic_module = AcademicModule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @academic_module }
    end
  end

  # GET /academic_modules/new
  # GET /academic_modules/new.xml
  def new
    @academic_module = AcademicModule.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @academic_module }
    end
  end

  # GET /academic_modules/1/edit
  def edit
    @academic_module = AcademicModule.find(params[:id])
  end

  # POST /academic_modules
  # POST /academic_modules.xml
  def create
    @academic_module = AcademicModule.new(params[:academic_module])

    respond_to do |format|
      if @academic_module.save
        format.html { redirect_to(@academic_module, :notice => 'Academic module was successfully created.') }
        format.xml  { render :xml => @academic_module, :status => :created, :location => @academic_module }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @academic_module.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /academic_modules/1
  # PUT /academic_modules/1.xml
  def update
    @academic_module = AcademicModule.find(params[:id])

    respond_to do |format|
      if @academic_module.update_attributes(params[:academic_module])
        format.html { redirect_to(@academic_module, :notice => 'Academic module was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @academic_module.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /academic_modules/1
  # DELETE /academic_modules/1.xml
  def destroy
    @academic_module = AcademicModule.find(params[:id])
    @academic_module.destroy

    respond_to do |format|
      format.html { redirect_to(academic_modules_url) }
      format.xml  { head :ok }
    end
  end
end
