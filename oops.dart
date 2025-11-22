class Bank{
    String? bankName;
    String? branch;
    String? state;
    String? ifscCode;
    Bank(this.bankName,this.branch,this.state,this.ifscCode);
    int show(){
        print("hey here are the bank details:$bankName,$branch,$state,$ifscCode");
        return 1;
    }
}
class User{
    String? name;
    int? age;
    int? balance;
    int? _accountNumber;
    Bank? bank;
    User(this.name,this.age,this.balance,this._accountNumber,this.bank);
    int? getAcc(){
        return _accountNumber;
    }
}

void main(){
    Bank b1=Bank("SBI","Main Branch","Karnataka","SBIN0001234");
    Bank b2=Bank("HDFC","City Branch","Maharashtra","HDFC0005678");
    User u1=User("sai",22,5000,1234567890,b1);
    User u2=User("doe",24,5000,1234567891,b2);
    print(u2?.getAcc());
}