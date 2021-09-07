class GroupsController < ApplicationController
  before_action :set_group, only: %i[show edit update destroy]
  before_action :set_selects, only: %i[new edit create update]

  def index
    @q = Group.ransack(params[:q])
    @groups = @q.result(distinct: true)
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.create(group_params)
    respond_to do |format|
      if @group.save
        format.html {redirect_to @group, notice: "Se re creo el grupo"}
      else
        format.html {render :new}
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @group.update(group_params)
        format.html {redirect_to @group, notice: 'Ahre que lo cambiaste'}
      else
        format.html {render :edit}
      end
    end
  end

  def show
  end

  def destroy
    @group.destroy
    redirect_to root_path, notice: 'Igual era mejor que la G46'
  end
  

  private
  
  def set_group
    @group = Group.find(params[:id])
  end
  
  def set_selects
    @types = Group.group_types.keys.to_a
    @styles = Group.styles.keys.to_a
    @statuses = Group.statuses.keys.to_a
  end

  def group_params
    params.require(:group).permit(:name, :crew, :group_type, :style, :status) 
  end
end
