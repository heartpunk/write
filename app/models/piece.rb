class Piece
  attr_accessor :revisions

  def initialize
    self.revisions = []
  end

  def add_revision revision
    revisions << revision
  end
end
