require 'minitest/autorun'
require_relative "../../app/models/piece.rb"

describe Piece do
  before do
    @piece = Piece.new
  end

  it "should have revisions" do
    assert_respond_to @piece, :revisions
  end

  it "should be able to accept new revisions" do
    assert_respond_to @piece, :add_revision
    old_length = @piece.revisions.length
    @piece.add_revision "foo"
    assert(old_length + 1, @piece.revisions.length)
  end
end
