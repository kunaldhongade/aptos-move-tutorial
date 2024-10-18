// Vectors - A variable sized container that can hold any type. Indexing is 0 based, and vectors are growable.

// same as list in python, cpp std lib

// Array -> 10 20 30 40 50
// index ->  0  1  2  3  4

module my_addrx::Vectors
{
    use std::debug::print;
    use std::vector;

    fun practice()
    {
        let v:vector<u64> = vector<u64> [10, 20, 30];
        let list = vector::empty<u64>(); // empty vector
        
        vector::push_back(&mut v, 40);
        print(vector::borrow(&v, 3));

        let v_value = *vector::borrow(&v, 2); // we can only read value
        print(&v_value);

        *vector::borrow_mut(&mut v, 2) = 78; // to update value
        print(vector::borrow(&v, 2));

        vector::push_back(&mut list, 10);
        vector::push_back(&mut list, 200);
        vector::push_back(&mut list, 300);
        vector::push_back(&mut list, 400);
        print(vector::borrow(&list,0));


        vector::for_each(list,|e|{
            print(&e);
        });

        // to delete element from end of the vector

        let poped_vector = vector::pop_back(&mut list);

        print(&poped_vector);

        // for each mut function

        vector::for_each_mut(&mut list, |e| {*e = 1});
        print(vector::borrow(&list, 0));
        print(vector::borrow(&list, 1));
        print(vector::borrow(&list, 2));

        let s = 1;
        vector::for_each_mut(&mut v, |e| {
            *e = s;
            s = s + 1;
        });

        
        vector::for_each(v,|e|{
            print(&e);
        });

        print(&s)
    }

    #[test]
    fun testing()
    {
        practice()
    }
}