# YaShare

An Action View helper to add Yandex Share buttons to your Rails App.

## Installation

Add this line to your application's Gemfile:

    gem 'yashare'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install yashare

## Usage

Use `yashare` helper in your view code to add the Yandex Share buttons to the page. Without any parameters, this code

    <%= yashare %>
    
will render this HTML:
```HTML
<script charset="utf-8" type="text/javascript" src="//yastatic.net/share/share.js"></script>
<div class="yashare-auto-init" data-yashareQuickServices="vkontakte,facebook,twitter,lj" data-yashareL10n="ru" data-yashareType="button"></div>
```

Use `services` option to specify buttons for which services should be displayed. For example, this code

    <%= yashare(services: [:twitter, :facebook]) %>

will render buttons for Twitter and Facebook only.

## Contributing

Your contribution is welcome.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
