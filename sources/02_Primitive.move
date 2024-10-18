module my_addrx::Sample1{
    use std::debug::print;
    use std::string::{String, utf8};

    const ID: u64 = 100; // we can't change variable in global state

    fun set_value(): u64 {
        let value_id: u64 = 200;
        print(&value_id);

        let string_val:String = utf8(b"Hello World");
        print(&string_val);

        let string_byte:vector<u8> = b"Kunal Dhongade";
        print(&utf8(string_byte));

        ID
    }

    // #[test]
    fun test_set_value(){
        let r = set_value();
        print(&r);
    }

}