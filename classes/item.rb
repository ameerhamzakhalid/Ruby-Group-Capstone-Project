require 'date'

class Item
  attr_reader :genre, :author, :source, :label
  attr_accessor :publish_date

  def initialize(publish_date)
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @archived = false
  end

  def add_genre=(genre)
    @genre = genre
    genre.add_item(self)
  end

  def add_source=(source)
    @source = source
    source.add_item(self)
  end

  def add_author=(author)
    @author = author
    author.add_item(self) unless author.items.include?(self)
  end

  def add_label=(label)
    @label = label
    label.add_item(self)
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    current_year = Date.today.year
    publish_year = Date.parse(publish_date).year
    (current_year - publish_year) > 10
  end
end
