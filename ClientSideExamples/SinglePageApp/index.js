window.onload = function() {
    showHomePage();
    document.getElementById('home').addEventListener('click', showHomePage);
    document.getElementById('ajaxExample').addEventListener('click', showAjaxExamplePage);
    document.getElementById('home').addEventListener('click', showHomePage);
}

function showHomePage() {
    // Remove dynamic content if it exists
    removeCurrentDynamicContent();

    // Create the root div for jumbotrom
    let jumbotron = document.createElement('div');
    jumbotron.setAttribute('class','jumbotron');
    
    //create jumbotron heading
    let jumbotronHeading = document.createElement('h4');
    jumbotronHeading.setAttribute('class','display-4');
    jumbotronHeading.textContent = 'Single Page Application';

    // Create the jumbotron content
    let jumbotronContent = document.createElement('p');
    jumbotronContent.setAttribute('class','lead');
    jumbotronContent.textContent = 'Single page applications are highly popular in enterprise applications.'

    // Append Jumbotron heading to jumbotron
    jumbotron.appendChild(jumbotronHeading);
    jumbotron.appendChild(jumbotronContent);

    // Append Jumbotron to our router-outlet
    document.getElementById('router-outlet').appendChild(jumbotron);
}

function showAjaxExamplePage() {
    // Remove dynamic content if it exists
    removeCurrentDynamicContent();
    
    // Change the breadcrumb so that we let the user know we changed pages
    let li = document.createElement('li');
    li.setAttribute('class', 'breadcrumb-item');
    li.textContent = 'AJAX Example';

    // Append the breadcrumb
    document.getElementById('breadcrumb');

    

}

function removeCurrentDynamicContent() {
    if(document.getElementById('router-outlet').firstChild) {
        document.getElementById('router-outlet').removeChild(document.getElementById('router-outlet').firstChild);
    }
}
 







function getTodosData() {
    
    // Step 1: Instantiate the XMLHttpRequest object
    let xhr = new XMLHttpRequest();

    // Step 2: Set a callback function to the xhr.onreadystatechange event
    xhr.onreadystatechange = function() {
        // Step 5: Handle the response
        //console.log(`xhr.readyState = ${xhr.readyState}`);

        if (xhr.readyState === 4 && xhr.status === 200) {
            //stuff
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