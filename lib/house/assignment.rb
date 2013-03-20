module House
  class Assignment
    def initialize(data)
      @data = data
    end

    def guid
      @data.css('ul.assignment-details')[0]['data-listingid'].to_i
    end

    def path
      @data.css('h2.title a')[0]['href']
    end

    def url
      "http://mindmyhouse.com#{path}"
    end

    def title
      @data.css('h2.title').text
    end

    def description
      @data.css('p.description').text
    end

    def location
      @data.css('li.location').text
    end

    def to_hash
      { title: title,
        url: url,
        location: location,
        description: description }
    end
  end
end