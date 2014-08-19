require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ScoringScalesController do

  # This should return the minimal set of attributes required to create a valid
  # ScoringScale. As you add validations to ScoringScale, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "name" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ScoringScalesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all scoring_scales as @scoring_scales" do
      scoring_scale = ScoringScale.create! valid_attributes
      get :index, {}, valid_session
      assigns(:scoring_scales).should eq([scoring_scale])
    end
  end

  describe "GET show" do
    it "assigns the requested scoring_scale as @scoring_scale" do
      scoring_scale = ScoringScale.create! valid_attributes
      get :show, {:id => scoring_scale.to_param}, valid_session
      assigns(:scoring_scale).should eq(scoring_scale)
    end
  end

  describe "GET new" do
    it "assigns a new scoring_scale as @scoring_scale" do
      get :new, {}, valid_session
      assigns(:scoring_scale).should be_a_new(ScoringScale)
    end
  end

  describe "GET edit" do
    it "assigns the requested scoring_scale as @scoring_scale" do
      scoring_scale = ScoringScale.create! valid_attributes
      get :edit, {:id => scoring_scale.to_param}, valid_session
      assigns(:scoring_scale).should eq(scoring_scale)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ScoringScale" do
        expect {
          post :create, {:scoring_scale => valid_attributes}, valid_session
        }.to change(ScoringScale, :count).by(1)
      end

      it "assigns a newly created scoring_scale as @scoring_scale" do
        post :create, {:scoring_scale => valid_attributes}, valid_session
        assigns(:scoring_scale).should be_a(ScoringScale)
        assigns(:scoring_scale).should be_persisted
      end

      it "redirects to the created scoring_scale" do
        post :create, {:scoring_scale => valid_attributes}, valid_session
        response.should redirect_to(ScoringScale.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved scoring_scale as @scoring_scale" do
        # Trigger the behavior that occurs when invalid params are submitted
        ScoringScale.any_instance.stub(:save).and_return(false)
        post :create, {:scoring_scale => { "name" => "invalid value" }}, valid_session
        assigns(:scoring_scale).should be_a_new(ScoringScale)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ScoringScale.any_instance.stub(:save).and_return(false)
        post :create, {:scoring_scale => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested scoring_scale" do
        scoring_scale = ScoringScale.create! valid_attributes
        # Assuming there are no other scoring_scales in the database, this
        # specifies that the ScoringScale created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ScoringScale.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => scoring_scale.to_param, :scoring_scale => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested scoring_scale as @scoring_scale" do
        scoring_scale = ScoringScale.create! valid_attributes
        put :update, {:id => scoring_scale.to_param, :scoring_scale => valid_attributes}, valid_session
        assigns(:scoring_scale).should eq(scoring_scale)
      end

      it "redirects to the scoring_scale" do
        scoring_scale = ScoringScale.create! valid_attributes
        put :update, {:id => scoring_scale.to_param, :scoring_scale => valid_attributes}, valid_session
        response.should redirect_to(scoring_scale)
      end
    end

    describe "with invalid params" do
      it "assigns the scoring_scale as @scoring_scale" do
        scoring_scale = ScoringScale.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ScoringScale.any_instance.stub(:save).and_return(false)
        put :update, {:id => scoring_scale.to_param, :scoring_scale => { "name" => "invalid value" }}, valid_session
        assigns(:scoring_scale).should eq(scoring_scale)
      end

      it "re-renders the 'edit' template" do
        scoring_scale = ScoringScale.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ScoringScale.any_instance.stub(:save).and_return(false)
        put :update, {:id => scoring_scale.to_param, :scoring_scale => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested scoring_scale" do
      scoring_scale = ScoringScale.create! valid_attributes
      expect {
        delete :destroy, {:id => scoring_scale.to_param}, valid_session
      }.to change(ScoringScale, :count).by(-1)
    end

    it "redirects to the scoring_scales list" do
      scoring_scale = ScoringScale.create! valid_attributes
      delete :destroy, {:id => scoring_scale.to_param}, valid_session
      response.should redirect_to(scoring_scales_url)
    end
  end

end
