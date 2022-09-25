pragma solidity ^0.5.16;

contract TodoList {
  uint public taskCount = 0;

    struct Task {
        uint id;
        string content;
        bool completed;
    }
    constructor() public{
        createTask("Check out dappuniversity.com");
    }
  
    mapping(uint => Task) public tasks;

    event TaskCreated(
        uint id,
        string content,
        bool completed
    );

    function createTask(string memory _content) public {
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
        emit TaskCreated(taskCount, _content, false);
    }



}