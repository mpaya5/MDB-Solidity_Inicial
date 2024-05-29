// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
/**
Construir un smart-contract en el que unos estudiantes puedan registrarse en
una lista. Lo harán utilizando su dirección de Ethereum (address). El contrato
tiene que tener lo siguiente:

Variables
    - Una estructura de tipo Estudiante, con sus características propias.
    - Una lista en la que los estudiantes puedan apuntarse con su dirección.
    
Funciones
    - Una función para registrarse en la lista.
    - Una función para que cada estudiante pueda consultar sus datos.
    - Una función para ver la información de todos los estudiantes
*/

contract TaskList {
    
    enum difficulty {LOW, MEDIUM, HIGH}
    struct Task {
        uint8 id;
        string text;
        difficulty level;
    }

    mapping (uint8 => Task) tasks;
    uint8 numTask;
    address owner;

    string [] descr;

    constructor () {
        owner = msg.sender;
        numTask = 0;
    }

    function addTaskToList (string memory _text, difficulty _dif) public returns (bool success) {
        tasks[numTask] = Task(
            numTask,
            _text,
            _dif
        );
        // descr.push(_text);
        descr.push(tasks[numTask].text);
        numTask++;

        return true;
    }

    
    function getTaskById (uint8 _id) public view returns (Task memory _task) {
        return tasks[_id];
    }

    function getAllTasks () public view returns (string [] memory _allTasks) {
        return descr;
    }

}