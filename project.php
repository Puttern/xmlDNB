<?php
$dnb = 'https://www.dnb.no/portalfront/datafiles/miscellaneous/csv/kursliste_ws.xml';
$xml = new DOMDocument();
$xml->load($dnb);
$elm = new DOMDocument();
$elm->load("dnb_kursliste.xsl");
$xslt = new XSLTProcessor();
$xslt->importStylesheet($elm);
echo $resultat = $xslt->transformToXML($xml);

$brreg = 'https://data.brreg.no/enhetsregisteret/enhet.xml?page=0&size=30&filter=';
$xml = new DOMDocument();
$xml->load($brreg);
$elm = new DOMDocument();
$elm->load("dnb_kursliste.xsl");
$xslt = new XSLTProcessor();
$xslt->importStylesheet($elm);
echo $resultat = $xslt->transformToXML($xml);

?>
