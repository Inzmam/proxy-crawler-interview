require 'nokogiri'
require 'net/http'

class CrawlerJob
  include Sidekiq::Job

  def perform(url)
    Crawler.new(url).crawl
  end
end
