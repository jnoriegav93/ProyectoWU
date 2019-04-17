function creaz(mapa) {
    var draw = new ol.interaction.Draw({
        type: 'Polygon',
        source: source,
        style: new ol.style.Style({
            image:
            //Start of the star style
            new ol.style.RegularShape({
                fill: new ol.style.Fill({
                    color: 'red'
                }),
                points: 4,
                radius1: 15,
                radius2: 1,
            }),
            stroke: new ol.style.Stroke({
                color: 'red',
                width: 3
            })
        })
    });
    mapa.addInteraction(draw);

    //Agregar las coordenadas creadas en un campo
    source.on('addfeature', function (evt) {
        var feature = evt.feature;
        var coords = feature.getGeometry().getCoordinates();
        var coo = "";
        coords[0].forEach(function (element) {
            element = ol.proj.transform(element, 'EPSG:3857', 'EPSG:4326');  //14 decimales , 18 caracteres
            coo += element + ";";
        });
        document.getElementById("txtCoord").value = coo;
    });
}