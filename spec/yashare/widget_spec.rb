require 'spec_helper'

RSpec.describe Yashare::Widget do
  let(:view) { ActionView::Base.new }

  describe '#to_s' do
    context 'no options specified' do
      subject { described_class.new(view).to_s }

      let(:expected) do
        '<div
          class="yashare-auto-init"
          data-yashareQuickServices="vkontakte,facebook,twitter,lj"
          data-yashareL10n="ru"
          data-yashareType="button"></div>'.gsub(/\s+/, ' ')
      end

      it { is_expected.to eq(expected) }
    end

    context 'services specified' do
      subject { described_class.new(view, services: 'vkontakte').to_s }

      let(:expected) do
        '<div
          class="yashare-auto-init"
          data-yashareQuickServices="vkontakte"
          data-yashareL10n="ru"
          data-yashareType="button"></div>'.gsub(/\s+/, ' ')
      end

      it { is_expected.to eq(expected) }
    end

    context 'language specified' do
      subject { described_class.new(view, lang: 'en').to_s }

      let(:expected) do
        '<div
          class="yashare-auto-init"
          data-yashareQuickServices="vkontakte,facebook,twitter,lj"
          data-yashareL10n="en"
          data-yashareType="button"></div>'.gsub(/\s+/, ' ')
      end

      it { is_expected.to eq(expected) }
    end

    context 'image specified' do
      subject { described_class.new(view, image: '/img.png').to_s }

      let(:expected) do
        '<div
          class="yashare-auto-init"
          data-yashareQuickServices="vkontakte,facebook,twitter,lj"
          data-yashareL10n="ru"
          data-yashareType="button"
          data-yashareImage="/img.png"></div>'.gsub(/\s+/, ' ')
      end

      it { is_expected.to eq(expected) }
    end

    context 'image specified' do
      subject { described_class.new(view, type: 'small').to_s }

      let(:expected) do
        '<div
          class="yashare-auto-init"
          data-yashareQuickServices="vkontakte,facebook,twitter,lj"
          data-yashareL10n="ru"
          data-yashareType="small"
          data-yashareTheme="counter"></div>'.gsub(/\s+/, ' ')
      end

      it { is_expected.to eq(expected) }
    end
  end
end
