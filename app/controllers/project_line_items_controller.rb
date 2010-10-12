class ProjectLineItemsController < ApplicationController
  # GET /project_line_items
  # GET /project_line_items.xml
  def index
    @project_line_items = ProjectLineItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @project_line_items }
    end
  end

  # GET /project_line_items/1
  # GET /project_line_items/1.xml
  def show
    @project_line_item = ProjectLineItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project_line_item }
    end
  end

  # GET /project_line_items/new
  # GET /project_line_items/new.xml
  def new
    @project_line_item = ProjectLineItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @project_line_item }
    end
  end

  # GET /project_line_items/1/edit
  def edit
    @project_line_item = ProjectLineItem.find(params[:id])
  end

  # POST /project_line_items
  # POST /project_line_items.xml
  def create

  	@project = current_project
  	product = Product.find(params[:product_id])
  	puts "more here" 		# need to get it to +1 to qty if press 'plus' again.
  	@project_line_item = @project.project_line_items.build(:product_id => product, :quantity => 1)
  	
  #	@project_line_item = ProjectLineItem.new(params[:project_line_item])

    respond_to do |format|
      if @project_line_item.save
        format.html { redirect_to(@project_line_item, :notice => 'Project line item was successfully created.') }
        format.xml  { render :xml => @project_line_item, :status => :created, :location => @project_line_item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @project_line_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /project_line_items/1
  # PUT /project_line_items/1.xml
  def update
    @project_line_item = ProjectLineItem.find(params[:id])

    respond_to do |format|
      if @project_line_item.update_attributes(params[:project_line_item])
        format.html { redirect_to(@project_line_item, :notice => 'Project line item was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @project_line_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /project_line_items/1
  # DELETE /project_line_items/1.xml
  def destroy
    @project_line_item = ProjectLineItem.find(params[:id])
    @project_line_item.destroy

    respond_to do |format|
      format.html { redirect_to(project_line_items_url) }
      format.xml  { head :ok }
    end
  end
end
