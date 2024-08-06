const Oracle = artifacts.require("Oracle.sol");
const Consumer = artifacts.require("Consumer.sol");

module.exports = async function (deployer,_network, addresses ) {
    const [admin, reporter, _ ] = addresses;
    await deployer.deploy(Oracle, admin);
    const oracle = await Oracle.deployed();
    await oracle.updatereporter(reporter,true);
    await deployer.deploy(Consumer, oracle.address);
   
}