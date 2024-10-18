// abort and assert statement

// return and abort are two control flow constructs that end execution, one for the current function and one for the entire transaction.

// abort expression halts execution of the current function and reverts all changes made to global state by the current transaction.

// assert is a builtin, macro like operation provided by the Move compiler. It takes two arguments, a condition of type bool and a code of type u64

module my_addrx::Errors
{
    // use std::debug::print;
    // use std::string::utf8;

    fun isEven(num:u64)
    {
        // abort
        // if(num%2==0){
        //     print(&utf8(b"This is Even number"));
        // } else {
        //     abort 1 // this stop execution of current fution and gives us code 1 as error
        // };

        assert!(num%2==0,1)
    }

    #[test]
    fun testing(){
        isEven(6);
    }

        #[test]
    fun testing_2(){
        isEven(8);
    }
}