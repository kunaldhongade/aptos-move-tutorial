// primitive data Types

/*
three are three premitive data types in move

1. integers : u8, u64, u128 by default its u64
2. boolean : true, false 
3. address : 0x000000000000

move does not have string type or floating type.
*/

module my_addrx::PrimitiveTypes
{
    use std::debug::print;
      
    fun primitive_types()
    {
        // integers
        let a:u8 = 10;
        print(&a);

        let b:u64 = 1043;
        print(&b);

        let a:u128 = 104_377_377_424;
        print(&a);

        let _c:u64 = (a as u64) + b;

        // boolean
        let isInt:bool = true;
        let isFloat:bool = false;
        let isName = false;

        print(&isInt); print(&isFloat); print(&isName);

        // Address

        let addr1:address = @my_addrx; // named address
        print(&addr1);

        let addr2:address = @0x3828d383933; // numaric address
        print(&addr2);

    }

    #[test]
    fun test_primitive_types(){
        primitive_types();
    }
}