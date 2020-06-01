## Cisla uctu

```py
check = lambda x : 0 == sum(pow(2,i,11)*int(str(x)[-i-1]) for i in range(10))%11
```

predcisli i hlavni cislo se nuluje jako polynom nad Z_11 v bode 2

## Karty

První číslice vám prozradí oblast nebo sektor, kterou se zabývá firma, jež kartu vydala. Například jedničkou a dvojkou začínají platební karty aerolinek, trojku uzmuly cestovní a zábavní podniky (např. American Express nebo Diners Club), šestku ukořistila obchodní sféra, sedmičku si zabral ropný průmysl a osmičkou začínají karty telekomunikačních společností.

```
Visa 4xxxxx
MasterCard 51xxxx – 55xxxx
Discover 6011xx, 644xxx, 65xxxx
Amex 34xxxx, 37xxxx
```

```py
ciferny_soucet = lambda x : x % 9 if (x % 9 != 0 or x == 0) else 9
check_card = lambda x: 0 == sum(ciferny_soucet((2-(i%2))*int(str(x)[i])) for i in range(16))%10
```



