pragma solidity ^0.4.15;
// Proof of Existence contract, version 1


contract proofOfExistence {
  // state
  bytes32 public proof;
  // calculate and store the proof for a document
  // *transactional function*
  function notarize (string document) public {
    proof = proofFor(document);
  }

//pure as no access to blockchain needed
  function proofFor(string document) public pure returns (bytes32) {
    return sha256(document);
  }
}
