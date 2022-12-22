{.passC: gorge("pkg-config --cflags poppler-glib cairo").}
{.passL: gorge("pkg-config --libs poppler-glib cairo").}

import wrapper/poppler_glib
export poppler_glib

import lib/[
    document,
    page
]
export document, page