## Magma
[src](https://wstein.org/msri06/work/kohel/msri_magma.pdf)
```magma
QQ := RationalField();
x := 2*One(QQ);
QQ!17;
Parent(x); //Rational Field
ZZ := IntegerRing();
Parent(x) eq QQ;
Type(x); //FldRatElt
Type(QQ); //FldRat
FF<w> := FiniteField(3^6);
// [ Universe | Element : Loop | Predicate ]
[ FF | x : x in FiniteField(3^2) | Norm(x) eq 1 ]
// {} for sets
// {@  @} for indexed sets
<1, 2, 3> // tuples

Polynomial([2,-2,1]);
     K<i> := QuadraticField(-1);
Factorization(Polynomial([K|2,-2,1]));

f := hom< QQ -> QQ | x :-> x >;

```