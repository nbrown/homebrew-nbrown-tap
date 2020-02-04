cask 'comma-ide-community-edition' do
  version '2020.01.0'
  sha256 'f38002df9c8b6b3184cb2c04a4129afe07178402f7d31009707790ec7dfe173f'

  url do
    require 'open-uri'
    require 'pp'
    # No known stable URL; fetching disposable URL from landing site
    URI('https://commaide.com/download/community/mac').open do |landing_page|
      landing_page.base_uri
    end
  end
  name 'Comma IDE - Community Edition'
  homepage 'https://commaide.com/'

  app 'Comma CT.app'

end
