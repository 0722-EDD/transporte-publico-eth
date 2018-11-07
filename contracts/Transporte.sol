pragma solidity ^0.4.24;

contract Transporte {

    address public empresa;
    uint public cantidadPagos;

    struct Pago {
        address piloto;
        address usuario;
        uint userBalance;
        uint tipo;   //  1   =   dia     2   =   noche
    }

    mapping(uint => Pago) public pagos;

    constructor() public {
        empresa = msg.sender;
        cantidadPagos = 0;
    }

    function pagar(address _piloto, uint _tipo) public payable {
        
        cantidadPagos++;
        pagos[cantidadPagos] = Pago(_piloto, msg.sender, msg.sender.balance, _tipo);

        if(_tipo == 1){
            msg.sender.transfer(msg.value);
        }else{
            empresa.transfer(msg.value);
        }                     
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
    
}