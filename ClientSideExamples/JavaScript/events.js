window.onload = function() {
    //get a reference to everey hi element
    let headings = document.getElementsByTagName('H1');

    // set an event listener for every h1
    for (let heading of headings) {
        //console.log(`${typeof heading}`);
        heading.addEventListener('click', toggleColor);
    };
}

function toggleColor() {
    // console.log('clicked!');
    // let color = this.classList[0];
    // console.log(color);
    // this.style.color = color;

    let clicked = this.classList.contains('clicked');
    if (clicked) {
        this.classList.remove('clicked');
        this.style.color = 'black';
    } else {
        let color = this.classList[0];
        this.style.color = color;
        this.classList.add('clicked')
    }
}

function logIn() {
    let username = document.getElementById('username').value;
    let password = document.getElementById('password').value;
    let rememberMe = document.getElementById('rememberMe').value;

    document.getElementById('logInCredentials').textContent = `Username: ${username}`;
}