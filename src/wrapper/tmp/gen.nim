# nim c -r gen  2>&1 | grep Error | grep system.h 
import ed
import std/os
import strformat, strutils, sequtils
import npeg
#import compiler/parser # https://stackoverflow.com/questions/32487507/nim-code-parser

iterator getFileList(folder, startsWith, extension:string):string =
  var pattern = folder  / startsWith & &"*.{extension}"
  for i in walkFiles(pattern):
    yield i




#=====================================================

let folder = "/usr/include/poppler/glib"
let packageName = "popplerglib"
let c2nimFile = "./poppler_glib.c2nim"

# --------------------------------------
# 1. Print the filenames to be processed
# --------------------------------------
# for fname in getFileList( folder, "*", "h"):
#   var filename = fname.rsplit('/',1)[1]
#   echo fmt"""name = "{filename}"
# header = newHeader(folder, name, c2nimFile )
# binding = header.genBindings #(clean = false)
# #binding.comment(1,5)
# binding.ignore = true
# headers &= (name, header, binding) 

# """

# --------------------
# 2. Bindings creation
# --------------------

var 
  name:string
  header:Header
  binding:Binding
  headers:seq[tuple[name:string, header:Header, binding:Binding]]


name = "poppler-action.h"
header = newHeader(folder, name, c2nimFile )
header.comment(426, 427)
binding = header.genBindings #(clean = false)
#binding.comment(1,5)
binding.ignore = true
headers &= (name, header, binding) 


name = "poppler-annot.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.comment(1,5)
binding.ignore = true
headers &= (name, header, binding) 


name = "poppler-attachment.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.comment(1,5)
binding.ignore = true
headers &= (name, header, binding) 


name = "poppler-date.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.comment(1,5)
binding.ignore = true
headers &= (name, header, binding) 


name = "poppler-document.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.comment(1,5)
binding.ignore = true
headers &= (name, header, binding) 


name = "poppler-enums.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.comment(1,5)
binding.ignore = true
headers &= (name, header, binding) 


name = "poppler-features.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.comment(1,5)
binding.ignore = true
headers &= (name, header, binding) 


name = "poppler-form-field.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.comment(1,5)
binding.ignore = true
headers &= (name, header, binding) 


name = "poppler-layer.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.comment(1,5)
binding.ignore = true
headers &= (name, header, binding) 


# name = "poppler-macros.h"
# header = newHeader(folder, name, c2nimFile )
# binding = header.genBindings #(clean = false)
# #binding.comment(1,5)
# binding.ignore = true
# headers &= (name, header, binding) 


name = "poppler-media.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.comment(1,5)
binding.ignore = true
headers &= (name, header, binding) 


name = "poppler-movie.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.comment(1,5)
binding.ignore = true
headers &= (name, header, binding) 


name = "poppler-page.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.comment(1,5)
binding.ignore = true
headers &= (name, header, binding) 


name = "poppler-structure-element.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.comment(1,5)
binding.ignore = true
headers &= (name, header, binding) 


name = "poppler.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.comment(1,5)
binding.ignore = true
headers &= (name, header, binding) 


