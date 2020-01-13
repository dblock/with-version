# frozen_string_literal: true

require 'spec_helper'

describe With::Version::Ruby do
  include With::Version::Ruby

  NEXT_VERSION = Gem::Version.new(RUBY_VERSION).bump.to_s
  PREV_VERSION = Gem::Version.new('1.9.3').to_s

  context '#with_minimum_ruby' do
    before :all do
      @versions = []
    end

    context NEXT_VERSION do
      with_minimum_ruby(NEXT_VERSION) do
        it 'never runs' do
          raise NEXT_VERSION
        end
      end
    end

    context RUBY_VERSION do
      with_minimum_ruby(RUBY_VERSION) do
        it 'includes the current version' do
          @versions << RUBY_VERSION
        end
      end
    end

    context PREV_VERSION do
      with_minimum_ruby(PREV_VERSION) do
        it 'includes the current version' do
          @versions << PREV_VERSION
        end
      end
    end

    after :all do
      expect(@versions.sort).to eq([PREV_VERSION, RUBY_VERSION])
    end
  end
end
