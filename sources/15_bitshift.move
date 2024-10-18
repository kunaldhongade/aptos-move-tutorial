/*
    bitshift oprations
*/

module my_addrx::Bitshift{

    fun left_shift(value: u64, shift: u8): u64{
         // its limitation for shift is u8 which is 0-255. we can't shift more than 255 bits
        value << shift
    }

    fun right_shift(value: u64, shift: u8): u64{
        value >> shift
    }

//     #[test_only]
//     use std::debug::print;

//     #[test]
//     fun test_left_shift(){
//         let res = left_shift(7, 2);
//         print(&res);
//     }

//     #[test]
//     fun test_right_shift(){
//         let res = right_shift(7, 2);
//         print(&res);
//     }
}