$(document).ready(function (){
    retrieveCovidData();
    retrieveCodivDataForRegion();
});

function retrieveCovidData(){
    $.ajax({
        url: "https://raw.githubusercontent.com/pcm-dpc/COVID-19/master/dati-json/dpc-covid19-ita-andamento-nazionale.json",
        dataType: "json",
        type: "GET",
        async: true,
        success: function (data) {
            let covidDataLatest = data[data.length - 1];
            let covidDataDayBeforeYesterday = data[data.length - 2];
            $("#attuali").text(printNumber(covidDataLatest['totale_positivi']));
            $("#incremento-positivi").text(printNumber(covidDataLatest['variazione_totale_positivi']));

            $("#guariti").text(printNumber(covidDataLatest['dimessi_guariti']));
            $("#incremento-guariti").text(printNumber(covidDataLatest['dimessi_guariti'] - covidDataDayBeforeYesterday['dimessi_guariti'] ));

            $("#deceduti").text(printNumber(covidDataLatest['deceduti']));
            $("#incremento-deceduti").text(printNumber(covidDataLatest['deceduti'] - covidDataDayBeforeYesterday['deceduti']));

            $("#totali").text(printNumber(covidDataLatest['totale_casi']));
            $("#incremento-totali").text(printNumber(covidDataLatest['totale_casi'] - covidDataDayBeforeYesterday['totale_casi']));
        },
        error: function (xhr, exception, thrownError) {
            console.log(xhr, exception)
        }
    })

}

function retrieveCodivDataForRegion(){
    $.ajax({
        url: "https://raw.githubusercontent.com/pcm-dpc/COVID-19/master/dati-json/dpc-covid19-ita-regioni-latest.json",
        dataType: "json",
        type: "GET",
        async: true,
        success: function (data) {
            let table = $("#regions");
            data.forEach(function (dataRegion){
                let denominazione = dataRegion['denominazione_regione'];
                let attualiPositivi = printNumber(dataRegion['totale_positivi']);
                let totaleCasi = printNumber(dataRegion['totale_casi']);
                let variazioniPositivi = printNumber(dataRegion['variazione_totale_positivi']);

                let tempElement = "<tr><td>" + denominazione + "</td><td>" + totaleCasi + "</td><td>" + attualiPositivi + " </td><td>" + variazioniPositivi + "</td>" + "</tr>";
                table.append(tempElement);
            })
        },
        error: function (xhr, exception, thrownError) {
            console.log(xhr, exception)
        }
    })
}

function printNumber(x) {
    return x.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ".");
}