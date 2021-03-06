require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/poin_events", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # PoinEvent. As you add validations to PoinEvent, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      PoinEvent.create! valid_attributes
      get poin_events_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      poin_event = PoinEvent.create! valid_attributes
      get poin_event_url(poin_event)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_poin_event_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      poin_event = PoinEvent.create! valid_attributes
      get edit_poin_event_url(poin_event)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new PoinEvent" do
        expect {
          post poin_events_url, params: { poin_event: valid_attributes }
        }.to change(PoinEvent, :count).by(1)
      end

      it "redirects to the created poin_event" do
        post poin_events_url, params: { poin_event: valid_attributes }
        expect(response).to redirect_to(poin_event_url(PoinEvent.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new PoinEvent" do
        expect {
          post poin_events_url, params: { poin_event: invalid_attributes }
        }.to change(PoinEvent, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post poin_events_url, params: { poin_event: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested poin_event" do
        poin_event = PoinEvent.create! valid_attributes
        patch poin_event_url(poin_event), params: { poin_event: new_attributes }
        poin_event.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the poin_event" do
        poin_event = PoinEvent.create! valid_attributes
        patch poin_event_url(poin_event), params: { poin_event: new_attributes }
        poin_event.reload
        expect(response).to redirect_to(poin_event_url(poin_event))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        poin_event = PoinEvent.create! valid_attributes
        patch poin_event_url(poin_event), params: { poin_event: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested poin_event" do
      poin_event = PoinEvent.create! valid_attributes
      expect {
        delete poin_event_url(poin_event)
      }.to change(PoinEvent, :count).by(-1)
    end

    it "redirects to the poin_events list" do
      poin_event = PoinEvent.create! valid_attributes
      delete poin_event_url(poin_event)
      expect(response).to redirect_to(poin_events_url)
    end
  end
end
