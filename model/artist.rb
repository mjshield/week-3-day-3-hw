require_relative('../db/sql_runner')

class Artist

  attr_reader :id, :name

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
  end

  def save
    sql = "INSERT INTO artists (name) VALUES ('#{@name}') RETURNING id;"
    @id = SqlRunner.run(sql)[0]['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM artists;"
    artists = SqlRunner.run( sql )
    artists.map { |artist| Artist.new(artist) }
  end



end