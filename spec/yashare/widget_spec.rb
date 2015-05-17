require 'spec_helper'

RSpec.describe Yashare::Widget do
  let(:view) { ActionView::Base.new }

  describe '#to_s' do
    context 'no options specified' do
      subject { described_class.new(view) }

      specify do
        expected = '<div
          class="yashare-auto-init"
          data-yashareQuickServices="vkontakte,facebook,twitter,lj"
          data-yashareL10n="ru"
          data-yashareType="button"></div>'.gsub(/\s+/, ' ')

        expect(subject.to_s).to eq(expected)
      end
    end

    context 'services specified' do
      subject { described_class.new(view, services: 'vkontakte') }

      specify do
        expected = '<div
          class="yashare-auto-init"
          data-yashareQuickServices="vkontakte"
          data-yashareL10n="ru"
          data-yashareType="button"></div>'.gsub(/\s+/, ' ')

        expect(subject.to_s).to eq(expected)
      end
    end

    context 'language specified' do
      subject { described_class.new(view, lang: 'en') }

      specify do
        expected = '<div
          class="yashare-auto-init"
          data-yashareQuickServices="vkontakte,facebook,twitter,lj"
          data-yashareL10n="en"
          data-yashareType="button"></div>'.gsub(/\s+/, ' ')

        expect(subject.to_s).to eq(expected)
      end
    end

    context 'image specified' do
      subject { described_class.new(view, image: '/img.png') }

      specify do
        expected = '<div
          class="yashare-auto-init"
          data-yashareQuickServices="vkontakte,facebook,twitter,lj"
          data-yashareL10n="ru"
          data-yashareType="button"
          data-yashareImage="/img.png"></div>'.gsub(/\s+/, ' ')

        expect(subject.to_s).to eq(expected)
      end
    end

    context 'image specified' do
      subject { described_class.new(view, type: 'small') }

      specify do
        expected = '<div
          class="yashare-auto-init"
          data-yashareQuickServices="vkontakte,facebook,twitter,lj"
          data-yashareL10n="ru"
          data-yashareType="small"
          data-yashareTheme="counter"></div>'.gsub(/\s+/, ' ')

        expect(subject.to_s).to eq(expected)
      end
    end
  end
end
