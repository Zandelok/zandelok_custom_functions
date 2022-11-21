# frozen_string_literal: true

require_relative '../../lib/array/split_array'

describe Array do
  describe '#split_by_parity' do
    let(:method) { input.split_by_parity }

    context 'when valid data' do
      let(:input) { [1, 1, 2, 3] }
      let(:result) { [[2], [1, 1, 3]] }

      it 'expect to return splited array' do
        expect(method).to eq result
      end
    end

    context 'when invalid data' do
      context 'when string passed' do
        let(:input) { 'Test' }

        it 'expect to raise NoMethodError' do
          expect { method }.to raise_error NoMethodError
        end
      end

      context 'when array with subarrays' do
        let(:input) { [[1, 2], [2, 3]] }

        it 'expect to raise NoMethodError' do
          expect { method }.to raise_error NoMethodError
        end
      end

      context 'when array of strings passed' do
        let(:input) { %w[Test Test] }

        it 'expect to raise NoMethodError' do
          expect { method }.to raise_error NoMethodError
        end
      end
    end
  end
end
