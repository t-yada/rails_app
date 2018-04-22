class EcsiteController < ApplicationController
  def index
    @data = Content.all.paginate(:page => params[:page], :per_page => 2)
  end

  def show
#    @params = 1
#    @data = Content.find_by_sql("select title, contenttxt  from contents WHERE id = #{params}")
    @params = params[:id]
    @data = Content.find_by_sql("SELECT * FROM contents WHERE id = #{@params}")
  end

end
