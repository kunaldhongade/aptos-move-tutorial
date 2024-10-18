/*

Liquidity Pool is a smart contract that contains a pool of tokens.  It allows users to deposit and withdraw tokens from the pool.   

Liquidity Pool

coin1 = 3201 USDT
coin2 = 324 DEV

495 USDT = 1 DEV

Formula with 5% fees

Value1 = Apply a 5% fees to the USDT ammount to be swapped.
Fees : 495*5/1000 = 2

Value2 = Multiply both USDT and DEV supply.
        MixSup : USDT*DEV = 998,712.
 
Value3 = Determine the new supply of USDT after the swap.
        NewUSDT = Coin1 + 495 = 3,696.

Value4 = Determine the new supply of DEV after the swap.
        NewDEV = MixSup/(NewUSDT - fee) = 270.
 
value5 = Determine the amount of DEV to transfer to user.
        Transfer = coin2 - NewDEV = 42
*/

module my_addrx::LiquidityPool{

        const E_NOT_ENOUGH: u64 = 0;

        const DEV: u64 = 1;
        const APT: u64 = 2;
        const WETH: u64 = 3;

        const POOL_DEV: u64 = 312;
        const POOL1_USDT: u64 = 3201;
        const DEV_NAME: vector<u8> = b"DEV";

        const POOL_APT: u64 = 21500;
        const POOL2_USDT: u64 = 124700;
        const APT_NAME: vector<u8> = b"APT";

        const POOL_WETH: u64 = 1310;
        const POOL3_USDT: u64 = 2750000;
        const WETH_NAME: vector<u8> = b"WETH";

        fun get_supply(coin: u64) : (u64, u64, vector<u8>) {
                if (coin == DEV) {
                        return (POOL1_USDT, POOL_DEV, DEV_NAME)
                } else if (coin == APT) {
                        return (POOL2_USDT, POOL_APT, APT_NAME)
                } else  {
                        return (POOL3_USDT, POOL_WETH, WETH_NAME)
                }
        }

        fun token_price (coin1: u64, coin2: u64) : u64 {
                assert!(coin1 > 0, E_NOT_ENOUGH);
                assert!(coin2 > 0, E_NOT_ENOUGH);

                return (coin1 / coin2)
        }

        // this applies a 5% fee to each swap tx.
        fun calculate_swap(coin1: u64, coin2: u64, coin1_amt: u64) : u64 {
                assert!(coin1_amt > 0, E_NOT_ENOUGH);

                let fee = coin1_amt * 5 / 1000;
                let mix_supply = coin1 * coin2;
                let new_usdt = coin1 + coin1_amt;
                let new_dev = mix_supply / (new_usdt - fee);
                let receive = coin2 - new_dev;
                
                receive
        }

        // #[test_only]
        // use std::debug::print;
        // #[test_only]
        // use std::string::{utf8};

        // #[test]
        // fun test_calculate_swap() {
        //         let (coin1, coin2, coin_name) = get_supply(WETH);
        //         let swap_amount = 3000; // USDT to swap.

        //         print(&utf8(b"Swap USDT for : "));
        //         print(&utf8(coin_name));

        //         let price_before = token_price(coin1, coin2);
        //         print(&utf8(b"Price before swap : "));
        //         print(&price_before);

        //         let receive = calculate_swap(coin1, coin2, swap_amount);
        //         print(&utf8(b"Receive : "));
        //         print(&receive);

        //         let price_after = token_price(coin1 + swap_amount, coin2 - receive);
        //         print(&utf8(b"Price after swap : "));
        //         print(&price_after);
        // }
}