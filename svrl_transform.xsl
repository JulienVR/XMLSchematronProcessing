<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:dct="http://purl.org/dc/terms/" version="1.0">

    <xsl:template match="/">
        <HTML>
            <h1>Schematron Errors Report</h1>
            <h3>Use `xsltproc svrl_transform.xsl svrl_report.xml <xsl:text disable-output-escaping="yes">&gt;</xsl:text> report.html</h3>
            <h3>SVRL generated at: <xsl:value-of select="//dct:created/text()"/></h3>
            <ul>
                <xsl:apply-templates select="//svrl:failed-assert"/>
            </ul>
        </HTML>
    </xsl:template>

    <xsl:template match="svrl:failed-assert[@flag='fatal'] | svrl:failed-assert">
        <li style="margin: 8px;">
            <div style='color:#f93549'><xsl:value-of select="."/></div>
            <ul>
                <li>
                    <b>Location</b>: <xsl:value-of select="@location"/>
                </li>
                <li>
                    <b>test</b>: <xsl:value-of select="@test"/>
                </li>
            </ul>
        </li>
    </xsl:template>

    <xsl:template match="svrl:failed-assert[@flag='warning']">
        <li style="margin: 8px;">
            <div style='color:#f80'><xsl:value-of select="."/></div>
            <ul>
                <li>
                    <b>Location</b>: <xsl:value-of select="@location"/>
                </li>
                <li>
                    <b>test</b>: <xsl:value-of select="@test"/>
                </li>
            </ul>
        </li>
    </xsl:template>

</xsl:stylesheet>