<script>
let darkByDefault = true;
let storage;
let darkMode;
window.onload = (ev) => {
    let sw = document.getElementById("theme-switch");
    storage = window.localStorage;
    let storageDarkMode = storage.getItem("darkmode");
    if(storageDarkMode !== null){
        storageDarkMode = storage.getItem("darkmode") === 'true' ? true : false;
    }
    darkMode = storageDarkMode !== null ?
            storageDarkMode :
            darkByDefault ?
                true :
                false;

    sw.checked = darkMode;
    changeTheme(sw);
};
function changeTheme(themeSwitch) {
    let mess = document.getElementById("theme-message");
    storage.setItem("darkmode", themeSwitch.checked);
    if(themeSwitch.checked){
        document.body.classList.add("dark-theme");
        mess.innerText = "Change theme to light"
    } else {
        document.body.classList.remove("dark-theme");
        mess.innerText = "Change theme to dark"
    }
}
</script>
<header>
<div class="theme-switch-div">
<p id="theme-message">
</p>
<label class="switch">
<input type="checkbox" id="theme-switch" onchange="changeTheme(this)">
<span class="slider round"></span>
</label>
</div>
<br>
<hr>
</header>
