// infinite loop

module my_addrx::InfiniteLoop
{
    
    fun infinite_loop(n:u64):u64
    {
        let i = 1;
        let sum = 0;
        loop
        {
            sum = sum + i;
            i = i + 1;

            if (i>n)
            {
                break
            }
        };
        return sum
    }

    #[test_only]
    use std::debug::print;

    #[test]
    fun test_infinite_loop()
    {
        let r = infinite_loop(38);
        print(&r);
    }
}