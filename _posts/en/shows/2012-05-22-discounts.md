---
layout: default_en
title: Discounts
categories: [en, shows]
---

You can get your users the benefit of discounts over the marked price of the ticket. Just go to your show details page and click the tab <code>Discounts</code>.

<hr>
<h2>Editing a discount</h2>

<div class="row-fluid">
  <div class="span6">
    <p>Every discount must specify an type, amount and expiration date. The amount value has a different meaning depending on the selected discount type.</p>
    <table class="table table-bordered">
      <thead>
        <tr><th>Type</th><th>Description</th><th>Example</th></tr>
      </thead>
      <tbody>
        <tr><td>Percentage</td><td>A percentage that will be substracted from the ticket price.</td><td>"10" means "10% over the listed price".</td></tr>
        <tr><td>Per ticket</td><td>A fixed discount applied to each ticket. It is specified in the same currency used by the performance.</td><td>"10" means "10 x number of purchased tickets" EUR, if the performance uses euros.</td></tr>
        <tr><td>Fixed</td><td>A fixed discount applied to the purchase total. It is specified in the same currency used by the performance.</td><td> "10" means "10 EUR regardless of the number of tickets purchased", if the performance uses euros.</td></tr>
      </tbody>
    </table>
  </div>
  <div class="span6">
    <img src="/img/shows/discounts.png" class="himg">
  </div>
</div>

<p>Other fields in the discount form are:</p>

* **Name**: the identifier of this discount. Your contacts will have to know this name to be able to use this discount, so keep it short and easy to remember. Or long and hard to guess, for single-use discount codes.
* **Expiration date**: The date when this discount will be no longer available. Leave empty if the discoun does not expire.
* **Max redemptions**: The maximum number of times this discount coupon can be redeemed. Set to 1 for single-use coupons.

<p>When applying a discount greater than the ticket price, the total amount will be set to zero and the Koliseo fee will not be applied.</p>

<hr>
<h2>Using a discount</h2>

<p>When you are done with the discount, get one ticket (<code>View show</code> → <code>Get tickets</code>) and click the link to introduce a promotional code. If the code is correct, the discount will be deduced automatically.</p>

<p><img src="/img/shows/use-discount.png" class="himg"></p>

