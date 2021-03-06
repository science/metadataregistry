describe API::V1::Versions do
  let!(:envelope) { create(:envelope, envelope_version: '0.9.0') }

  context 'GET /api/:community/envelopes/:envelope_id/versions/:version_id' do
    before(:each) do
      with_versioned_envelope(envelope) do
        get "/api/learning-registry/envelopes/#{envelope.envelope_id}"\
            "/versions/#{envelope.versions.first.id}"
      end
    end

    it { expect_status(:ok) }

    it 'retrieves the desired envelope' do
      expect_json(envelope_id: envelope.envelope_id)
      expect_json(envelope_version: '0.9.0')
    end
  end
end
