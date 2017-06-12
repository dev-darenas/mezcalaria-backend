require 'rails_helper'

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

RSpec.describe TipoMezcalesController, :type => :controller do

  let(:valid_attributes) { FactoryGirl.attributes_for(:tipo_mezcal) }

  let(:invalid_attributes) {
    { nombre: '' }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TipoMezcalesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  let(:usuario_logueado) { Usuario.new }

  before(:each) { allow_any_instance_of(ApplicationController).to receive(:usuario_actual).and_return usuario_logueado }

  describe "GET index" do
    it "assigns all tipo_mezcales as @tipo_mezcales" do
      tipo_mezcal = FactoryGirl.create(:tipo_mezcal)
      get :index, {}, valid_session
      expect(assigns(:tipo_mezcales)).to eq([tipo_mezcal])
    end
  end

  describe "GET show" do
    it "assigns the requested tipo_mezcal as @tipo_mezcal" do
      tipo_mezcal = FactoryGirl.create(:tipo_mezcal)
      get :show, {:id => tipo_mezcal.to_param}, valid_session
      expect(assigns(:tipo_mezcal)).to eq(tipo_mezcal)
    end
  end

  describe "GET new" do
    it "assigns a new tipo_mezcal as @tipo_mezcal" do
      get :new, {}, valid_session
      expect(assigns(:tipo_mezcal)).to be_a_new(TipoMezcal)
    end
  end

  describe "GET edit" do
    it "assigns the requested tipo_mezcal as @tipo_mezcal" do
      tipo_mezcal = FactoryGirl.create(:tipo_mezcal)
      get :edit, {:id => tipo_mezcal.to_param}, valid_session
      expect(assigns(:tipo_mezcal)).to eq(tipo_mezcal)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new TipoMezcal" do
        expect {
          post :create, {:tipo_mezcal => valid_attributes}, valid_session
        }.to change(TipoMezcal, :count).by(1)
      end

      it "assigns a newly created tipo_mezcal as @tipo_mezcal" do
        post :create, {:tipo_mezcal => valid_attributes}, valid_session
        expect(assigns(:tipo_mezcal)).to be_a(TipoMezcal)
        expect(assigns(:tipo_mezcal)).to be_persisted
      end

      it "redirects to the created tipo_mezcal" do
        post :create, {:tipo_mezcal => valid_attributes}, valid_session
        expect(response).to redirect_to(TipoMezcal.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved tipo_mezcal as @tipo_mezcal" do
        post :create, {:tipo_mezcal => invalid_attributes}, valid_session
        expect(assigns(:tipo_mezcal)).to be_a_new(TipoMezcal)
      end

      it "re-renders the 'new' template" do
        post :create, {:tipo_mezcal => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        { nombre: 'Nuevo nombre' }
      }

      it "updates the requested tipo_mezcal" do
        tipo_mezcal = FactoryGirl.create(:tipo_mezcal)
        put :update, {:id => tipo_mezcal.to_param, :tipo_mezcal => new_attributes}, valid_session
        tipo_mezcal.reload
        expect(tipo_mezcal.nombre).to eq 'Nuevo nombre'
      end

      it "assigns the requested tipo_mezcal as @tipo_mezcal" do
        tipo_mezcal = FactoryGirl.create(:tipo_mezcal)
        put :update, {:id => tipo_mezcal.to_param, :tipo_mezcal => valid_attributes}, valid_session
        expect(assigns(:tipo_mezcal)).to eq(tipo_mezcal)
      end

      it "redirects to the tipo_mezcal" do
        tipo_mezcal = FactoryGirl.create(:tipo_mezcal)
        put :update, {:id => tipo_mezcal.to_param, :tipo_mezcal => valid_attributes}, valid_session
        expect(response).to redirect_to(tipo_mezcal)
      end
    end

    describe "with invalid params" do
      it "assigns the tipo_mezcal as @tipo_mezcal" do
        tipo_mezcal = FactoryGirl.create(:tipo_mezcal)
        put :update, {:id => tipo_mezcal.to_param, :tipo_mezcal => invalid_attributes}, valid_session
        expect(assigns(:tipo_mezcal)).to eq(tipo_mezcal)
      end

      it "re-renders the 'edit' template" do
        tipo_mezcal = FactoryGirl.create(:tipo_mezcal)
        put :update, {:id => tipo_mezcal.to_param, :tipo_mezcal => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested tipo_mezcal" do
      tipo_mezcal = FactoryGirl.create(:tipo_mezcal)
      expect {
        delete :destroy, {:id => tipo_mezcal.to_param}, valid_session
      }.to change(TipoMezcal, :count).by(-1)
    end

    it "redirects to the tipo_mezcales list" do
      tipo_mezcal = FactoryGirl.create(:tipo_mezcal)
      delete :destroy, {:id => tipo_mezcal.to_param}, valid_session
      expect(response).to redirect_to(tipo_mezcales_url)
    end
  end

end
