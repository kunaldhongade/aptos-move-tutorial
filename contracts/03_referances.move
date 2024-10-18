// mutalble &mut - allows for modifications via a write through that referance.

module my_addrx::Referances
{
    use std::debug::print;

    fun practice()
    {
        let a = 1880;
        let ima = &a; // immutable referance we can't change underline value but we can change like we can't change it *ima = 3234

        print(&a);
        print(ima); // ima is already a referace so we dont need to pass referance of referance
        let c = a;
        
        // muttable referance
        let ma = &mut a;
        *ma = 33;
        print(ma);
        print(&a);

        print(&c)
    }

    #[test]
    fun testing(){
        practice();
    }
}