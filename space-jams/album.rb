class Album
  # Define your Album class here.
  attr_accessor :tracks
  attr_reader :id

  def initialize(album_id, album_name, artists)
    @id = album_id
    @title = album_name
    @artists = artists
    @tracks = []
  end


  def summary
    puts "Name: #{@title}\n"
    puts "Artist(s): #{@artists}\n"
    duration = 0
    tracks.each do |track|
      duration += track[:duration_ms].to_f / 60000
    end
    puts "Duration (min.) #{duration.round(2)}"
    puts "Tracks: \n"
    tracks.each do |track|
      puts "- #{track[:title]}\n"
    end
    return
  end


end
