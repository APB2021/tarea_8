<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- Plantilla principal que define la estructura HTML -->
	<xsl:template match="/">
		<html>
			<head>
				<title>Lista de Alumnos</title>
			</head>
			<body>
				<h2>Lista de Alumnos</h2>
				<table border="1">
					<tr bgcolor="#CCCCCC">
						<th>NIA</th>
						<th>NOMBRE</th>
						<th>APELLIDOS</th>
						<th>GÉNERO</th>
						<th>FECHA DE NACIMIENTO</th>
						<th>CICLO</th>
						<th>CURSO</th>
						<th>GRUPO</th>
					</tr>
					<!-- Plantilla para cada alumno -->
					<!-- utiliza <xsl:for-each> para recorrer cada elemento
					<alumno> en el XML. -->
					<xsl:for-each select="alumnos/alumno">
						<tr>
							<td>
								<xsl:value-of select="nia" />
							</td>
							<td>
								<xsl:value-of select="nombre" />
							</td>
							<td>
								<xsl:value-of select="apellidos" />
							</td>
							<td>
								<xsl:value-of select="genero" />
							</td>
							<td>
								<xsl:value-of select="fecha_de_nacimiento" />
							</td>
							<td>
								<xsl:value-of select="ciclo" />
							</td>
							<td>
								<xsl:value-of select="curso" />
							</td>
							<td>
								<xsl:value-of select="grupo" />
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>