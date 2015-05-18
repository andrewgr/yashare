module Yashare
  module Helpers
    extend ActiveSupport::Concern

    def yashare(opts = {})
      attrs = {
        charset: 'utf-8',
        type:    'text/javascript',
        src:     '//yastatic.net/share/share.js'
      }

      script = content_tag(:script, nil, attrs)
      widget = Yashare::Widget.new(self, opts)
      html = [script, widget].join("\n")

      raw(html)
    end
  end
end
