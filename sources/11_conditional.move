// if else statements

module my_addrx::Conditional_statm{
    use std::debug::print;
    use std::string::utf8;

    fun control_flow(marks:u64){
        if(marks >= 90){ //expression should return boolean; value is't accpted
            print(&utf8(b"A"));
        }else if(marks > 80) {
            print(&utf8(b"B"));
        } else if (marks > 70){
            print(&utf8(b"C"));
        }else if (marks > 50){
            print(&utf8(b"D"));
        }else {
            print(&utf8(b"F"));
        }
    }

    fun v_control_flow(marks:u64) : vector<u8>
    {
        let a = if(marks > 70) b"This is a bright student" else b"This student needs to do some work";
        return a // last statement without ";" is always gets returned
    }

    #[test]
    fun testing(){
        control_flow(89);
        control_flow(12);
        control_flow(90);
        control_flow(12);
        control_flow(2);

        let r = v_control_flow(90);
        print(&utf8(r));

        let r1 = v_control_flow(20);
        print(&utf8(r1));
    }
}