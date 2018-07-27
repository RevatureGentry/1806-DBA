const apiKey = "f445b7f3";
const imdbUrl = "http://www.omdbapi.com/?apikey=" + apiKey + "&t=";

window.onload = function() {
    showHomePage();
    document.getElementById('home').addEventListener('click', showHomePage);
    document.getElementById('ajaxExample').addEventListener('click', showAjaxExamplePage);
    document.getElementById('imdb').addEventListener('click', showImdbPage);
    getMovieData('Superbad');
}

function showHomePage() {
    // Remove Dynamic Content if exists
    removeCurrentDynamicContent();

    let allBreadcrumbs = document.getElementsByClassName('breadcrumb-item');

    // Remove Last Breadcrumb
    if (allBreadcrumbs.length > 1) {
        removeLastBreadcrumb();
    }

    // Create the root div for Jumbotron
    let jumbotron = document.createElement('div');
    jumbotron.setAttribute('class', 'jumbotron');

    // Create the Jumbotron Heading
    let jumbotronHeading = document.createElement('h4');
    jumbotronHeading.setAttribute('class', 'display-4');
    jumbotronHeading.textContent = 'Single Page Application';

    // Create the Jumbotron content
    let jumbotronContent = document.createElement('p');
    jumbotronContent.setAttribute('class', 'lead');
    jumbotronContent.textContent = `Single page applications are highly popular in enterprise applications 
    nowadays due to the fact that we do not have to send complete HTML documents from the server with dynamic content,
     rather we can just modify our content with JavaScript and get the dynamic data from an API`;

    // Append the Jumbotron Heading to the Jumbotron
    jumbotron.appendChild(jumbotronHeading);

    // Append the Jumbotron Content to the Jumbotron
    jumbotron.appendChild(jumbotronContent);

    // Append the Jumbotron to our router-outlet
    document.getElementById('router-outlet').appendChild(jumbotron);

    // Change the value of the title
    let title = document.querySelector('title');
    title.textContent = "SPA - Home";
}

function showAjaxExamplePage() {
    // Remove Dynamic Content if exists
    removeCurrentDynamicContent();

    // Change the breadcrumb so that the user knows we have changed pages
    let li = document.createElement('li');
    li.setAttribute('class', 'breadcrumb-item');
    li.textContent = "AJAX Example";

    let allBreadcrumbs = document.getElementsByClassName('breadcrumb-item');

    // Append this breadcrumb
    if (allBreadcrumbs.length === 1) {
        document.getElementById('breadcrumb').appendChild(li);
    }

    // Change the value of the Title
    let title = document.querySelector('title');
    title.textContent = "SPA - AJAX Example";

    // Create the base table element
    let table = document.createElement('table');
    table.setAttribute('class', 'table');

    // Create the thead and tbody elements
    let thead = document.createElement('thead');
    let tbody = document.createElement('tbody');
    tbody.setAttribute('id', 'todosTable');

    // Set the table header row
    let theadHeader = document.createElement('tr');
    let userIdTh = document.createElement('th');
    userIdTh.textContent = 'User ID';
    let todoIdTh = document.createElement('th');
    todoIdTh.textContent = "Todo ID";
    let titleTh = document.createElement('th');
    titleTh.textContent = "Title";

    // Append those th's to our table header row
    theadHeader.appendChild(userIdTh);
    theadHeader.appendChild(todoIdTh);
    theadHeader.appendChild(titleTh);

    // Append out thead tr to our thead
    thead.appendChild(theadHeader);

    // Append the thead to our table
    table.appendChild(thead);
    table.appendChild(tbody);

    getTodosData();


    // Set the dynamic content
    document.getElementById('router-outlet').appendChild(table);
}

