
class BoringGuy
  include DataMapper::Resource

  property :id,        Integer, :key => true
  property :name,      String,  :default => 'Bob'
end

class Magician < BoringGuy
  def as_hash(options)
    { :name => 'The Magical Maestro' }
  end
end
