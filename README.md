# Schematron for XML validation

Run `validate_sch.sh`. This will:
* use SchXslt (https://github.com/schxslt/schxslt) to generate a SVRL report file
* Process the SVRL file using an XSL stylesheet, an produce a nicely formatted HTML
* Open this HTML with Google Chrome

## Requirements
* `schxslt-cli.jar`
* `xsltproc`
