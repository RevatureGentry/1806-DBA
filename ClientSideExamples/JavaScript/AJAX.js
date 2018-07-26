window.onload = function() {
    document.getElementById('ajaxButton').addEventListener('click', getTodoData);
}

function getTodoData() {
    // Step 1: Instantiate the XMLHttpRequest object
    let xhr = new XMLHttpRequest();

    // Step 2: Set a callback function to the xhr.onreadystatechange event
    xhr.onreadystatechange = function() {
        // Step 5: Handle the response
        console.log(`xhr.readyState = ${xhr.readyState}`);


        if (xhr.readyState === 4 && xhr.status === 200) {
            // Converts the JSON to our JavaScript Object
            let response = JSON.parse(xhr.responseText);
            populateTable(response);
        }
    }

    // Step 3: Call the xhr.open() function
    // Takes two parameters:
    //      1. Which HTTP method you want to use
    //      2. Which URL to request data from
    xhr.open('GET', 'http://jsonplaceholder.typicode.com/todos');

    // Step 4: Call the xhr.send() function
    xhr.send();
}


function populateTable(jsonObject) {
    // document.createElement()
    // element.appendChild()

    let todosCompleted = 0;
    let todosIncomplete = 0;

    let allRows = document.getElementsByTagName('tr');
    if (allRows.length === 1) {
        for (let obj of jsonObject) {
            // Create a row to add to our todos table
            let row = document.createElement('tr');

            // Create columns/cells to add to our table row
            let tdUserId = document.createElement('td');
            let tdTodoId = document.createElement('td');
            let tdTitle = document.createElement('td');

            // Set the content of each object to the table column/cell
            tdUserId.textContent = obj.userId;
            tdTodoId.textContent = obj.id;
            tdTitle.textContent = obj.title;

            // Append the table columns/cells to our table row
            row.appendChild(tdUserId);
            row.appendChild(tdTodoId);
            row.appendChild(tdTitle);

            // Variable that holds if the todo was completed or not
            let completed = obj.completed;

            // Set the background of our row dependent upon if the todo was completed
            if (completed) {
                row.setAttribute('class', 'bg-success text-light');
                todosCompleted++;
            } else {
                row.setAttribute('class', 'bg-danger text-light');
                todosIncomplete++;
            }

            // Append the row to our table
            document.getElementById('todosTable').appendChild(row);
        }
        document.getElementById('todos').textContent = `Completed: ${todosCompleted}, Incomplete: ${todosIncomplete}`;
    } else {
        console.log('You already have the data!');
    }

}