module Yashare
  class Widget
    def initialize(view, opts={})
      @view = view

      @services = opts.fetch(:services, %w(vkontakte facebook twitter lj))
      @image    = opts.fetch(:image,    nil)
      @type     = opts.fetch(:type,     'button')
      @lang     = opts.fetch(:lang,     'ru')
    end

    def to_s
      @html ||= render
    end

    private

    def render
      attrs = {
        class: 'yashare-auto-init',
        data: {
          yashareQuickServices: Array(services).join(','),
          yashareL10n:          lang,
          yashareType:          type
        }
      }

      attrs[:data][:yashareTheme] = 'counter' if type.to_s == 'small'
      attrs[:data][:yashareImage] = image     if image.present?

      view.content_tag(:div, nil, attrs)
    end

    attr_reader :view, :type, :services, :image, :lang
  end
end
