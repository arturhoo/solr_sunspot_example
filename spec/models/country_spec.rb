require 'rails_helper'

RSpec.describe Country, type: :model do
  describe '#search' do
    it 'performs the full text search using solr and sunspot' do
      expect(Country.search { keywords 'Brazil' }.results.first).to(
        eq(Country.find_by(name: 'Brazil')))
    end
  end
end
