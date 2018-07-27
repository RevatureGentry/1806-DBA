window.onload = function() {
    let allElements = document.querySelectorAll("*");

    /*
    addEventListener takes 3 args

        1. type of event, without the "on"
        2. function to be invoked when event occurs
        2. True if you want capturing, flase for bubbling (false on default)


    */
    for (let element of allElements) {
        element.addEventListener('click', () => alert(`Capturing: ${element.tagName}`), true);
        element.addEventListener('click', () => alert(`Bubbling: ${element.tagName}`));

    }
}