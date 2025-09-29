// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CertificateSystem {
    address public owner;
    uint256 public certificateCount;

    struct Certificate {
        uint256 id;
        address recipient;
        bool isValid;
    }

    mapping(uint256 => Certificate) public certificates;
    mapping(address => uint256[]) public certificatesByOwner;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can issue certificates");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    // Issue a new certificate
    function issueCertificate(address recipient) public onlyOwner {
        certificateCount++;
        certificates[certificateCount] = Certificate(certificateCount, recipient, true);
        certificatesByOwner[recipient].push(certificateCount);
    }

    // Verify if an address owns a valid certificate
    function verifyCertificate(uint256 certId, address user) public view returns (bool) {
        Certificate memory cert = certificates[certId];
        return cert.recipient == user && cert.isValid;
    }

    // Get all certificates of a user
    function getCertificates(address user) public view returns (uint256[] memory) {
        return certificatesByOwner[user];
    }
}
