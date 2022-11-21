# frozen_string_literal: true

require 'faker'
require_relative '../../lib/zandelok/functions'

describe Zandelok::Functions do
  describe '#multiply' do
    context 'when valid data' do
      subject { described_class.multiply(1, 2, 3) }

      let(:result) { 6 }

      it 'return multiplied values' do
        expect(subject).to eq result
      end
    end

    context 'when invalid data' do
      context 'when provided invalid values' do
        subject { described_class.multiply(1, 2, 'test') }

        it 'expect to raise Errors::TypeError' do
          expect { subject }.to raise_error Errors::TypeError
        end
      end

      context 'when provided one value' do
        subject { described_class.multiply(1) }

        it 'expect to raise Errors::DataError' do
          expect { subject }.to raise_error Errors::DataError
        end
      end
    end
  end

  describe '#missing_numbers' do
    subject { described_class.missing_numbers(input) }

    context 'when valid data' do
      let(:input) { [1, 2, 3, 10] }
      let(:result) { [4, 5, 6, 7, 8, 9] }

      it 'return array with missing values' do
        expect(subject).to eq result
      end
    end

    context 'when invalid data' do
      context 'when provided not array' do
        let(:input) { 'test' }

        it 'expect to raise Errors::TypeError' do
          expect { subject }.to raise_error Errors::TypeError
        end
      end

      context 'when provided invalid values' do
        let(:input) { [1, 2, 'test'] }

        it 'expect to raise Errors::TypeError' do
          expect { subject }.to raise_error Errors::TypeError
        end
      end

      context 'when provided one value' do
        let(:input) { [1] }

        it 'expect to raise Errors::DataError' do
          expect { subject }.to raise_error Errors::DataError
        end
      end
    end
  end

  describe '#generate_hashtag' do
    subject { described_class.generate_hashtag(input) }

    context 'when valid data' do
      context 'when array passed' do
        let(:input) { [1, 2, 3, 10] }
        let(:result) { '#12310' }

        it 'return generated hastag' do
          expect(subject).to eq result
        end
      end

      context 'when string passed' do
        let(:input) { 'Hello world with ruby' }
        let(:result) { '#HelloWorldWithRuby' }

        it 'return generated hastag' do
          expect(subject).to eq result
        end
      end
    end

    context 'when invalid data' do
      context 'when invalid type passed' do
        let(:input) { 69 }

        it 'expect to raise Errors::TypeError' do
          expect { subject }.to raise_error Errors::TypeError
        end
      end

      context 'when passed too short value' do
        let(:input) { '' }

        it 'expect to raise Errors::DataError' do
          expect { subject }.to raise_error Errors::DataError
        end
      end

      context 'when passed too long value' do
        let(:input) { Faker::Lorem.characters(number: 150) }

        it 'expect to raise Errors::DataError' do
          expect { subject }.to raise_error Errors::DataError
        end
      end
    end
  end
end
