class ItemDefinitionsController < ApplicationController
  before_action :set_item_definition, only: [:show, :edit, :update, :destroy]

  # GET /item_definitions
  # GET /item_definitions.json
  def index
    if params[:query]
      @item_definitions = ItemDefinition.connection.execute("SELECT * FROM item_definitions where name like '#{ params[:query] }'")
    else
      @item_definitions = ItemDefinition.all
    end
  end

  # GET /item_definitions/1
  # GET /item_definitions/1.json
  def show
  end

  # GET /item_definitions/new
  def new
    @item_definition = ItemDefinition.new
  end

  # GET /item_definitions/1/edit
  def edit
  end

  # POST /item_definitions
  # POST /item_definitions.json
  def create
    @item_definition = ItemDefinition.new(item_definition_params)

    respond_to do |format|
      if @item_definition.save
        format.html { redirect_to @item_definition, notice: 'Item definition was successfully created.' }
        format.json { render :show, status: :created, location: @item_definition }
      else
        format.html { render :new }
        format.json { render json: @item_definition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_definitions/1
  # PATCH/PUT /item_definitions/1.json
  def update
    respond_to do |format|
      if @item_definition.update(item_definition_params)
        format.html { redirect_to @item_definition, notice: 'Item definition was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_definition }
      else
        format.html { render :edit }
        format.json { render json: @item_definition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_definitions/1
  # DELETE /item_definitions/1.json
  def destroy
    @item_definition.destroy
    respond_to do |format|
      format.html { redirect_to item_definitions_url, notice: 'Item definition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_definition
      @item_definition = ItemDefinition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_definition_params
      params.require(:item_definition).permit(:name, :description, :data_type, :data_parent)
    end
end
