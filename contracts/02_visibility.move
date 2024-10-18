/*

 Visibility fun function_name(arg1:data_type, arg2:data_type, ..) : (u8, bool)
 {
    // your code
 }

 private - by default the functions in move are private (that means they can only be called within the same module and cannot be access outside the module by other modules and scripts.)

 public - A public function can be called by any function in any module or script.

 public (friend) - A public (friend) function can be called by any function in the same module and by the function of the module which are explicitly defined in the friend list.

*/

module my_addrx::A
{
    friend my_addrx::B;

    fun A_foo(): u64
    {
        return 999999
    }

    public fun Another ():u64
    {
        return A_foo()
    }

    public(friend) fun A_foo2():u8
    {
        return 66
    }
}

module my_addrx::B
{
    use std::debug::print;

    fun B_foo():u64
    {
        return my_addrx::A::Another()
    }

    fun friendFoo():u8
    {
        return my_addrx::A::A_foo2()
    }

    #[test]
    fun test_AB(){
        let a = B_foo();
        print(&a);

        let friendFoo = friendFoo();
        print(&friendFoo);
    }
}