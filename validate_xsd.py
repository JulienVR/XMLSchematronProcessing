from lxml import etree, isoschematron

XML_PATH = "/home/odoo/Documents/TRAVAIL/L10N/CO/Validation/out.xml"
ROOT = "/home/odoo/Documents/TRAVAIL/L10N/CO/Caja_de_herramientas_Factura_Electronica_Validacion_Previa/Caja_de_herramientas_Factura_Electronica_Validacion_Previa /Version 1.8/"

xml_doc = etree.parse(XML_PATH)
pathlist = [
   "XSD/common/UBL-XAdESv132-2.1.xsd",
   "XSD/common/UBL-XAdESv141-2.1.xsd",
   "XSD/common/UBL-xmldsig-core-schema-2.1.xsd",
   "XSD/maindoc/DIAN_UBL_Structures.xsd",
   "XSD/maindoc/UBL-Invoice-2.1.xsd",
]

for xsd_path in pathlist:
   print("\n=== ", xsd_path, " ===")
   xmlschema_doc = etree.parse(ROOT + xsd_path)
   xmlschema = etree.XMLSchema(xmlschema_doc)
   try:
      xmlschema.assertValid(xml_doc)
   except Exception as e:
      print(e)
   else:
      print("OK")