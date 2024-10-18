address my_addrx {

    // module one{
    //     friend my_addrx::two;
    //     friend my_addrx::three;
        
    //     public(friend) fun get_value(): u64 {
    //         return 100
    //     }

    //     #[view]
    //     public fun prices(): u64 {
    //         return 100
    //     }
    // }

    // module two{

    //     #[test_only]
    //     use std::debug::print;
    //     #[test_only]
    //     use my_addrx::one::get_value;
        

    //     #[test]
    //      fun test_func() {
    //         let res = get_value();
    //         print(&res);
    //     }
    // }

    // module three{
    //     #[test_only]
    //     use std::debug::print;
    //     #[test_only]
    //     use my_addrx::one::get_value;
        

    //     #[test]
    //      fun test_func() {
    //         let res = get_value();
    //         print(&res);
    //     }
    // }
}
