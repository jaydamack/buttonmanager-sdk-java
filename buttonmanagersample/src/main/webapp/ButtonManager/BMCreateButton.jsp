<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PayPal SDK-BMCreateButton</title>
<%
	StringBuilder url = new StringBuilder();
	url.append("http://");
	url.append(request.getServerName());
	url.append(":");
	url.append(request.getServerPort());
	url.append(request.getContextPath());
	String returnURL = url.toString() + "/index.html";
%>
</head>
<body>
	<img src="https://devtools-paypal.com/image/bdg_payments_by_pp_2line.png" alt="PAYMENTS BY PayPal" />
	<div id="wrapper">
		<div id="header">
			<h3>BMCreateButton</h3>
			<div id="apidetails">
				<p>BMCreateButton API operation is used to create a Website
					Payments Standard button. You an create either a button that is
					hosted on PayPal or a non-hosted button</p>
			</div>
		</div>
		<form method="POST">
			<div id="request_form">
				<div class="params">
					<div class="param_name">ButtonType*</div>
					<div class="param_value">
						<select name="buttonType">
							<option value="AUTOBILLING">AutoBilling</option>
							<option value="BUYNOW">BuyNow</option>
							<option value="CART">Cart</option>
							<option value="DONATE">Donate</option>
							<option value="GIFTCERTIFICATE">Gift Certificate</option>
							<option value="PAYMENT">Payment</option>
							<option value="PAYMENTPLAN">Payment Plan</option>
							<option value="SUBSCRIBE">Subscribe</option>
							<option value="UNSUBSCRIBE">Unsubscribe</option>
							<option value="VIEWCART">View Cart</option>
						</select>
					</div>
				</div>
				<div class="params">
					<div class="param_name">ButtonCode*</div>
					<div class="param_value">
						<select name="buttonCode">
							<option value="CLEARTEXT">ClearText</option>
							<option value="ENCRYPTED">Encrypted</option>
							<option value="HOSTED">Hosted</option>
							<option value="TOKEN">Token</option>
						</select>
					</div>
				</div>
				<div class="params">
					<div class="param_name">ReturnURL*</div>
					<div class="param_value">
						<input type="text" name="returnURL" value="<%=returnURL%>"
							size="50" maxlength="260" />
					</div>
				</div>
				<div class="params">
					<div class="param_name">Item Name*</div>
					<div class="param_value">
						<input type="text" name="itemName" value="Widget" size="50"
							maxlength="260" />
					</div>
				</div>
				<div class="params">
					<div class="param_name">Business Mail*</div>
					<div class="param_value">
						<input type="text" name="businessMail"
							value="jb-us-seller@paypal.com" size="50" maxlength="260" />
					</div>
				</div>
				<div class="params">
					<div class="param_name">Amount*</div>
					<div class="param_value">
						<input type="text" name="amt" value="2.00" size="50"
							maxlength="260" />
					</div>
				</div>
				<div class="params">
					<div class="param_name">IPN Notification URL (For receiving IPN call back from PayPal)*</div>
					<div class="param_value">
						<input type="text" name="notifyURL" value="" size="50"/>
					</div>
				</div>
				<p>For Payment Plan Button</p>
				<table class="params">
					<tr>
						<th class="param_name">Billing Cycles</th>
						<th class="param_name">Installment Amount</th>
						<th class="param_name">Billing Frequency</th>
						<th class="param_name">Billing Period</th>
						<th class="param_name">Option Type</th>
					</tr>
					<tr>
						<td class="param_value"><input type="text"
							name="billingCycles" value="3" size="25" maxlength="260" />
						</td>
						<td class="param_value"><input type="text"
							name="installmentAmt" value="3.00" size="25" maxlength="260" />
						</td>
						<td class="param_value"><input type="text" name="billingFreq"
							value="3" size="25" maxlength="260" />
						</td>
						<td class="param_value"><select name="billingPeriod">
								<option value="NoBillingPeriodType">NoBillingPeriodType</option>
								<option value="Day">Day</option>
								<option value="Week">Week</option>
								<option value="SemiMonth">SemiMonth</option>
								<option value="Month">Month</option>
								<option value="Year">Year</option>
						</select>
						</td>
						<td class="param_value"><select name="optionType">
								<option value="NoOptionType">NoOptionType</option>
								<option value="FULL">Full</option>
								<option value="EMI">EMI</option>
								<option value="VARIABLE">Variable</option>
						</select>
						</td>
					</tr>
				</table>
				<p>For Gift Certificate Button</p>
				<div class="params">
					<div class="param_name">Shopping Url</div>
					<div class="param_value">
						<input type="text" name="shoppingUrl" value="http://www.ebay.com"
							size="50" maxlength="260" />
					</div>
				</div>
				<p>For Auto billing Button</p>
				<div class="params">
					<div class="param_name">Minimum Amount</div>
					<div class="param_value">
						<input type="text" name="minAmount" value="1.00" size="50"
							maxlength="260" />
					</div>
				</div>
				<p>For Payment Button</p>
				<div class="params">
					<div class="param_name">SubTotal</div>
					<div class="param_value">
						<input type="text" name="subTotal" value="2.00" size="50"
							maxlength="260" />
					</div>
				</div>
				<p>For Subscribe Button</p>
				<table class="params">
					<tr>
						<th class="param_name">Subscription Amount</th>
						<th class="param_name">Subscription Duration</th>
						<th class="param_name">Subscription Interval</th>
					</tr>
					<tr>
						<td class="param_value"><input type="text" name="subAmt"
							value="3.00" size="25" maxlength="260" />
						</td>
						<td class="param_value"><input type="text" name="subPeriod"
							value="3" size="25" maxlength="260" />
						</td>
						<td class="param_value"><select name="subInterval">
								<option value="D">Day</option>
								<option value="W">Week</option>
								<option value="M">Month</option>
								<option value="Y">Year</option>
						</select>
						</td>
					</tr>
				</table>
				<div class="submit">
					<input type="submit" name="BMCreateButtonBtn"
						value="BMCreateButton" /><br />
				</div>
				<a href="../index.html">Home</a> <br /> <br />
				<p>
					Note:All Button Types will not work with all Button Code types.In
					order to know the details see <a
						href="https://www.x.com/developers/paypal/documentation-tools/api/bmcreatebutton-api-operation-soap">here</a><br />And
					also, depends on the Button Type, we need to set Button Var,
					details for that also will be in the above link
				</p>
			</div>
		</form>
		<div id="relatedcalls">
			See also
			<ul>
				<li><a href="BMUpdateButton">BMUpdateButton</a>
				</li>
				<li><a href="BMButtonSearch">BMButtonSearch</a>
				</li>
				<li><a href="BMGetButtonDetails">BMGetButtonDetails</a>
				</li>
				<li><a href="BMManageButtonStatus">BMManageButtonStatus</a>
				</li>
				<li><a href="BMSetInventory">BMSetInventory</a>
				</li>
				<li><a href="BMGetInventory">BMGetInventory</a>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>