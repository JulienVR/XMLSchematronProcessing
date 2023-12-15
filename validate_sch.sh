java -jar schxslt-cli.jar --document out.xml --output output_svrl.xml --schematron "../Caja_de_herramientas_Factura_Electronica_Validacion_Previa/Caja_de_herramientas_Factura_Electronica_Validacion_Previa /Version 1.8/Schemes/DIAN-UBL21-model.sch"
xsltproc svrl_transform.xsl output_svrl.xml > report.html
google-chrome report.html