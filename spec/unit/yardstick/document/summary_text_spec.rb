require 'spec_helper'

describe Yardstick::Document, '#summary_text' do
  subject { described_class.new(docstring).summary_text }

  context 'when with summary' do
    let(:docstring) {
      "This is a method summary\n\nThis is a method body"
    }

    it { should eq('This is a method summary') }
  end

  context 'when without summary' do
    let(:docstring) {
      "\n\nThis is a method body"
    }

    it { should eq('') }
  end
end
