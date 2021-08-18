// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

/**
 * @dev Interface of the Registrar.
 */
interface IRegistrar {
    /**
     * @dev updateEntry.
     * 
     * update the `value` of `key` for `target`.
     * 
     */
    function updateEntry(address target, bytes32 key, string memory value) external returns (bool);

    /**
     * @dev Returns the `value` of `key` for `recipient`.
     *
     * This value changes when {updateEntry} are called.
     */
    function getEntry(address target, bytes32 key) external view returns (string memory value);
    
    /**
     * @dev Emitted when `value` updated.
     *
     * Note that `value` may be zero.
     */
    event Updated(address indexed owner, address indexed target, bytes32 indexed key, string value);
}