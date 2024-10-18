    /*
    Bitwise operators are used to perform bitwise operations on integers.
    The bitwise operators are used to perform bit-level operations on (binary) numbers.
    They are the operators that operate on the binary representation of the numbers.

    1. | OR  : if either binary value is 1, the result is 1 else 0
        eg. a = 7 (0111)
            b = 3 (0011)
            a | b = 7 (0111) | 3 (0011) = 7 (0111)

    2. & AND : if both binary values are 1, the result is 1 else 0
        eg. a = 7 (0111)
            b = 3 (0011)
            a & b = 7 (0111) & 3 (0011) = 3 (0011)

    3. ^ XOR : if both binary values are different, the result is 1 else 0
        eg. a = 7 (0111)
            b = 3 (0011)
            a ^ b = 7 (0111) ^ 3 (0011) = 4 (0100)
    */


module my_addrx::Bitwise{
    const OR: u64 = 0;
    const AND: u64 = 1;
    const XOR: u64 = 2;

    fun bitwise_operations(num1: u64, num2:u64, operation: u64):u64{
        if (operation == OR){
            return (num1 | num2)
        }else if (operation == AND){
            return (num1 & num2)
        }else {
            return (num1 ^ num2)
        }
    }

    // #[test_only]
    // use std::debug::print;

    // #[test]
    // fun test_bitwise_operations(){
    //     let res = bitwise_operations(7, 3, OR);
    //     print(&res);

    //     let res1 = bitwise_operations(7, 3, AND);
    //     print(&res1);

    //     let res2 = bitwise_operations(7, 3, XOR);
    //     print(&res2);
    // }
}