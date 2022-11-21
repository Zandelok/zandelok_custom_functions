# frozen_string_literal: true

require_relative '../../lib/array/count_array'

describe Array do
  describe '#count_elements' do
    let(:method) { input.count_elements }

    context 'when valid data' do
      let(:input) { [1, 1, 2, 3] }
      let(:result) { { 1 => 2, 2 => 1, 3 => 1 } }

      it 'expect to return hash' do
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
