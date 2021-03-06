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

RSpec.describe "/referrals", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Referral. As you add validations to Referral, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Referral.create! valid_attributes
      get referrals_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      referral = Referral.create! valid_attributes
      get referral_url(referral)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_referral_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      referral = Referral.create! valid_attributes
      get edit_referral_url(referral)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Referral" do
        expect {
          post referrals_url, params: { referral: valid_attributes }
        }.to change(Referral, :count).by(1)
      end

      it "redirects to the created referral" do
        post referrals_url, params: { referral: valid_attributes }
        expect(response).to redirect_to(referral_url(Referral.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Referral" do
        expect {
          post referrals_url, params: { referral: invalid_attributes }
        }.to change(Referral, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post referrals_url, params: { referral: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested referral" do
        referral = Referral.create! valid_attributes
        patch referral_url(referral), params: { referral: new_attributes }
        referral.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the referral" do
        referral = Referral.create! valid_attributes
        patch referral_url(referral), params: { referral: new_attributes }
        referral.reload
        expect(response).to redirect_to(referral_url(referral))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        referral = Referral.create! valid_attributes
        patch referral_url(referral), params: { referral: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested referral" do
      referral = Referral.create! valid_attributes
      expect {
        delete referral_url(referral)
      }.to change(Referral, :count).by(-1)
    end

    it "redirects to the referrals list" do
      referral = Referral.create! valid_attributes
      delete referral_url(referral)
      expect(response).to redirect_to(referrals_url)
    end
  end
end
