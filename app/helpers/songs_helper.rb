module SongsHelper
 def artist_select(artist, song)

   if artist

     text_field_tag "song[artist]", artist.name
     hidden_field_tag "song[artist_id]", artist.id
   else
     select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, "id", "name")
   end

 end
end
