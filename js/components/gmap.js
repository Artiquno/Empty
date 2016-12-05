"use strict";

window.initMap = function () {
    var customMapType = new google.maps.StyledMapType([
      {
          stylers: [
            { 'saturation': -100 },
            { 'lightness': 50 },
            { 'visibility': 'simplified' }
          ]
      },
      {
          elementType: 'labels',
          stylers: [{ visibility: 'on' }]
      }
    ], {
        name: 'Custom'
    });

    var image = new google.maps.MarkerImage(
      'img/widgets/gmap-pin.png',
      new google.maps.Size(48, 54),
      new google.maps.Point(0, 0),
      new google.maps.Point(24, 54)
      );

    var customMapTypeId = 'custom_style';

    var fshn = { lat: 41.334516627937795, lng: 19.816475361585617 };
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 17,
        scrollwheel: false,
        streetViewControl: false,
        mapTypeControl: false,
        center: fshn, // FSHN.
        mapTypeControlOptions: {
            mapTypeIds: [google.maps.MapTypeId.ROADMAP, customMapTypeId]
        }
    });

    var marker = new google.maps.Marker({
        map: map,
        icon: image,
        title: 'FSHN',
        position: fshn
    });

    map.mapTypes.set(customMapTypeId, customMapType);
    map.setMapTypeId(customMapTypeId);
}