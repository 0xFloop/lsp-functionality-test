pragma solidity ^0.8.13;

contract ImportMe {
    function getNumInherited() public pure returns (uint256) {
        return 1111;
    }
}

contract TestInherits is ImportMe {
    function testGetNum() public pure returns (uint256) {
        return 2222;
    }
}

contract TestContract {
    function testAutoComplete() public {
        TestInherits test = new TestInherits();
        //this call autocompletes the testGetNum function and offers goto defintion
        uint256 num = test.testGetNum();

        //this call does not autocomplete and does not offer goto defition
        uint256 numFromInheritedCall = test.getNumInherited();
    }
}
