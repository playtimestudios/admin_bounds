require 'spec_helper'

module AdminBounds
  describe Osmosis do
    context 'when pbf file does not exist' do
      subject(:osmosis) { Osmosis.new('no.osm.pbf') }

      it 'raises runtime error' do
        expect { osmosis.import_administrative_boundaries }.to raise_error(RuntimeError)
      end
    end

    context 'when pbf file is bad' do
      subject(:osmosis) { Osmosis.new(File.dirname(__FILE__) + '/../fixtures/files/andorra-latest-bad.osm.pbf')}

      it 'raises runtime error' do
        expect { osmosis.import_administrative_boundaries }.to raise_error(RuntimeError)
      end
    end

    context 'when pbf file is good' do
      subject(:osmosis) { Osmosis.new(File.dirname(__FILE__) + '/../fixtures/files/andorra-latest-good.osm.pbf')}

      it 'returns true' do
        expect(osmosis.import_administrative_boundaries).to be true
      end
    end
  end
end
