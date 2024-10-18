module my_addrx::Sample{
    use std::debug;
    use std::string::{String};
    use std::signer;

    struct Info has store {
        value : String
    }

    struct User has key{
        info : Info
    }

    const ID: u64 = 111;
    const E_NOT_CORRECT: u64 = 1;

    public entry fun store_user(account: &signer, id: u64, user_id: String){
        assert!(id == ID, E_NOT_CORRECT);

        let data = Info{
                value: user_id
        };
        
        let user = User{
            info: data
        };

        move_to<User>(account, user);
    }

    public fun get_user(account: &signer) acquires User{
        let username = borrow_global_mut<User>(signer::address_of(account)).info.value;

        debug::print(&username);
    }
}