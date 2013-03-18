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

    def title
      @data.css('h2.title').text
    end

    def description
      @data.css('p.description').text
    end

  end
end