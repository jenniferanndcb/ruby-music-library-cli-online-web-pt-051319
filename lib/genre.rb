class Genre

extend Concerns::Findable 

attr_accessor :name, :artist

@@all = []

	def initialize(name)
		@name = name 
		@songs = []

	end 

	def self.all 
		@@all 
	end 

  def save 
    @@all << self 
  end 

	def self.destroy_all 
		@@all.clear 

	end 

	def self.create(name)
		Genre.new(name).tap(&:save)
	end 

  def songs 
    @songs 
  end 
	
	def artists 
	  self.songs.collect {|song|song.artist}.uniq
	end 
end 