
## Overview

- This project is a web3 sandbox proof of concept, that allows users to purchase digital worlds in the form of NFTs, build upon them using 3D rendered blocks, and share those worlds inside of a metaverse that is saved to the blockchain.
- The proof of concept utilizes an in-game cryptocurrency, called MBlox, which faciliates the purchasing of different digital blocks for users to build with and the worlds in which they build.
- The project is also playable without any web3 knowledge or integration; there is a "Sandbox" mode available from the Main Menu which allows a user to build within a provided digital world with an infinite number of blocks without the need of any web3 wallet connection or crypto balance of any kind.
- NOTE: This project is a proof of concept, and not intended to represent a polished Web3 application. The contract system used in this application has not been audited, and I take no responsiblity for any issues that may arise out of its extended use.

## Gameplay Overview

There are four main aspects of gameplay within the project. These are as follows:

### Exchange

- This aspect of gameplay allows users to convert their Polygon Matic into the in-game currency (MBlox) to use within the game.
- Alternatively, if the user has previously played and has earned the in-game METR token of that game with the wallet they have connected to this project, they will be able to claim a lump sum of MBlox equal to the difference their last claim and their current claim, (e.g. if they are claiming for the first time, the user can claim their entire METR balance as MBlox, and if they play METARANGERS since then and claim more METR since then, they can claim the new METR they have earned as MBlox)

### Marketplace

- This area of the project is where players can exchange their MBlox for the MetaBlox token, which represents the different blocks that can be used to build within the worlds of the game
- The different variations of blocks that are available to the user are Dirt, Grass, Glass, Wood, Log, Lava, Gold, Opal, Amethyst, and Space
### Sandbox

- As described earlier, this aspect of game allows the player to enter a digital world (equivalent to one of the worlds of the game) and build whatever they desire within it with an unlimited number of blocks at their disposal.
- Players are unable to save anything that they create within the Sandbox to the blockchain, as this mode is intended to be an avenue of gameplay available to Web2 users.

### MetaGrid

- This aspect of gameplay allows user to either purchase new worlds to build in, build in said purchased worlds, visit other user's individual worlds, or visit the MetaGrid itself, which is a vast digital world in which all one hundred available worlds within the project and rendered and laid out before the user, which they can explore in its entirety.
- The different worlds are laid out in a grid of tiles, with coloured tiles represent worlds that are already purchased by users, and black tiles representing unclaimed worlds available for purchase.

## Contract System

- This contract facilitates interactions between the game and smart contract system.
- It is a [custom upgradeable contract] and includes several key aspects of functionality, including getter functions for retrieving values relevant to the game, enabling users to purchase other tokens within the MBlox in-game currency, and handling changes to world tokens that users make by placing and removing blocks.
- The Game Manager also restricts the minting and burning capability of the other contracts in the system to actions that occur in the game, to prevent malicious users from attempting to mint or burn tokens outside of the context of the game. This is primarily facilitated through the use of a backend wallet that signs transactions that are created within the game. This signature is then deconstructed to determine the wallet that signed it, which is checked against a pre-set backend wallet address, to confirm that the transaction is legitimate.

