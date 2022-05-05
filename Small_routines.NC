( Automatic tool measuring loop        )
( Starts from the active tool in       )
( the spindle, and ends at the num ber )
( in variable #500                     )

#500=10(End at tool number            --- Replace #500 with a free variable on your controll)

G966(Measuring cycle or sup-program)
WHILE[#4120LE#500]DO1
#501=[4120+1]
T[#501]M06  (CALL TOOL)
T[#501+1]   (PRESTAGE NEXT TOOL)
G966    (Measuring cycle or sup-program --- Replace this with what works for your machine)
M01
END1

M30
