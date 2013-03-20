module House
  class Assignments
    class << self
      def latest(doc)
        assignments = doc.css('div.item').collect do |snippet|
          Assignment.new(snippet).to_hash
        end
      end
    end
  end
end
