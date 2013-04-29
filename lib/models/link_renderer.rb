require 'sinatra/base'
require 'will_paginate/view_helpers'
require 'will_paginate/view_helpers/link_renderer'

module WillPaginate
  module Sinatra

    class LinkRenderer < ViewHelpers::LinkRenderer
      protected

      def url(page)
        str = File.join(request.script_name.to_s)
        str << '/' << page.to_s
      end
    end
  end
end