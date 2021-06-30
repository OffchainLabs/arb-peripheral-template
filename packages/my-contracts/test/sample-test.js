const { expect } = require("chai");

describe("Oracle", function() {
  it("Should deploy oracle", async function() {
    const Oracle = await ethers.getContractFactory("Oracle");
    const router = "0x0000000000000000000000000000000000000000"
    const oracle = await Oracle.deploy(router);
    await oracle.deployed();
  });
});
