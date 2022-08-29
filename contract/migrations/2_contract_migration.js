const Index = artifacts.require("Index");

module.exports = function (deployer) {
  deployer.deploy(Index, 1, 2, 2, 1);
};
