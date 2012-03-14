class WombatsController < ApplicationController
  def index
    respond_to do |format|
      format.html { @wombats = Wombat.all.first(10) }
      format.json {
        render :json => {
          :not_yet => true
        }
      }
    end
  end

  def new
    @wombat = Wombat.new
  end

  def create
    @wombat = Wombat.new(params[:wombat])
    respond_to do |format|
      format.html do
        if @wombat.save
          flash[:notice] = "Successfully created wombat."
          redirect_to root_url
        else
          render :action => 'new'
        end
      end

      format.json do
        if @wombat.save
          render :json => {:success => true}
        else
          render :json => {:success => false}
        end
      end
    end
  end
end