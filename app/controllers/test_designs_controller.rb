class TestDesignsController < ApplicationController
  before_action :set_test_design, only: %i[ show edit update destroy ]

  # GET /test_designs or /test_designs.json
  def index
    @test_designs = TestDesign.all
  end

  # GET /test_designs/1 or /test_designs/1.json
  def show
  end

  # GET /test_designs/new
  def new
    @test_design = TestDesign.new
  end

  # GET /test_designs/1/edit
  def edit
  end

  # POST /test_designs or /test_designs.json
  def create
    @test_design = TestDesign.new(test_design_params)

    respond_to do |format|
      if @test_design.save
        format.html { redirect_to @test_design, notice: "Test design was successfully created." }
        format.json { render :show, status: :created, location: @test_design }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @test_design.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_designs/1 or /test_designs/1.json
  def update
    respond_to do |format|
      if @test_design.update(test_design_params)
        format.html { redirect_to @test_design, notice: "Test design was successfully updated." }
        format.json { render :show, status: :ok, location: @test_design }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @test_design.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_designs/1 or /test_designs/1.json
  def destroy
    @test_design.destroy!

    respond_to do |format|
      format.html { redirect_to test_designs_path, status: :see_other, notice: "Test design was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_design
      @test_design = TestDesign.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def test_design_params
      params.expect(test_design: [ :name, :email_address, :description ])
    end
end
