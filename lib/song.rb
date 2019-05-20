require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    song.save
    song
  end

  def self.new_by_name(title)
    song = self.new
    song.name = title
    song
  end

  def self.create_by_name(title)
    song = self.create
    song.title = title
    song
  end

  def self.find_by_name(title)
    @@all.find{|song| song.name == name}
  end

  def self.find_or_create_by_name(title)
  end

  def self.alphabetical
    sorted = self.all.sort_by {|song| song.name}
    sorted
  end

  def self.new_from_filename(name)
  end

  def self.destroy_all
    self.all.clear
  end

end
