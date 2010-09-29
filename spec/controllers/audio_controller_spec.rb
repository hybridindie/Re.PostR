require 'spec_helper'

describe AudioController do

  def mock_audio(stubs={})
    @mock_audio ||= mock_model(Audio, stubs).as_null_object
  end

  describe "GET new" do
    it "assigns a new audio as @audio" do
      Audio.stub(:new) { mock_audio }
      get :new
      assigns(:audio).should be(mock_audio)
    end
  end

  describe "GET edit" do
    it "assigns the requested audio as @audio" do
      Audio.stub(:find).with("37") { mock_audio }
      get :edit, :id => "37"
      assigns(:audio).should be(mock_audio)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created audio as @audio" do
        Audio.stub(:new).with({'these' => 'params'}) { mock_audio(:save => true) }
        post :create, :audio => {'these' => 'params'}
        assigns(:audio).should be(mock_audio)
      end

      it "redirects to the created audio" do
        Audio.stub(:new) { mock_audio(:save => true) }
        post :create, :audio => {}
        response.should redirect_to(audio_url(mock_audio))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved audio as @audio" do
        Audio.stub(:new).with({'these' => 'params'}) { mock_audio(:save => false) }
        post :create, :audio => {'these' => 'params'}
        assigns(:audio).should be(mock_audio)
      end

      it "re-renders the 'new' template" do
        Audio.stub(:new) { mock_audio(:save => false) }
        post :create, :audio => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested audio" do
        Audio.should_receive(:find).with("37") { mock_audio }
        mock_audio.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :audio => {'these' => 'params'}
      end

      it "assigns the requested audio as @audio" do
        Audio.stub(:find) { mock_audio(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:audio).should be(mock_audio)
      end

      it "redirects to the audio" do
        Audio.stub(:find) { mock_audio(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(audio_url(mock_audio))
      end
    end

    describe "with invalid params" do
      it "assigns the audio as @audio" do
        Audio.stub(:find) { mock_audio(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:audio).should be(mock_audio)
      end

      it "re-renders the 'edit' template" do
        Audio.stub(:find) { mock_audio(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

end
