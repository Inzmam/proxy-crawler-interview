class AmazonPagesController < ApplicationController

  def index
    @amazon_pages = AmazonPage.all
  end

  def new
    @amazon_page = AmazonPage.new
  end

  def create
    @amazon_page = AmazonPage.new(set_amazon_page_params)

    respond_to do |format|

      if @amazon_page.save
        format.html { redirect_to(@amazon_page, :notice => 'URL was successfully created.') }
        format.json { render :json => @amazon_page, :status => :created, :location => @amazon_page }
      else
        format.html { render :action => "new" }
        format.json { render :json => @amazon_page.errors, :status => :unprocessable_entity }
      end

    end
  end

  def show
    @amazon_page = AmazonPage.find(params[:id])
  end

  private

  def set_amazon_page_params
    params.require(:amazon_page).permit(:url)
  end

end
