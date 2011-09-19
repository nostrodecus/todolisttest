class TodolistsController < ApplicationController
  # GET /todolists
  # GET /todolists.xml
  before_filter :login_required

  def index
    @todolists = current_user.todolists

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @todolists }
    end
  end

  # GET /todolists/1
  # GET /todolists/1.xml
  def show
    @todolist = current_user.todolists.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @todolist }
    end
  end

  # GET /todolists/new
  # GET /todolists/new.xml
  def new
    @todolist = Todolist.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @todolist }
    end
  end

  # GET /todolists/1/edit
  def edit
    @todolist = current_user.todolists.find(params[:id])
  end

  # POST /todolists
  # POST /todolists.xml
  def create
    @todolist = current_user.todolists.create(params[:todolist])

    respond_to do |format|
      if @todolist.save
        format.html { redirect_to(@todolist, :notice => 'Todolist was successfully created.') }
        format.xml  { render :xml => @todolist, :status => :created, :location => @todolist }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @todolist.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /todolists/1
  # PUT /todolists/1.xml
  def update
    @todolist = current_user.todolists.find(params[:id])

    respond_to do |format|
      if @todolist.update_attributes(params[:todolist])
        format.html { redirect_to(@todolist, :notice => 'Todolist was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @todolist.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /todolists/1
  # DELETE /todolists/1.xml
  def destroy
    @todolist = current_user.todolists.find(params[:id])
    @todolist.destroy

    respond_to do |format|
      format.html { redirect_to(todolists_url) }
      format.xml  { head :ok }
    end
  end
end
