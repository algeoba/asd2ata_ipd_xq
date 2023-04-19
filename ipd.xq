<html>
	<head>
		<title>IPD</title>
	</head>
	<body>
		<table border="1">
			<tr>
				<th>РИС. ПОЗ</th>
				<th>ОБОЗНАЧЕНИЕ</th>
				<th>НАИМЕНОВАНИЕ</th>
				<!--th>ПРИМЕНЯЕМОСТЬ</th-->
				<th>КОЛ-ВО НА СБ. ЕД.</th>
			</tr>
{
	for $x in doc("ipd.xml")//catalogSeqNumber
	return
			<tr>
				<td>{data($x/@item)}</td>
				<td>{data($x/.//@partNumberValue)}</td>
				<td>{data($x/.//descrForPart)}</td>
				<td>{data($x/.//quantityPerNextHigherAssy)}</td>
			</tr>
}
		</table>
	</body>
</html>