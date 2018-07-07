function Suma (first, second)
{
    return first + second;
}

function Multiplicacion (first, second)
{
    return first * second;
}


function DiasSemana ()
{
    return ["Lunes","Martes","Miercoles","Jueves", "Viernes"];
}

function Bisiestos()
{
    var since=1990;
    var to=2015
    var result = [];
    for (i=since;i<=to;i++){
        if (i % 4 == 0)
        {
            result.push(i);
        }
    }
    return result;
}

function Bisiestos1990()
{    
    return Bisiestos(1990,2015);
}

function Bisiestos(since,to)
{    
    var result = [];
    for (i=since;i<=to;i++){
        if (i % 4 == 0)
        {
            result.push(i);
        }
    }
    return result;
}

var botonx = document.getElementById("botonx");
//botonx.onclick = function() {alert(Bisiestos(1900,2000))};

var btnimg = document.getElementById("btnimg");
var btnimg2 = document.getElementById("btnimg2");
var imagen1 = document.getElementById("imagen1");
btnimg.onclick = function() { imagen1.src = "img/if_fruits-and-veggies-icons_garlic_3244994.png"; };
btnimg2.onclick = function() { imagen1.src = "img/if_fruits-and-veggies-icons_kiwi_3244991.png"; };

var formularioHTML = "" 
var dynamicForm = document.getElementById("dynamicForm");
var formularioHTML = dynamicForm.innerHTML 
dynamicForm.innerHTML = formularioHTML;
botonx.onclick = function() {dynamicForm.innerHTML += formularioHTML};

// console.log(Suma(5,8));
// console.log(Multiplicacion(5,8));
// console.log(DiasSemana());
// console.log(Bisiestos1990());
// console.log(Bisiestos(1900,2000));