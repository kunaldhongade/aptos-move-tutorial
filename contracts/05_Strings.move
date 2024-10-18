// move does not provide any native types for string but we can use vector u8 or module provided by standard lib.

module my_addrx::Strings{
    use std::debug::print;
    use std::string::utf8;
    use std::string::String;

    fun strings(){
        // vector<u8>
        let a:vector<u8> = b"Hello world"; // byte string 
        print(&a); // output in byte literal

        print(&utf8(a)); // this is convert byte literal to normal string

        // String data type 

        let s:String = utf8(b"kunal dhongade 123");
        print(&s);
    }

    #[test]
    fun test_strings(){
        strings();
    }
}