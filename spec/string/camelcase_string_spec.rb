# frozen_string_literal: true

require_relative '../../lib/string/camelcase_string'

describe String do
  describe '#camelcase' do
    let(:method) { input.camelcase }

    context 'when valid data' do
      let(:input) { 'the-stealth_warrior' }
      let(:result) { 'theStealthWarrior' }

      it 'expect to return transformed string' do
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
