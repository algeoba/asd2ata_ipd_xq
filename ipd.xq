<html>
	<head>
		<title>DEMO IPD</title>
	</head>
	<body>
		<table border="1">
			<tr>
				<th>РИС. ПОЗ</th>
				<th>ОБОЗНАЧЕНИЕ</th>
				<th>НАИМЕНОВАНИЕ</th>
				<th>ПРИМЕНЯЕМОСТЬ</th>
				<th>КОЛ-ВО НА СБ. ЕД.</th>
			</tr>
			{
			let $doc := doc("_941_.xml")  
			let $applic := ($doc//referencedApplicGroup/applic) 
			for $catSeqNum in $doc//catalogSeqNumber
			return
			<tr>
				<td>{data($catSeqNum/@item)}</td>
				<td>{data($catSeqNum/.//@partNumberValue)}</td>
				<td>{data($catSeqNum/.//descrForPart)}</td>
				<td>{data($applic[@id = data($catSeqNum/.//@applicRefIds)]//@applicPropertyValues)}</td>
				<td>{data($catSeqNum/.//quantityPerNextHigherAssy)}</td>
			</tr>
			}
		</table>
	</body>
</html>
