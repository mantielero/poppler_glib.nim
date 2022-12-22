//  poppler, poppler-glib, and GTK+
// Debian:
// sudo apt-get install build-essential libpoppler-glib-dev libgtk-3-dev
// gcc -o ex02 ex02.c `pkg-config --cflags --libs poppler-glib cairo`
// Haremos: yay -S poppler-glib gtk3
#include <poppler.h>
#include <cairo.h>
#include <stdio.h>

int main(int argc, char *argv[]) {
  //FILE *fd;
  //fd=fopen("helloworld.pdf","r");  
  // Load the PDF document
  PopplerDocument *document = poppler_document_new_from_file("file:///home/jose/src/nimlang/poppler_glib.nim/example/helloworld.pdf", NULL, NULL);
  //printf("valor: ",document);
  if (!document) {
    g_error("Failed to load PDF document");
    return 1;
  }

  // Get the number of pages in the document
  int n_pages = poppler_document_get_n_pages(document);

  // Loop through the pages
  for (int i = 0; i < n_pages; i++) {
    // Get the page
    PopplerPage *page = poppler_document_get_page(document, i);
    if (!page) {
      g_error("Failed to load page %d", i);
      continue;
    }

    // Get the size of the page
    double width, height;
    poppler_page_get_size(page, &width, &height);

    // Create a cairo surface and context for rendering
    cairo_surface_t *surface = cairo_image_surface_create(CAIRO_FORMAT_ARGB32, width, height);
    cairo_t *context = cairo_create(surface);

    // Render the page to the cairo context
    poppler_page_render(page, context);

    // Save the cairo surface to an image file
    cairo_surface_write_to_png(surface, "page.png");

    // Clean up
    cairo_destroy(context);
    cairo_surface_destroy(surface);
    g_object_unref(page);
  }

  // Clean up
  g_object_unref(document);

  return 0;
}