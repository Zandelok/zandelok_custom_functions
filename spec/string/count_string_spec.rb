# frozen_string_literal: true

require_relative '../../lib/string/count_string'

describe String do
  describe '#count_chars' do
    let(:method) { input.count_chars }

    context 'when valid data' do
      let(:input) { 'Hello world' }
      let(:result) { { 'H' => 1, 'e' => 1, 'l' => 3, 'o' => 2, ' ' => 1, 'w' => 1, 'r' => 1, 'd' => 1 } }

      it 'expect to return hash' do
        expect(method).to eq result
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
