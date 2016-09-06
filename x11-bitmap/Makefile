
LodeSans-15.pcf.gz: LodeSans-15.pcf
	gzip -kf LodeSans-15.pcf

LodeSans-15.pcf: 
	bdftopcf LodeSans-15.bdf > LodeSans-15.pcf

LodeSans-15.bdf: LodeSans.sfd convert.py
	fontforge -lang=py -script convert.py

