// SPDX-License-Identifier: ChaingeFinance
pragma solidity ^0.8.13;


interface IFRC759 {
    event DataDelivery(bytes data);
    event SliceCreated(address indexed sliceAddr, uint256 start, uint256 end);

    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
    function totalSupply() external view returns (uint256);
    function maxSupply() external view returns (uint256);
    function fullTimeToken() external view returns (address);

    function balanceOf(address account) external view returns (uint256);
    function allowance(address owner, address spender) external view returns (uint256);

    function transferFrom(address from, address to, uint256 value) external returns (bool);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function approve(address spender, uint256 amount) external returns (bool);
    function timeSliceTransferFrom(address spender, address recipient, uint256 amount, uint256 start, uint256 end) external returns (bool);
    function timeSliceTransfer(address recipient, uint256 amount, uint256 start, uint256 end) external returns (bool);

    function createSlice(uint256 start, uint256 end) external returns (address);
    function sliceByTime(uint256 amount, uint256 sliceTime) external;
    function mergeSlices(uint256 amount, address[] calldata slices) external;
    function getSlice(uint256 start, uint256 end) external view returns (address);
    function timeBalanceOf(address account, uint256 start, uint256 end) external view returns (uint256);

    function paused() external view returns (bool);
    function allowSliceTransfer() external view returns (bool);
    function blocked(address account) external view returns (bool);

    function MIN_TIME() external view returns (uint256);
    function MAX_TIME() external view returns (uint256);
}

