FactoryGirl.define do
  factory :resource, class: 'Hashie::Mash' do
    name 'The Constitution at Work'
    url 'http://example.org/activities/16/detail'
    description 'In this activity students will analyze envelopes ...'
    learning_registry_metadata { attributes_for(:learning_registry_metadata) }
  end

  factory :credential_registry_org, class: 'Hashie::Mash' do
    add_attribute(:'@type') { 'cti:Organization' }
    name 'Test Org'
  end
end
