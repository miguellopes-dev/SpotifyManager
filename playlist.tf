resource "spotify_playlist" "BEST" {
    name = "BEST"
    tracks = ["3ZOEytgrvLwQaqXreDs2Jx"]

}

data "spotify_search_track" "PinkFloyd" {
    artist = "Pink Floyd"
}

resource "spotify_playlist" "PinkFloyd" {
    name = "Pink Floyd"
    tracks = [data.spotify_search_track.PinkFloyd.tracks[0].id,
    data.spotify_search_track.PinkFloyd.tracks[1].id,
    data.spotify_search_track.PinkFloyd.tracks[2].id]
}
