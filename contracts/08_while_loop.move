// Move provides two ways for defining loops:
// using while
// using infinite loop

module my_addrx::Loops
{

    fun sum_of_first_n_natural_numbers(n:u64):u64
    {
        let  sum = 0;
        let  i = 1;

        while(i<=n)
        {
            sum = sum + i;
            i = i + 1;
        };

        return sum
    }

    #[test_only]
    use std::debug::print;


    #[test]
    fun test_sum_of_first_n_natural_numbers()
    {
        let sum = sum_of_first_n_natural_numbers(10);
        print(&sum);
    }
}