<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
		<title>Tours and Modules for <!-- TMPL_VAR NAME=lead --></title>
	</head>
	<body baseprefix="<!-- TMPL_VAR NAME=BASEPREFIX -->">
		<p><b>TOUR DETAILS</b></p>
		<table>
			<tr>
				<td><b>Lead Name: </b></td>
				<td><b><!-- TMPL_VAR NAME=lead --></b></td>
			</tr>
			<tr>
				<td><b>Email Address: </b></td>
				<td><b><!-- TMPL_VAR NAME=email --></b></td>
			</tr>
			<tr>
				<td><b>Quotation Number: </b></td>
				<td><b><!-- TMPL_VAR NAME=qid --></b></td>
			</tr>
		</table>
		<p>
			<b>Dear <!-- TMPL_VAR NAME=lead -->,</b>
		</p>
		<p>
			Thank you for making an enquiry through <b>Traveller's Palm</b>.
			We value your business and look forward to assisting you.
		</p>
		<p> Please find  our quotation for your tour:
		</p>
		<table>
			<tr style="background: #31316a; color: #fff; font-weight: bold;"><th>Item</th><th>Currency</th><th style="text-align: right;">Amount</th></tr>
			<tr style="color: #31316a;">
				<td><!-- TMPL_VAR NAME=pax --> Travellers @ <!-- TMPL_VAR NAME=ratepp --></td>
				<td><!-- TMPL_VAR NAME=currency --></td>
				<td style="text-align: right;"><!-- TMPL_VAR NAME=touramt --></td>
			</tr>
			<tr style="color: #31316a;">
				<td>Service Tax @ <!-- TMPL_VAR NAME=taxpc -->%</td>
				<td><!-- TMPL_VAR NAME=currency --></td>
				<td style="text-align: right;"><!-- TMPL_VAR NAME=tax --></td>
			</tr>
			<tr style="color: #31316a;">
				<td>Total</td>
				<td><!-- TMPL_VAR NAME=currency --></td>
				<td style="text-align: right;"><!-- TMPL_VAR NAME=amt --></td>
			</tr>
			<tr style="background: #31316a; color: #fff; font-weight: bold;">
			<!-- TMPL_IF NAME=is_advance -->
				<td>Advance Due Now:</td>
				<td><!-- TMPL_VAR NAME=currency --></td> 
				<td style="text-align: right;"><!-- TMPL_VAR NAME=advamt --></td>
			<!-- TMPL_ELSE -->
				<td>Full Amount Due Now:</td>
				<td><!-- TMPL_VAR NAME=currency --></td> 
				<td style="text-align: right;"><!-- TMPL_VAR NAME=amt --></td>
			<!-- /TMPL_IF -->
			</tr>
		</table>
		<p>
		<!-- TMPL_IF NAME=is_advance -->
			The balance of the holiday cost <b><!-- TMPL_VAR NAME=currency --> <!-- TMPL_VAR NAME=balamt --></b> must be paid to us
		 	before <!-- TMPL_VAR NAME=baldate -->. A reminder will be sent to you a week before the balance payment is due.
		<!-- TMPL_ELSE -->
			Full payment is required as your booking is within 3 calendar months prior to the start of
			your holiday.
		<!-- /TMPL_IF -->
		</p>
		<p>
			<a href="<!-- TMPL_VAR NAME=payurl -->">Click here</a> to view your itinerary and make the payment due now.
		</p>
		<p>
			Best regards,<br />
			<b>Traveller's Palm</b>
		</p>
		<p style="color: red;">
			Please do not reply to this email. It has been sent by an automated booking system 
			from an address that is not monitored. 
		</p>
	</body>
</html>
