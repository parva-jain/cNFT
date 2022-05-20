const Migrations = artifacts.require("Migrations");
const Composable = artifacts.require("ComposableTopDown");
const SampleNFT = artifacts.require("SampleNFT");
const SampleERC20 = artifacts.require("SampleERC20");

module.exports = function (deployer) {
  deployer.deploy(Migrations);
  //deployer.deploy(Composable, "ComposableTopDown", "COMPTD", {gas: 8000000});
  deployer.deploy(Composable, "ComposableTopDown", "COMPTD");
  deployer.deploy(SampleNFT, "SampleNFT", "SNFT");
  deployer.deploy(SampleERC20);
};
