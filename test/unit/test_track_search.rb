require File.expand_path('../../test_helper.rb', __FILE__)

class TestTrackSearch < Test::Unit::TestCase

  def setup
    @search = Rockstar::Track.search({ track: "Ishome Wildness" })
    @first_track = @search.first
  end

  test 'raise missing parameter error in search' do
    assert_raises(ArgumentError) { Rockstar::Track.search() }
  end

  test 'should know the name of first track' do
    assert_equal('Wildness', @first_track.name)
    assert_equal('Ishome', @first_track.artist)
  end

end
