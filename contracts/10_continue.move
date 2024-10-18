module my_addrx::Loops
{
    use std::debug::print;

    fun sum_of_first_n_natural_numbers(n:u64)
    {
        let i = 0;   

        while (i <= n)
        {
            i = i + 1;

            if (i % 2 == 0)
            {
                continue
            };

            print(&i);
        };

    }

    #[test]
    fun test_sum_of_first_n_natural_numbers()
    {
        sum_of_first_n_natural_numbers(10);
        
    }
}
