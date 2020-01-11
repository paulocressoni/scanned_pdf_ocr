#!/bin/bash -ax

### Convert scanned pdf files to image and apply OCR for brazilian portuguese


ls *.pdf | while read pdf
do
	#pdf="$(echo "$pdf" | sed 's/ /\\ /g')"
	output_file="$(echo "$pdf" | sed 's/\.pdf//')"
	tiff_file="$(echo "$pdf" | sed 's/\.pdf/\.tiff/')"
	echo "scanned pdf to image: ${pdf}..."
	convert -density 300 -background white -alpha Off "${pdf}" "${tiff_file}"
	exit_code=$?
        echo "status code: ${exit_code}"
	echo ""


	echo "apply OCR on image (output txt file): ${tiff_file}..."
	tesseract --tessdata-dir /usr/share "${tiff_file}" "${output_file}" -l por
	exit_code=$?
        echo "status code: ${exit_code}"
        echo ""
	
	echo "apply OCR on image (output searchable pdf): ${tiff_file}..."
        tesseract --tessdata-dir /usr/share "${tiff_file}" "${output_file}_searchable" -l por pdf
        exit_code=$?
        echo "status code: ${exit_code}"
        echo ""

	echo "apply OCR on image (output hocr): ${tiff_file}..."
        tesseract --tessdata-dir /usr/share "${tiff_file}" "${output_file}" -l por hocr
        exit_code=$?
        echo "status code: ${exit_code}"
        echo ""

done


