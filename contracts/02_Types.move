module my_addrx::Types02{

    const ADDR: address = @my_addrx;

    fun confirm_value(num: u64): bool {
        if(num >0) true else false
    }

    fun return_multiple_values(num: u64): (u64, bool){
        let res = confirm_value(num);
        (num, res)
    }

    // #[test_only]
    use std::debug::print;

    // #[test]

    fun test_function(){
        print(&ADDR);
        let res = confirm_value(10);
        print(&res);

        let (num, res) = return_multiple_values(20);
        print(&num);print(&res);
    }
}