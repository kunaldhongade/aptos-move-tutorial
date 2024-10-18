address my_addrx {
    module PriceOracle{
        public fun btc_price(): u128{
            52000
        }
    }

    module CastingDemo{
        use my_addrx::PriceOracle;
        use std::debug::print;

        fun calculate_swap(){
            let price = PriceOracle::btc_price();
            let price_w_fee: u64 = (price as u64) + 5;
            print(&price_w_fee);
        }

        #[test]
        fun test_calculate_swap(){
            calculate_swap();
        }
    }
}