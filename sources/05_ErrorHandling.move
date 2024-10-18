module my_addrx::ErrorHandling{
    use std::debug::print;
    use std::string::{String, utf8};

    fun sample_abort_error(value: String){
        if(value == utf8(b"password")){
            print(&utf8(b"Password is correct"));
        }else{
            abort 1
        }
    }

    fun sample_assert_error(value: String){
        assert!(value == utf8(b"password"), 1);
        print(&utf8(b"Password is correct"));
    }

    // #[test]
    // fun test_sample_abort_error(){
    //     sample_abort_error(utf8(b"password"));
    // }

    // #[test]
    // #[expected_failure]
    // fun test_sample_abort_error2(){
    //     sample_abort_error(utf8(b"padddssword"));
    // }

    // #[test]
    // fun test_sample_assert_error(){
    //     sample_assert_error(utf8(b"password"));
    // }

    // #[test]
    // #[expected_failure]

    // fun test_sample_assert_error2(){
    //     sample_assert_error(utf8(b"pas4sword"));
    // }
}