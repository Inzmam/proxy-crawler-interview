class AmazonPage < ApplicationRecord

  def self.run_crawler
    all_urls = AmazonPage.pluck(:url)
    all_urls.each do |single_url|
      CrawlerJob.perform_async(single_url)
    end
  end

end
