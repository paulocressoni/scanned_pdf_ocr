# Apply OCR to Scanned image PDF files

Apply OCR on scanned PDF files to extract text from the PDF images.
This version expects the texts to be written on **brazilian portuguese (pt-br)**.

## Setup

To setup the environment on Ubuntu run the code on Ubuntu terminal:
```bash
chmod a+x setup.sh   # run this line only the first time
./setup.sh
```
The code above will install Tesseract, brazilian portuguese language to the Tesseract OCR, imageMagick, and setup the policy.xml file from imageMagick to convert PDF files.

## Execute OCR

Copy the script `pdf_ocr.sh` to the folder containing the scanned PDF files and execute it:
```bash
chmod a+x pdf_ocr.sh   # run this line only the first time
./pdf_ocr.sh
```

## Output

The script outputs the following: 

- a **txt file** containing the text extracted from the PDF;
- a **searchable PDF file** containing the text extracted from the PDF;
- a **hocr file** containing the text extracted from the PDF.

