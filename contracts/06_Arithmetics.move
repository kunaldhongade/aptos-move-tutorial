module my_addrx::Arithmetics {
    const ADD: u64 = 0;
    const SUB: u64 = 1;
    const MUL: u64 = 2;
    const DIV: u64 = 3;
    const MOD: u64 = 4;

    const HIGHER: u64 = 0;
    const LOWER: u64 = 1;
    const HIGHER_EQ: u64 = 2;
    const LOWER_EQ: u64 = 3;

    fun arithmetic_operations(num1: u64, num2:u64, operation: u64):u64{
        if (operation == ADD){
            return (num1 + num2)
        }else if (operation == SUB){
            return (num1 - num2)
        }else if (operation == MUL){
            return (num1 * num2)
        }else if (operation == DIV){
            return (num1 / num2)
        }else {
            return (num1 % num2)
        }
    }

    fun equality_operations(num1: u64, num2:u64, operation: u64):bool{
        if (operation == HIGHER){
            return (num1 > num2)
        }else if (operation == LOWER){
            return (num1 < num2)
        }else if (operation == HIGHER_EQ){
            return (num1 >= num2)
        }else {
            return (num1 <= num2)
        }
    }

    // #[test_only]
    // use std::debug::print;

    // #[test]
    // fun test_arithmetic_operations(){
    //     let res = arithmetic_operations(50, 20, ADD);
    //     print(&res);

    //     let res1 = arithmetic_operations(130, 20, SUB);
    //     print(&res1);

    //     let res2 = arithmetic_operations(100, 20, MUL);
    //     print(&res2);

    //     let res3 = arithmetic_operations(100, 20, DIV);
    //     print(&res3);

    //     let res4 = arithmetic_operations(100, 20, MOD);
    //     print(&res4);
    // }

    // #[test]
    // fun test_equality_operations(){
    //     let res = equality_operations(50, 20, HIGHER);
    //     print(&res);

    //     let res1 = equality_operations(130, 20, LOWER);
    //     print(&res1);

    //     let res2 = equality_operations(100, 20, HIGHER_EQ);
    //     print(&res2);

    //     let res3 = equality_operations(100, 20, LOWER_EQ);
    //     print(&res3);
    // }
}