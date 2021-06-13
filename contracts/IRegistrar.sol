// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

/**
 * @dev Interface of the Registrar.
 */
interface IRegistrar {
    /**
     * @dev Update the `value` of `key` for `recipient`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Update} event.
     */
    function updateAddress(address recipient, bytes32 key, address value) external returns (bool);
    function updateUint256(address recipient, bytes32 key, uint256 value) external returns (bool);
    function updateInt256(address recipient, bytes32 key, int256 value) external returns (bool);
    function updateString(address recipient, bytes32 key, string memory value) external returns (bool);
    function updateBytes(address recipient, bytes32 key, bytes memory value) external returns (bool);
    function updateBytes32(address recipient, bytes32 key, bytes32 value) external returns (bool);
    function updateBool(address recipient, bytes32 key, bool value) external returns (bool);

    /**
     * @dev The same as updateType.
     * 
     * Call updateType(recipient, keccak256(abi.encodePacked(key)), value)
     * 
     */
    function updateAddressByString(address recipient, string memory key, address value) external returns (bool);
    function updateUint256ByString(address recipient, string memory key, uint256 value) external returns (bool);
    function updateInt256ByString(address recipient, string memory key, int256 value) external returns (bool);
    function updateStringByString(address recipient, string memory key, string memory value) external returns (bool);
    function updateBytesByString(address recipient, string memory key, bytes memory value) external returns (bool);
    function updateBytes32ByString(address recipient, string memory key, bytes32 value) external returns (bool);
    function updateBoolByString(address recipient, string memory key, bool value) external returns (bool);

   /**
     * @dev Delete the `value` of `key` for `recipient`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Delete} event.
     */
    function deleteAddress(address recipient, bytes32 key) external returns (bool);
    function deleteUint256(address recipient, bytes32 key) external returns (bool);
    function deleteInt256(address recipient, bytes32 key) external returns (bool);
    function deleteString(address recipient, bytes32 key) external returns (bool);
    function deleteBytes(address recipient, bytes32 key) external returns (bool);
    function deleteBytes32(address recipient, bytes32 key) external returns (bool);
    function deleteBool(address recipient, bytes32 key) external returns (bool);

    /**
     * @dev Returns the `value` of `key` for `recipient`.
     *
     * This value changes when {updateType} or {updateTypeByString} are called.
     */
    function getAddress(address recipient, bytes32 key) external view returns (address value);
    function getUint256(address recipient, bytes32 key) external view returns (uint256 value);
    function getInt256(address recipient, bytes32 key) external view returns (int256 value);
    function getString(address recipient, bytes32 key) external view returns (string memory value);
    function getBytes(address recipient, bytes32 key) external view returns (bytes memory value);
    function getBytes32(address recipient, bytes32 key) external view returns (bytes32);
    function getBool(address recipient, bytes32 key) external view returns (bool);
    
    function getAddressByString(address recipient, string memory key) external view returns (address value);
    function getUint256ByString(address recipient, string memory key) external view returns (uint256 value);
    function getInt256ByString(address recipient, string memory key) external view returns (int256 value);
    function getStringByString(address recipient, string memory key) external view returns (string memory value);
    function getBytesByString(address recipient, string memory key) external view returns (bytes memory value);
    function getBytes32ByString(address recipient, string memory key) external view returns (bytes32);
    function getBoolByString(address recipient, string memory key) external view returns (bool);

    /**
     * @dev Emitted when `value` updated.
     *
     * Note that `value` may be zero.
     */
    event Updated(address indexed owner, address indexed recipient, bytes32 indexed key, address value);
    event Updated(address indexed owner, address indexed recipient, bytes32 indexed key, uint256 value);
    event Updated(address indexed owner, address indexed recipient, bytes32 indexed key, int256 value);
    event Updated(address indexed owner, address indexed recipient, bytes32 indexed key, string value);
    event Updated(address indexed owner, address indexed recipient, bytes32 indexed key, bytes value);
    event Updated(address indexed owner, address indexed recipient, bytes32 indexed key, bytes32 value);
    event Updated(address indexed owner, address indexed recipient, bytes32 indexed key, bool value);

    /**
     * @dev Emitted when `value` deleted.
     */
    event Deleted(address indexed owner, address indexed recipient, bytes32 indexed key, address value);
    event Deleted(address indexed owner, address indexed recipient, bytes32 indexed key, uint256 value);
    event Deleted(address indexed owner, address indexed recipient, bytes32 indexed key, int256 value);
    event Deleted(address indexed owner, address indexed recipient, bytes32 indexed key, string value);
    event Deleted(address indexed owner, address indexed recipient, bytes32 indexed key, bytes value);
    event Deleted(address indexed owner, address indexed recipient, bytes32 indexed key, bytes32 value);
    event Deleted(address indexed owner, address indexed recipient, bytes32 indexed key, bool value);
}