var proofOfExistence = artifacts.require("./proofOfExistence.sol");
module.exports = function(deployer) {
  deployer.deploy(proofOfExistence);
};
