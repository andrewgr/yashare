require 'spec_helper'

RSpec.describe Yashare::Helpers do
  describe '#yashare' do
    let(:view) { ActionView::Base.new }

    context 'no options specified' do
      subject { view.yashare }

      let(:expected) { File.read('./spec/support/default.html').strip }

      it { is_expected.to eq(expected) }
    end

    context 'services specified' do
      subject { view.yashare(services: :facebook) }

      let(:expected) { File.read('./spec/support/with_services.html').strip }

      it { is_expected.to eq(expected) }
    end
  end
end
