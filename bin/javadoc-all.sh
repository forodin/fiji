#!/bin/sh

find -name \*.java |
grep -ve ij-plugins/Sun_JAI_Sample_IO_Source_Code \
	-e ij-plugins/Quickvol -e jython/sandbox \
	-e ij-plugins/VTK-Examples \
	-e ij_plugins/vtk \
	-e /weka/test/ -e /weka/src/test/ -e common/utests \
	-e jython/jython/Demo \
	-e org/python/expose/generate/NewExposer \
	-e weka/wekaexamples/src/main/java/wekaexamples \
	-e jython/jython/src/org/python/expose/generate/PyTypes \
	-e bio-formats/components/visbio/src/loci/visbio/overlays/OverlayTransform.java \
	-e bio-formats/components/slim-plotter/ \
	-e bio-formats/components/visbio/ |
./fiji --javadoc --jarpath bio-formats/jar \
	-link http://download.java.net/media/java3d/javadoc/1.5.2/ \
	-link http://java.sun.com/j2se/1.5.0/docs/api/ \
	"$@" \
	@/dev/stdin 2>&1
