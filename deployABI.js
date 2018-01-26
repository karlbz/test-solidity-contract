// use this inside the geth console to deploy contract..! 
// essentially from the web3 deploy section..

var YourContractName = web3.eth.contract([{"your contract data here": data}]); // get this from remix 
var distro = distroContract.new(
   {
     from: web3.eth.accounts[0], 
     data: 'your contract data', // again, from remix
     gas: '4700000'
   }, function (e, contract){
    console.log(e, contract);
    if (typeof contract.address !== 'undefined') {
         console.log('Contract mined! address: ' + contract.address + ' transactionHash: ' + contract.transactionHash);
    }
 })