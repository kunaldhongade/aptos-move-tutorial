module my_addrx::Loops{

    fun sample_for_loop(count: u64):u64{
        let value = 0;
        for(i in 0..count){
            value = value + i;
        };
        value
    }
    /*
    value = 0
    i = 0

    0 = 0 + 0
    0 = 0 + 1
    1 = 1 + 2
    3 = 3 + 3
    6 = 6 + 4
    10 = 10 + 5
    15 = 15 + 6
    21 = 21 + 7
    28 = 28 + 8
    36 = 36 + 9
    45 = 45 + 10
    */

    fun sample_while_loop(count: u64):u64{
        let value = 0;
        let i = 0;
        while(i <= count){
            value = value + i;
            i = i + 1;
        };
        value
    }

    fun sample_loop(count: u64):u64{
        let value = 0;
        let i = 0;
        loop{
            value = value + i;
            i = i + 1;
            if(i > count){
                break
            }
        };
        value
    }
    
    fun sample_if_else(){        
        // let amount_distributed:u64 = 0;
        let num_recipients:u64 = 0;
        let scholarship_amount:u64 = 1000;

        
        if( num_recipients > 0) {
            let amount_distributed = scholarship_amount / num_recipients;
        } else {
            0
        };

        print(&amount_distributed);
    }

    #[test_only]
    use std::debug::print;

    #[test]
    fun test_for_loop(){
        let res = sample_for_loop(10);
        print(&res)
    }

    fun main(){
        sample_if_else()
    }

    #[test]
    fun test_while_loop(){
        let res = sample_while_loop(10);
        print(&res)
    }

    #[test]
    fun test_loop(){
        let res = sample_loop(10);
        print(&res)
    }
}