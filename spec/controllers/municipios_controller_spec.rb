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

RSpec.describe MunicipiosController, :type => :controller do

  let(:estado) { FactoryGirl.create :estado }
  let(:region) { FactoryGirl.create :region }
  let(:valid_attributes) { { nombre: 'Municipio 1', estado_id: estado.id, region_id: region.id } }

  let(:invalid_attributes) {
    { nombre: '' }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MunicipiosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  let(:usuario_logueado) { Usuario.new }

  before(:each) { allow_any_instance_of(ApplicationController).to receive(:usuario_actual).and_return usuario_logueado }

  describe "GET index" do
    it "assigns all municipios as @municipios" do
      municipio = FactoryGirl.create(:municipio)
      get :index, {}, valid_session
      expect(assigns(:municipios)).to eq([municipio])
    end
  end

  describe "GET show" do
    it "assigns the requested municipio as @municipio" do
      municipio = FactoryGirl.create(:municipio)
      get :show, {:id => municipio.to_param}, valid_session
      expect(assigns(:municipio)).to eq(municipio)
    end
  end

  describe "GET new" do
    it "assigns a new municipio as @municipio" do
      get :new, {}, valid_session
      expect(assigns(:municipio)).to be_a_new(Municipio)
    end
  end

  describe "GET edit" do
    it "assigns the requested municipio as @municipio" do
      municipio = FactoryGirl.create(:municipio)
      get :edit, {:id => municipio.to_param}, valid_session
      expect(assigns(:municipio)).to eq(municipio)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Municipio" do
        expect {
          post :create, {:municipio => valid_attributes}, valid_session
        }.to change(Municipio, :count).by(1)
      end

      it "assigns a newly created municipio as @municipio" do
        post :create, {:municipio => valid_attributes}, valid_session
        expect(assigns(:municipio)).to be_a(Municipio)
        expect(assigns(:municipio)).to be_persisted
      end

      it "redirects to the created municipio" do
        post :create, {:municipio => valid_attributes}, valid_session
        expect(response).to redirect_to(Municipio.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved municipio as @municipio" do
        post :create, {:municipio => invalid_attributes}, valid_session
        expect(assigns(:municipio)).to be_a_new(Municipio)
      end

      it "re-renders the 'new' template" do
        post :create, {:municipio => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        { nombre: 'nuevo nombre' }
      }

      it "updates the requested municipio" do
        municipio = FactoryGirl.create(:municipio)
        put :update, {:id => municipio.to_param, :municipio => new_attributes}, valid_session
        municipio.reload
        expect(municipio.nombre).to eq 'nuevo nombre'
      end

      it "assigns the requested municipio as @municipio" do
        municipio = FactoryGirl.create(:municipio)
        put :update, {:id => municipio.to_param, :municipio => valid_attributes}, valid_session
        expect(assigns(:municipio)).to eq(municipio)
      end

      it "redirects to the municipio" do
        municipio = FactoryGirl.create(:municipio)
        put :update, {:id => municipio.to_param, :municipio => valid_attributes}, valid_session
        expect(response).to redirect_to(municipio)
      end
    end

    describe "with invalid params" do
      it "assigns the municipio as @municipio" do
        municipio = FactoryGirl.create(:municipio)
        put :update, {:id => municipio.to_param, :municipio => invalid_attributes}, valid_session
        expect(assigns(:municipio)).to eq(municipio)
      end

      it "re-renders the 'edit' template" do
        municipio = FactoryGirl.create(:municipio)
        put :update, {:id => municipio.to_param, :municipio => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested municipio" do
      municipio = FactoryGirl.create(:municipio)
      expect {
        delete :destroy, {:id => municipio.to_param}, valid_session
      }.to change(Municipio, :count).by(-1)
    end

    it "redirects to the municipios list" do
      municipio = FactoryGirl.create(:municipio)
      delete :destroy, {:id => municipio.to_param}, valid_session
      expect(response).to redirect_to(municipios_url)
    end
  end

end
