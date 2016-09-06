import fontforge
f = fontforge.open("LodeSans.sfd")
f.generate("LodeSans-*.bdf")
