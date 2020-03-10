require './lib/scraper'
require 'nokogiri'

RSpec.describe Scraper do
  let (:scraper) { Scraper.new}
  describe '#course' do
    it 'returns a Hash' do
      expect(scraper.course.is_a?(Hash)).to eq(true)
    end

    it 'does not return an array' do
      expect(scraper.course.is_a?(Array)).to eq(false)
    end
  end

  describe '#headings' do
    it 'tests for a private method' do
      expect(scraper.send(:headings).is_a?(Nokogiri::XML::NodeSet)).to eq(true)
    end
  end
end
