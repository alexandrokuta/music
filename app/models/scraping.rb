class Scraping
  def self.music_urls
    agent = Mechanize.new
    current_page = agent.get('https://tsutaya.tsite.jp/item/music/EXT00000000R/')
    elements = current_page.search('.c_js_slider-item a')
    elements.each do |ele|
      puts ele[:href]
  end
end

end
