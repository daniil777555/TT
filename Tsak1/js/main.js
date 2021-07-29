let signBtn = document.querySelector(".btn-sign");
let modalWinSign = document.querySelector(".modal-w-sign-up");
let cover = document.querySelector(".cover");
let signForm = document.querySelector(".sign-form");
let issignBtnShown = false

signBtn.addEventListener("click", () => {
    console.log(11)
    modalWinSign.style.display = "block";
    cover.style.display = "block";
    issignBtnShown = true;
    
})

document.addEventListener("click", (event) => {
    if(issignBtnShown && event.target == cover){
        modalWinSign.style.display = "none";
        cover.style.display = "none";
        issignBtnShown = false;
    }

})

signForm.addEventListener("submit", (event) => {
    event.preventDefault()
    fetch("site.com", {
        method: "POST",
        body: JSON.stringify({
            name: event.target.name.value,
            pass: event.target.pass.value
        })
    })
})

