module Yashare
  class Widget
    def initialize(view, opts = {})
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
      view.content_tag(:div, nil, class: 'yashare-auto-init', data: data_attrs)
    end

    def data_attrs
      {
        yashareQuickServices: Array(services).join(','),
        yashareL10n: lang,
        yashareType: type
      }.tap do |data|
        data[:yashareTheme] = 'counter' if type.to_s == 'small'
        data[:yashareImage] = image     if image.present?
      end
    end

    attr_reader :view, :type, :services, :image, :lang
  end
end
