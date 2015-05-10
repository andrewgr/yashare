module Yashare
  module Helpers
    extend ActiveSupport::Concern

    def yashare(opts={})
      script = content_tag(:script, nil,
        charset: 'utf-8',
        type:    'text/javascript',
        src:     '//yastatic.net/share/share.js'
      )

      div = content_tag(:div)

      html = [script, Yashare::Widget.new(self, opts)].join("\n")
      self.raw(html)
    end
  end
end
