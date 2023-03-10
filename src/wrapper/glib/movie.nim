import glib_types

##  poppler-movie.h: glib interface to Movie
##
##  Copyright (C) 2010 Carlos Garcia Campos <carlosgc@gnome.org>
##  Copyright (C) 2008 Hugo Mercier <hmercier31[@]gmail.com>
##  Copyright (C) 2017 Francesco Poli <invernomuto@paranoici.org>
##
##  This program is free software; you can redistribute it and/or modify
##  it under the terms of the GNU General Public License as published by
##  the Free Software Foundation; either version 2, or (at your option)
##  any later version.
##
##  This program is distributed in the hope that it will be useful,
##  but WITHOUT ANY WARRANTY; without even the implied warranty of
##  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##  GNU General Public License for more details.
##
##  You should have received a copy of the GNU General Public License
##  along with this program; if not, write to the Free Software
##  Foundation, Inc., 51 Franklin Street - Fifth Floor, Boston, MA 02110-1301, USA.
##

import
  poppler

const
  POPPLER_TYPE_MOVIE* = (popplerMovieGetType())

template poppler_Movie*(obj: untyped): untyped =
  (g_Type_Check_Instance_Cast((obj), poppler_Type_Movie, popplerMovie))

template poppler_Is_Movie*(obj: untyped): untyped =
  (g_Type_Check_Instance_Type((obj), poppler_Type_Movie))

## *
##  PopplerMoviePlayMode:
##  @POPPLER_MOVIE_PLAY_MODE_ONCE: the movie should be played once and controls should be closed at the end.
##  @POPPLER_MOVIE_PLAY_MODE_OPEN: the movie should be played once, but controls should be left open.
##  @POPPLER_MOVIE_PLAY_MODE_REPEAT: the movie should be played in loop, until manually stopped.
##  @POPPLER_MOVIE_PLAY_MODE_PALINDROME: the movie should be played forward and backward, forward and backward,
##    and so forth, until manually stopped.
##
##  Play mode enum values.
##
##  Since: 0.54
##



proc popplerMovieGetType*(): GType {.cdecl, importc: "poppler_movie_get_type",
                                  header: "poppler-movie.h".}
proc popplerMovieGetFilename*(popplerMovie: ptr PopplerMovie): ptr Gchar {.cdecl,
    importc: "poppler_movie_get_filename", header: "poppler-movie.h".}
proc popplerMovieNeedPoster*(popplerMovie: ptr PopplerMovie): Gboolean {.cdecl,
    importc: "poppler_movie_need_poster", header: "poppler-movie.h".}
proc popplerMovieShowControls*(popplerMovie: ptr PopplerMovie): Gboolean {.cdecl,
    importc: "poppler_movie_show_controls", header: "poppler-movie.h".}
proc popplerMovieGetPlayMode*(popplerMovie: ptr PopplerMovie): PopplerMoviePlayMode {.
    cdecl, importc: "poppler_movie_get_play_mode", header: "poppler-movie.h".}
proc popplerMovieIsSynchronous*(popplerMovie: ptr PopplerMovie): Gboolean {.cdecl,
    importc: "poppler_movie_is_synchronous", header: "poppler-movie.h".}
proc popplerMovieGetVolume*(popplerMovie: ptr PopplerMovie): Gdouble {.cdecl,
    importc: "poppler_movie_get_volume", header: "poppler-movie.h".}
proc popplerMovieGetRate*(popplerMovie: ptr PopplerMovie): Gdouble {.cdecl,
    importc: "poppler_movie_get_rate", header: "poppler-movie.h".}
proc popplerMovieGetRotationAngle*(popplerMovie: ptr PopplerMovie): Gushort {.cdecl,
    importc: "poppler_movie_get_rotation_angle", header: "poppler-movie.h".}
proc popplerMovieGetStart*(popplerMovie: ptr PopplerMovie): Guint64 {.cdecl,
    importc: "poppler_movie_get_start", header: "poppler-movie.h".}
proc popplerMovieGetDuration*(popplerMovie: ptr PopplerMovie): Guint64 {.cdecl,
    importc: "poppler_movie_get_duration", header: "poppler-movie.h".}
proc popplerMovieGetAspect*(popplerMovie: ptr PopplerMovie; width: ptr Gint;
                           height: ptr Gint) {.cdecl,
    importc: "poppler_movie_get_aspect", header: "poppler-movie.h".}
