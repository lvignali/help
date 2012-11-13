---
layout: default
title: Discounts
categories: shows
---

<h3>Discount types</h3>

Every user can create discount codes that are available for events created by the same user. The discount amount has a different meaning depending on the ticket type:

<p><img src="/img/discount-form.png" class="img-polaroid img-rounded"></p>

<table>
	<thead>
		<tr><th>Type</th><th>Description</th><th>Example</th></tr>
	</thead>
	<tbody>
		<tr><td>Percentage</td><td>A percentage that will be substracted from the ticket price.</td><td>A percentage discount of 10 means "10% over the listed price".</td></tr>
		<tr><td>Per ticket</td><td>A fixed discount applied to each ticket. It is specified in the same currency used by the performance.</td><td>A per ticket discount of 5 will deduce (5 x number of purchased tickets) EUR if the performance uses euros.</td></tr>
		<tr><td>Fixed</td><td>A fixed discount applied to the purchase total. This amount is also specified in the same currency used by the performance.</td><td> A fixed discount of 10 will be substracted once from the purchase total regardless of the number of tickets purchased.</td></tr>
	</tbody>
</table>

<p>Other fields in the discount form are:</p>

* **Name**: the identifier that will be used during the purchase process to get access to this discount. Your contacts will have to know this name to be able to use this discount, so keep it short and easy to remember.
* **Expiration date**: The date when this discount will become no longer available. Leave empty for no expiration date.
* **Max redemptions**: The maximum number of times this discount coupon can be redeemed. Set to 1 for single-use coupons.

<h3>Don't limit your discount</h3>

<p>If the discount value is greater than the ticket price, the price will be set to zero. In this case, the ticket will be handled as a free ticket and the Koliseo fee will not be applied.</p>

<p><img src="/img/discount-applied.png" class="img-polaroid img-rounded"></p>
