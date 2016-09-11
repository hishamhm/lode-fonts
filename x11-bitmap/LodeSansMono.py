import fontforge
f = fontforge.open("LodeSansMono.sfd")
f.generate("LodeSansMono-*.bdf")
