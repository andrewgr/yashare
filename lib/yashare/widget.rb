module Yashare
  class Widget
    def initialize(view, opts={})
      @view = view

      @services = opts.fetch(:services, ['vkontakte', 'facebook', 'twitter', 'lj'])
      @image    = opts.fetch(:image,    nil)
      @type     = opts.fetch(:type,     'button')
      @lang     = opts.fetch(:lang,     'ru')
    end

    def to_s
      attrs = {
        class: 'yashare-auto-init',
        data: {
          yashareL10n: lang,
          yashareType: type,
          yashareQuickServices: services.join(',')
        }
      }

      if type == 'small'
        attrs[:data][:yashareTheme] = 'counter'
      end

      if image.present?
        attrs[:data][:yashareImage] = image
      end

      view.content_tag(:div, nil, attrs)
    end

    private

    attr_reader :view, :type, :services, :image, :lang
  end
end
