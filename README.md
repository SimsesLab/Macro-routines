# Macro-routines

<br>

A collection of various macro subroutines and tools I´ve made and want to share for others to use.
<br>
Most of these are written in either FANUC compatible ISO format, or MAZATROL compatible EIA format, but the general format should work on most cnc controls with a little tweaking if necessary.

<br>

## Subroutine for measuring multiple tools, between two given numbers:
```GCODE
( Toolsetting loop for multiple tools.      )
( Starts from the tool number in #501       )
( Ends at and including tool number in #500 )

#501=1    (Start at tool number           <--- Replace #500 with a free variable on your control)
#500=10   (End at tool number             <--- Replace #500 with a free variable on your control)

WHILE[#501LE#500]DO1
T#501 M06  (CALL TOOL)
T[#501+1]  (PRESTAGE NEXT TOOL)
G966    (Measuring cycle or sup-program   <--- Replace this with what works for your machine)
M01
#501=#501+1
END1

M30
```
