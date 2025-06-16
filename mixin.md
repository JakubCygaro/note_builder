<script>
var defaultDark = true;
window.onload = (ev) => {
    let sw = document.getElementById("theme-switch");
    if (defaultDark){
        sw.checked = defaultDark;
    }
    changeTheme(sw);
}
function changeTheme(themeSwitch) {
    let mess = document.getElementById("theme-message");
    if(themeSwitch.checked){
        document.body.classList.add("dark-theme");
        mess.innerText = "Change theme to light"
    } else {
        document.body.classList.remove("dark-theme");
        mess.innerText = "Change theme to dark"
    }
}
</script>
<nav>
<div>
<p id="theme-message">
</p>
<label class="switch">
<input type="checkbox" id="theme-switch" onchange="changeTheme(this)">
<span class="slider round"></span>
</label>
</div>
</nav>
