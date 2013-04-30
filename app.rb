%w(rubygems bundler/setup sinatra sinatra/dalli
  googlebooks will_paginate will_paginate-bootstrap).each { |lib| require lib }

Dir[File.join('lib', '**', '*.rb')].each { |file| require file }

get '/:page?' do |page|
  @page = page || 1

  cache BooksCollection.cache_key(@page) do
    @books = BooksCollection.get_page(@page)
    haml :index
  end
end