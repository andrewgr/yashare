require 'spec_helper'

RSpec.describe Yashare::Helpers do
  describe '#yashare' do
    let(:view) { ActionView::Base.new }

    context 'no options specified' do
      subject { view.yashare }

      let(:expected) do
        '<script charset="utf-8" type="text/javascript" src="//yastatic.net/share/share.js"></script>
<div class="yashare-auto-init" data-yashareQuickServices="vkontakte,facebook,twitter,lj" data-yashareL10n="ru" data-yashareType="button"></div>'
      end

      specify { is_expected.to eq(expected) }
    end

    context 'services specified' do
      subject { view.yashare(services: :facebook) }

      let(:expected) do
        '<script charset="utf-8" type="text/javascript" src="//yastatic.net/share/share.js"></script>
<div class="yashare-auto-init" data-yashareQuickServices="facebook" data-yashareL10n="ru" data-yashareType="button"></div>'
      end

      specify { is_expected.to eq(expected) }
    end
  end
end
