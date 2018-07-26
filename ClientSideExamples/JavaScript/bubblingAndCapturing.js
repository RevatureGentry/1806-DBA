// We set a callback function to 'window.onload' to execute and load our event listeners when your browser
// has finished loading the document
window.onload = function() {
    // Inside this function is where we set our event listeners
    let allElements = document.querySelectorAll("*");

    // The for...of loop is similar to the enhanced for-loop in Java
    for (let element of allElements) {
        /*
            addEventListener takes 3 arguments
                1. type of the event, without 'on'
                2. the function to be invoked when that event occurs
                3. True if you want capturing, false if you want bubbling
        */
        element.addEventListener('click', () => alert(`Capturing: ${element.tagName}`), true);
        element.addEventListener('click', () => alert(`Bubbling: ${element.tagName}`));
    }
}