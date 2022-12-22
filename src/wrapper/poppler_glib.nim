{.passC: gorge("pkg-config --cflags poppler-glib cairo").}
#{.passC: "-I/usr/include/glib-2.0".}
{.passL: gorge("pkg-config --libs poppler-glib cairo").}
#{.passL: "-I/usr/include/glib-2.0".}

import glib/[
    action,
    #annot,
    #attachment,
    #date,
    document,
    #enums,
    features,
    #form_field,
    glib_types,
    #layer,
    #media,
    #movie,
    page,
    poppler#,
    #structure_element
]

export 
    action,
    #annot,
    #attachment,
    #date,
    document,
    #enums,
    features,
    #form_field,
    glib_types,
    #layer,
    #media,
    #movie,
    page,
    poppler#,
    #structure_element