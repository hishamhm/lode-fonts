
all: LodeSans-15.pcf.gz LodeSansMono-15.pcf.gz

LodeSans-15.pcf.gz: LodeSans-15.pcf
	gzip -kf LodeSans-15.pcf

LodeSans-15.pcf: LodeSans-15.bdf
	bdftopcf LodeSans-15.bdf > LodeSans-15.pcf

LodeSans-15.bdf: LodeSans.sfd LodeSans.py
	fontforge -lang=py -script LodeSans.py

LodeSansMono-15.pcf.gz: LodeSansMono-15.pcf
	gzip -kf LodeSansMono-15.pcf

LodeSansMono-15.pcf: LodeSansMono-15.bdf
	bdftopcf LodeSansMono-15.bdf > LodeSansMono-15.pcf

LodeSansMono-15.bdf: LodeSansMono.sfd LodeSansMono.py
	fontforge -lang=py -script LodeSansMono.py

