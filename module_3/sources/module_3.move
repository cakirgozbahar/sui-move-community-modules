module module_3::hero; 
    // ========= IMPORTS =========
    use std::string::String;
    use sui::coin::{Self, Coin};
    use sui::sui::SUI;
    
    // ========= STRUCTS =========
    public struct Hero has key, store {
        id: UID,
        name: String,
        image_url: String,
        power: u64,
    }

    public struct ListHero has key, store {
        // TODO: Add the fields for the ListHero
        // 1. The id of the ListHero
        // 2. The nft object
        // 3. The price of the Hero
        // 4. The seller of the Hero
    }

    public struct HeroMetadata has key, store {
        // TODO: Add the fields for the HeroMetadata
        // 1. The id of the HeroMetadata
        // 2. The timestamp of the HeroMetadata
    }

    // ========= FUNCTIONS =========

    #[allow(lint(self_transfer))]
    public entry fun create_hero(name: String, image_url: String, power: u64,  ctx: &mut TxContext) {
        let hero = Hero {
            id: object::new(ctx),
            name,
            image_url,
            power
        };

        let hero_metadata = HeroMetadata {
            id: // TODO: Create the HeroMetadata object,
            timestamp: // TODO: Get the epoch timestamp ,
        };

        transfer::transfer(hero, ctx.sender());

        // TODO: Freeze the HeroMetadata object
        
    }


    public entry fun list_hero(nft: Hero, price: u64, ctx: &mut TxContext) {
        // TODO: Define the ListHero object,
        let list_hero = ListHero {
            // TODO: Define the fields for the ListHero object
            // 1. Create the object id for the ListHero object
            // 2. The nft object
            // 3. The price of the Hero
            // 4. The seller of the Hero (the sender)
        };

        // TODO: Share the ListHero object 
        
    }

    public entry fun buy_hero(list_hero: &mut ListHero, coin: Coin<SUI>) {
        // TODO: Assert the price of the Hero is equal to the coin amount
        // TODO: Transfer the coin to the seller
        // TODO: Transfer the Hero object to the sender
        // TODO: Destroy the ListHero object
    }

    public entry fun transfer_hero(hero: Hero, to: address) {
        transfer::public_transfer(hero, to);
    }





