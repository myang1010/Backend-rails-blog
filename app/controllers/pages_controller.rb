class PagesController < ApplicationController
    before_action :set_page, only: [:show, :edit, :update, :destroy]
    def index
        @pages = Page.all
    end  
    
    def show
        # @page = Page.find(params[:id]) # page in singular form, because this is to show one signle page
        # render text: @page.title #Rails only renders one thing per controller action
        # set_page 
            # this was called by before_action method, so we don't need to call this method explicitly anymore.
    end 
    
    def new
        @page = Page.new
        #stores a new Page object with blank attributes in the @page instance variable, 
        #for rendering in the view's form.
    end    

    def create
        # page_params = params.require(:page).permit(:body, :title, :slug)
            # this line of code has been replaced by page_params method
        @page = Page.new(page_params)
        @page.save
        redirect_to @page
    end    

    def edit
        # @page = Page.find(params[:id]) #is replace by
        # set_page # is replace by before_action method 
    end    

    def update
        # @page = Page.find(params[:id])
        # set_page
        # page_params = params.require(:page).permit(:body, :title, :slug)
        @page.update(page_params)
        redirect_to @page
    end   
    
    def destroy
        # @page = Page.find(params[:id]) 
        # set_page 
        @page.destroy
        redirect_to pages_path
    end 

    private
        def page_params
            params.require(:page).permit(:body, :title, :slug)
        end    

        def set_page
            @page = Page.find(params[:id])
        end    
end
