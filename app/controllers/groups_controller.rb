class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  # GET /groups
  # GET /groups.json
  def index
    @groups = Group.all
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
  end

  # GET /groups/new
  def new
    group = Group.new
    ["餃子","たこ焼き","鍋","お好み焼き","パスタ","カレー","丼ぶり","チャーハン","うどん"].each do |name|
      cook = Cook.new
      cook.name = name
      cook.group = group
      cook.good = 0
      cook.save!
    end
    if params[:user_ids].present?
      users = User.find(params[:user_ids])
      users.each do |user|
        user_group = UserGroup.new
        user_group.user = user
        user_group.group = group
        user_group.name = user.name
        user_group.image_url = user.image_url
      end
    end
    @group = group
  end

  # GET /groups/1/edit
  def edit
  end

  # POST /groups
  # POST /groups.json
  def create
    group = Group.new
    ["餃子","たこ焼き","鍋","お好み焼き","パスタ","カレー","丼ぶり","チャーハン","うどん"].each do |name|
      cook = Cook.new
      cook.name = name
      cook.group = group
      cook.good = 0
      cook.save!
    end
    if params[:user_ids].present?
      users = User.find(params[:user_ids])
      users.each do |user|
        user_group = UserGroup.new
        user_group.user = user
        user_group.group = group
        user_group.name = user.name
        user_group.image_url = user.image_url
      end
    end

    @group = group
    @group = Group.new(group_params)

    respond_to do |format|
      if @group.save
        format.html { redirect_to @group, notice: 'Group was successfully created.' }
        format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groups/1
  # PATCH/PUT /groups/1.json
  def update
    respond_to do |format|
      if @group.update(group_params)
        format.html { redirect_to @group, notice: 'Group was successfully updated.' }
        format.json { render :show, status: :ok, location: @group }
      else
        format.html { render :edit }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @group.destroy
    respond_to do |format|
      format.html { redirect_to groups_url, notice: 'Group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_params
      params.require(:group).permit(:name, :date, :location)
    end
end
