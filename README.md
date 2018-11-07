# TRANSPORTE

```
truffle migrate --reset
truffle console

Transporte.deployed().then(function(i){app=i})
piloto = web3.eth.accounts[1]
usuario = web3.eth.accounts[2]
app.pagar(piloto,1,{from:usuario, value: web3.toWei(0.0001,"ether")})
app.pagar(2,{from:usuario, value: web3.toWei(5,"ether")})
app.pagar(3,{from:usuario, value: web3.toWei(5,"ether")})
app.empresa()
app.piloto()
app.tipo()
app.pagos(1)
app.pagos(1).then(function(c) {pago = c })
pago[1].toNumber()
web3.eth.getBalance(usuario).toNumber()
web3.eth.getBalance(piloto).toNumber()
```