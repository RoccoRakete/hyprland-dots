import spotipy
import spotipy.util as util
import os
import json
import psutil

CLIENT_ID = "Replace with ur client id"
redirect_uri = "Replace with ur redirect uri"
CLIENT_SECRET = "Replace with ur client secret"
username = "Replace with ur username"
scope = "user-read-currently-playing"

def get_spotify_token():
    token = util.prompt_for_user_token(username, scope, CLIENT_ID, CLIENT_SECRET, redirect_uri)
    return token

def is_spotify_online():
    for process in psutil.process_iter(['name']):
        if process.info['name'] == "spotify":
            return True
    return False

def get_current_song(sp):
    try:
        current_song = sp.currently_playing()
        song_name = current_song['item']['name']
        song_artist = current_song['item']['artists'][0]['name']
        return "🎵 {} by {}".format(song_name, song_artist)
    except Exception:
        return "Spotify Online"

def main():
    token = get_spotify_token()
    sp = spotipy.Spotify(auth=token)

    if is_spotify_online():
        try:
            data = {'text': get_current_song(sp)}
        except Exception as e:
            data = {'text': "Error: {}".format(str(e))}
    else:
        data = {'text': "Spotify Offline"}

    print(json.dumps(data))

if __name__ == "__main__":
    main()
