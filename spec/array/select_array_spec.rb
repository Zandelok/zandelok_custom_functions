# frozen_string_literal: true

require_relative '../../lib/array/select_array'

describe Array do
  describe '#select_solo' do
    let(:method) { input.select_solo }

    context 'when valid data' do
      let(:input) { [1, 1, 2, 3] }
      let(:result) { [2, 3] }

      it 'expect to return array with solo values' do
        expect(method).to eq result
      end
    end

    context 'when invalid data' do
      let(:input) { 'Test' }

      it 'expect to raise NoMethodError' do
        expect { method }.to raise_error NoMethodError
      end
    end
  end
end
