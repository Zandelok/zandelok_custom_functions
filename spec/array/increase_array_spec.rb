# frozen_string_literal: true

require_relative '../../lib/array/increase_array'

describe Array do
  describe '#increase_with_index' do
    let(:method) { input.increase_with_index }

    context 'when valid data' do
      let(:input) { [1, 1, 2, 3] }
      let(:result) { [1, 2, 4, 6] }

      it 'expect to return increased array' do
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

      context 'when array of strings passed' do
        let(:input) { %w[Test Test] }

        it 'expect to raise TypeError' do
          expect { method }.to raise_error TypeError
        end
      end
    end
  end

  describe '#increase_with_position' do
    let(:method) { input.increase_with_position }

    context 'when valid data' do
      let(:input) { [1, 1, 2, 3] }
      let(:result) { [2, 3, 5, 7] }

      it 'expect to return increased array' do
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

      context 'when array of strings passed' do
        let(:input) { %w[Test Test] }

        it 'expect to raise TypeError' do
          expect { method }.to raise_error TypeError
        end
      end
    end
  end
end
