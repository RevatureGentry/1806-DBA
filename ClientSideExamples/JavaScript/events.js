window.onload = function() {
    // Get a reference to every H1
    let headings = document.getElementsByTagName('H1');

    // Set an event listener to every H1
    for (let heading of headings) {
        heading.addEventListener('click', toggleColor);
    }

    // document.getElementById('logInButton').addEventListener('click', logIn);
    document.getElementById('rememberMe').addEventListener('click', printCredentials);
}

function toggleColor() {
    // console.log("clicked!");
    // let colorOfHeading = this.classList[0];
    // console.log(colorOfHeading);
    // this.style.color = colorOfHeading;

    let clicked = this.classList.contains('clicked');
    if (clicked) {
        this.classList.remove('clicked');
        this.style.color = 'black';
    } else {
        let colorOfHeading = this.classList[0];
        this.style.color = colorOfHeading;
        this.classList.add('clicked');
    }
}

function printCredentials() {
    let username = document.getElementById('username').value;
    let password = document.getElementById('password').value;

    document.getElementById('logInCredentials').textContent = `${username} : ${password}`;
}

function logIn() {
    let username = document.getElementById('username').value;
    let password = document.getElementById('password').value;
    let rememberMe = document.getElementById('rememberMe').value;

    document.getElementById("logInCredentials").textContent = `Username: ${username}
    Password: ${password}
    Remember Me? ${rememberMe}`;
}