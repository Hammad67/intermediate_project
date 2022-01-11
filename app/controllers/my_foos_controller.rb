class MyFoosController < ApplicationController
  before_action :set_my_foo, only: %i[ show edit update destroy ]

  # GET /my_foos or /my_foos.json
  def index
    @my_foos = MyFoo.all
  end

  # GET /my_foos/1 or /my_foos/1.json
  def show
  end

  # GET /my_foos/new
  def new
    @my_foo = MyFoo.new
  end

  # GET /my_foos/1/edit
  def edit
  end

  # POST /my_foos or /my_foos.json
  def create
    @my_foo = MyFoo.new(my_foo_params)

    respond_to do |format|
      if @my_foo.save
        format.html { redirect_to my_foo_url(@my_foo), notice: "My foo was successfully created." }
        format.json { render :show, status: :created, location: @my_foo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @my_foo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_foos/1 or /my_foos/1.json
  def update
    respond_to do |format|
      if @my_foo.update(my_foo_params)
        format.html { redirect_to my_foo_url(@my_foo), notice: "My foo was successfully updated." }
        format.json { render :show, status: :ok, location: @my_foo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @my_foo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_foos/1 or /my_foos/1.json
  def destroy
    @my_foo.destroy

    respond_to do |format|
      format.html { redirect_to my_foos_url, notice: "My foo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_foo
      @my_foo = MyFoo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def my_foo_params
      params.require(:my_foo).permit(:name)
    end
end
