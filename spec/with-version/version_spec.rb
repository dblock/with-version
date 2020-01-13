require 'spec_helper'

describe With::Version do
  it 'has a version' do
    expect(With::Version::VERSION).not_to be_nil
  end
end
