
function formHash(form, password) {
    var p = document.createElement("input");
    form.appendChild(p);
    p.name = "p";
    p.type = "hidden"
    p.value = hex_sha512(password.value);
    password.value = "0p1a2n3t4o5m6i7m8a9";
    alert(password);
    form.submit();
}