class RemixesController < ApplicationController

  before_filter :login_required, :except => [:index, :show]

  def index
    @remixes = Remix.all

    respond_to do |format|
      format.html
      #format.xml  { render :xml => @remixes }
    end
  end

  def show
    @remix = Remix.find(params[:id])
  end

  def new
    @remix = Remix.new
  end

  def edit
    # add redirect to soundcloud edit page...
  end

  def create
    
    puts params
    
    render :text => "testing"
    
=begin    
    @remix = Remix.new(params[:remix])

    if @remix.save
      flash[:notice] = 'Remix was successfully created.'
      redirect_to(@remix)
    else
      render :action => "new"
    end
=end    

  end

end
