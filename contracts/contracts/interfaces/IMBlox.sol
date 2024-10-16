// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "./IUtilities.sol";
import "./IGameToken.sol";

/**
 * 
 * ███╗   ███╗███████╗████████╗ █████╗ ██████╗ ██╗      ██████╗ ██╗  ██╗
 * ████╗ ████║██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██║     ██╔═══██╗╚██╗██╔╝
 * ██╔████╔██║█████╗     ██║   ███████║██████╔╝██║     ██║   ██║ ╚███╔╝ 
 * ██║╚██╔╝██║██╔══╝     ██║   ██╔══██║██╔══██╗██║     ██║   ██║ ██╔██╗ 
 * ██║ ╚═╝ ██║███████╗   ██║   ██║  ██║██████╔╝███████╗╚██████╔╝██╔╝ ██╗
 * ╚═╝     ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═════╝ ╚══════╝ ╚═════╝ ╚═╝  ╚═╝
 * 
 * @title MBlox contract interface
 * @author BGHProjects
 * @notice Describes the external functions and other utilities used by the MBlox contract
 * 
 */

interface IMBlox is IGameToken, IUtilities{

    /**
    * =======================
    *   EVENTS
    * =======================
    */

    /// @dev Emitted when MBlox has been minted
    /// @param amount The amount of MBlox that has been minted
    /// @param to The address to which the MBlox has been minted
    event MBloxMinted(
        uint256 indexed amount,
        address to
    );

    /// @dev Emitted when MBlox has been burned
    /// @param amount The amount of MBlox that has been minted 
    event MBloxBurned(
        uint256 indexed amount,
        address from
    );

    /**
    * =======================
    *   FUNCTIONS
    * =======================
    */

    /// @dev Mints MBlox token to an address
    /// @param to The address to which the MBlox will be minted
    /// @param amount The amount of MBlox that will be minted
    function mintMBlox(address to, uint256 amount) external;

    /// @dev Burns MBlox token from an address
    /// @param from The address from which the MBlox will be burned
    /// @param amount The amount of MBlox that will be burned
    function burnMBlox(address from, uint256 amount) external;
}