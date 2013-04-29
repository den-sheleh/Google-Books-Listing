class BooksCollection
  CACHE_KEY = 'google_books_response_page_'
  QUERY_TERM = 'Ruby on Rails'
  RESULTS_PER_PAGE = 6
  PROXY_IP = '78.47.116.164'

  class << self
    def get_page(page = 1)
      @collection = GoogleBooks.search(QUERY_TERM, { count: RESULTS_PER_PAGE, page: page.to_i }, PROXY_IP)
    end

    def cache_key(page)
      CACHE_KEY + page.to_s
    end
  end
end
