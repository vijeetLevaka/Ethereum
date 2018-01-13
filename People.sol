pragma solidity ^0.4.18;

contract Family {

  struct Person {
    uint age;
    string firstName;
    string lastName;
  }

  mapping (address => Person) persons;
  address[] public personsAccts;
  function setPerson(address _address, uint _age, string _firstName, string _lastName) public {

     var person = persons[_address];

     person.age = _age;
     person.firstName = _firstName;
     person.lastName = _lastName;

     personsAccts.push(_address) -1;
  }

  function getPersons() view public returns(address[]) {
      return personsAccts;
  }
  function getPerson(address _address) view public returns (uint, string, string) {
    return (persons[_address].age, persons[_address].firstName, persons[_address].lastName);
    }

}
