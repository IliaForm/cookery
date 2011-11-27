class DishesController < ApplicationController
  # GET /dishes
  # GET /dishes.xml
  def index
    @dishes = Dish.presents

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dishes }
    end
  end

  def recipe
  	@dish = Dish.find(params[:id])

   #render 'recipe'
  end

  # GET /dishes/1
  # GET /dishes/1.xml
  def show
    @dish = Dish.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dish }
    end
  end

  # GET /dishes/new
  # GET /dishes/new.xml
  def new
    @dish = Dish.new
    @categories = Category.all

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dish }
    end
  end

  # GET /dishes/1/edit
  def edit
  	@categories = Category.all
    @dish = Dish.find(params[:id])
  end

  # POST /dishes
  # POST /dishes.xml
  def create
    @dish = Dish.new(params[:dish])

    respond_to do |format|
      if @dish.save
        format.html { redirect_to(dishes_path, :notice => 'Dish was successfully created.') }
        format.xml  { render :xml => @dish, :status => :created, :location => dishes_path }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dish.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dishes/1
  # PUT /dishes/1.xml
  def update
    @dish = Dish.find(params[:id])

    respond_to do |format|
      if @dish.update_attributes(params[:dish])
        format.html { redirect_to(dishes_path, :notice => 'Dish was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dish.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dishes/1
  # DELETE /dishes/1.xml
  def destroy
    @dish = Dish.find(params[:id])
    @dish.deleted = true
    @dish.save!

    respond_to do |format|
      format.html { redirect_to(dishes_url) }
      format.xml  { head :ok }
      format.js { render :partial => "ajax", :collections => @dish}
    end
  end
end
