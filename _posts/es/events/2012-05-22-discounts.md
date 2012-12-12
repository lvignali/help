---
layout: default_es
title: Descuentos
categories: [es, events]
---

Puedes permitir a tus usuarios que se beneficien de descuentos sobre el precio normal de la entrada. Sólo hay que ir a la página de detalles de un evento y hacer click en la pestaña <code>Descuentos</code>.

<hr>
<h2>Editar un descuento</h2>

<div class="row-fluid">
  <div class="span6">
    <p>En cada descuento se debe especificar el tipo de descuento, el importe y la fecha de caducidad. El importe tiene un significado diferente dependiendo del tipo de descuento seleccionado.</p>
    <table class="table table-bordered">
      <thead>
        <tr><th>Tipo</th><th>Descripción</th><th>Ejemplo</th></tr>
      </thead>
      <tbody>
        <tr><td>Porcentaje</td><td>Un porcentaje que será restado del valor nominal del precio de la entrada.</td><td>"10" significa "10% sobre el valor de la entrada".</td></tr>
        <tr><td>Por entrada</td><td>Cantidad fija que se descuenta de cada entrada.</td><td>"10" significa "10 euros por el número de entradas compradas”, si el evento está en euros.</td></tr>
        <tr><td>Fijo</td><td>Cantidad fija a descontar del importe total.</td><td>"10" significa "10 EUR, independientemente del número de entradas compradas", si el evento está en euros.</td></tr>
      </tbody>
    </table>
  </div>
  <div class="span6">
    <img src="/img/events/discounts.png" class="himg">
  </div>
</div>

<p>Otros campos en el formulario de descuento:</p>

* **Nombre**: el identificador de este descuento. Los usuarios tienen que conocer este campo para usar el descuento, así que es preferible usar un nombre corto y fácil de recordar - o largo y difícil de adivinar, para cupones de un solo uso.
* **Fecha de caducidad**: Es la fecha en la cual el descuento deja de estar operativo.  Puede dejarse vacío si el descuento nunca expira.
* **Número de usos**: Número máximo de veces que el descuento puede utilizarse. Puede introducirse 1 para cupones de un solo uso.

<p>Cuando se aplica un descuento mayor que el valor de la entrada, el precio final será cero y Koliseo no aplicará ninguna comisión a la entrada.</p>

<hr>
<h2>Usar un descuento</h2>

<p>Una vez introducido el descuento, accede a la página de comprar entradas (<code>Ver evento</code> → <code>Comprar</code>) y haz click en el enlace para introducir el código descuento. Si el código es correcto, el descuento se deducirá del precio de la entrada automáticamente.</p>

<p><img src="/img/events/use-discount.png" class="himg"></p>

