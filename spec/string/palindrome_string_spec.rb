# frozen_string_literal: true

require_relative '../../lib/string/palindrome_string'

describe String do
  describe '#palindrome?' do
    let(:method) { input.palindrome? }

    context 'when valid data' do
      context 'when palindrome' do
        let(:input) { 'hOhoH' }
        let(:result) { true }

        it 'expect to return true' do
          expect(method).to eq result
        end
      end

      context 'when not palindrome' do
        let(:input) { 'Hello world' }
        let(:result) { false }

        it 'expect to return false' do
          expect(method).to eq result
        end
      end
    end

    context 'when invalid data' do
      let(:input) { 69 }

      it 'expect to raise NoMethodError' do
        expect { method }.to raise_error NoMethodError
      end
    end
  end
end