function showImdbPage() {
        // Remove Dynamic Content if exists
        removeCurrentDynamicContent();

        // Change the breadcrumb so that the user knows we have changed pages
        let li = document.createElement('li');
        li.setAttribute('class', 'breadcrumb-item');
        li.textContent = "IMDB Movie Search";
    
        let allBreadcrumbs = document.getElementsByClassName('breadcrumb-item');
    
        // Append this breadcrumb
        if (allBreadcrumbs.length === 1) {
            document.getElementById('breadcrumb').appendChild(li);
        }
    
        // Change the value of the Title
        let title = document.querySelector('title');
        title.textContent = "SPA - IMDB Movie Search";
    
        // Create the base table element
        let table = document.createElement('table');
        table.setAttribute('class', 'table');
    
        // Create the thead and tbody elements
        let thead = document.createElement('thead');
        let tbody = document.createElement('tbody');
        tbody.setAttribute('id', 'moviesTable');
    
        // Set the table header row
        let theadHeader = document.createElement('tr');
        let tdTitle = document.createElement('th');
        tdTitle.textContent = 'Title';
        let tdRated = document.createElement('th');
        tdRated.textContent = "Rated";
        let tdGenre = document.createElement('th');
        tdGenre.textContent = "Genre";
        let tdReleased = document.createElement('th');
        tdReleased.textContent = "Released";
    
        // Append those th's to our table header row
        theadHeader.appendChild(tdTitle);
        theadHeader.appendChild(tdRated);
        theadHeader.appendChild(tdGenre);
        theadHeader.appendChild(tdReleased);
    
        // Append out thead tr to our thead
        thead.appendChild(theadHeader);
    
        // Append the thead to our table
        table.appendChild(thead);
        table.appendChild(tbody);

        // Create a form
        let form = document.createElement('form');

        // Create an input
        let movieTitleInput = document.createElement('input');
        movieTitleInput.setAttribute('id', "movieTitle");

        // Create a button
        let movieSubmit = document.createElement('button');
        movieSubmit.setAttribute('class', 'btn btn-outline-success');
        movieSubmit.setAttribute('id', 'submit');
        movieSubmit.textContent = "Submit!";
        movieSubmit.setAttribute('type', 'button');

        movieSubmit.addEventListener('click', getFormData);


        // add the input field and button to the form
        form.appendChild(movieTitleInput);
        form.appendChild(movieSubmit);
    
        // Set the dynamic content
        document.getElementById('router-outlet').appendChild(form);
        document.getElementById('router-outlet').appendChild(table);
}

function removeCurrentDynamicContent() {
    let dynamicContentContainer = document.getElementById('router-outlet');
    let dynamicContent = document.getElementById('router-outlet').firstChild;


    if (dynamicContent) {
        dynamicContentContainer.removeChild(dynamicContent);
    }
}

function removeLastBreadcrumb() {
    let breadcrumbContainer = document.getElementById('breadcrumb');
    let lastBreadcrumb = document.getElementById('breadcrumb').lastChild;

    breadcrumbContainer.removeChild(lastBreadcrumb);
}

function getTodosData() {
    // Step 1: Instantiate and XMLHttpRequest Object
    let xhr = new XMLHttpRequest();

    // Step 2: Set a callback function to the xhr.onreadystatechange event
    xhr.onreadystatechange = function() {
        // Step 5: Handle the response
        if (xhr.readyState === 4 && xhr.status === 200) {
            populateTableData(JSON.parse(xhr.responseText));
        }
    }

    // Step 3: Call xhr.open()
    xhr.open('GET', 'http://jsonplaceholder.typicode.com/todos/');

    // Step 4: Call xhr.send()
    xhr.send();
}

function populateTableData(ajaxObject) {
    for (let obj of ajaxObject) {
        let row = document.createElement('tr');
        let tdUserId = document.createElement('td');
        let tdTodoId = document.createElement('td');
        let tdTitle = document.createElement('td');
        let completed = obj.completed;

        tdUserId.textContent = obj.userId;
        tdTodoId.textContent = obj.id;
        tdTitle.textContent = obj.title;

        row.appendChild(tdUserId);
        row.appendChild(tdTodoId);
        row.appendChild(tdTitle);

        if (completed) {
            row.setAttribute('class', 'bg-success');
        } else {
            row.setAttribute('class', 'bg-danger');
        }

        document.getElementById('todosTable').appendChild(row);
    }
}

function getMovieData(movieTitle) {
    if (typeof movieTitle === 'string') {
        let xhr = new XMLHttpRequest();

        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                // Add the movie data to the table here
                console.log(xhr.responseText);
            }
        }

        xhr.open("GET", imdbUrl + movieTitle);

        xhr.send();
    }
}

function getFormData() {
    let movieTitle = document.getElementById('movieTitle').value;
    getMovieData(movieTitle);
}