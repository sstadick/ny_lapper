import nimpy
import lapper

# Make Interval

type PyInterval = ref object
  start: int
  stop: int
  val: int

proc start(self: PyInterval): int {.inline.} = return self.start
proc stop(self: PyInterval): int {.inline.} = return self.stop
proc `$`(self: PyInterval): string = return "(start: {$self.start}, stop: {$self.stop}, val: {$self.val})"

proc makeInterval(start, stop, val: int): PyInterval {.exportpy.} =
  PyInterval(start: start, stop: stop, val: val)

# Make Laper
proc makeLapper(ivs: sink seq[PyInterval]): Lapper[PyInterval] {.exportpy.} =
  lapify(ivs)


# find
proc nyFind(self: sink Lapper[PyInterval], start: int, stop: int): bool {.exportpy.} =
  var ivs: seq[PyInterval]
  self.find(start, stop, ivs)


# seek



# This is just an example to get you started. A typical library package
# exports the main API in this file. Note that you cannot rename this file
# but you can remove it if you wish.

proc add*(x, y: int): int =
  ## Adds two files together.
  return x + y
