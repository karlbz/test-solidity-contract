pragma solidity ^0.4.13;
contract TestCase {

    struct PeopleStruct {
        string firstName;
        string lastName;
        uint idNumber;
    }

    //mapping(address => PeopleStruct) people;
    uint[] numPeople;

    function addOnePerson(string _firstName, string _lastName) public returns(string) {
        uint index;
        index = numPeople.length++;
        PeopleStruct storage p = PeopleStruct[_firstName]; 
        p.idNumber = index;
        p.firstName = _firstName;
        p.lastName = _lastName;
        return("New Person Added!");
    }

    function getLengthPeople() public returns(uint) {
        return(numPeople.length);
    }

    function findPersonInfo(string _firstName, string _lastName) public returns(uint idNumber, string firstName, string lastName) {
        PeopleStruct storage pFirst = PeopleStruct[_firstName];
        PeopleStruct storage pLast = PeopleStruct[_lastName]; 
        if (pFirst.idNumber == pLast.idNumber) {
            idNumber = pFirst.idNumber;
            firstName = pFirst.firstName;
            lastName = pFirst.lastName;
        } else {
            revert();
        }    
    }
}
