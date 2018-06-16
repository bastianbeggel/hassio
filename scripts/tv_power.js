var Viera = require('./viera');

// create instance of module
var tv = new Viera('192.168.178.26');

// get volume value
//tv.getVolume(function(data) {
//    console.log('current volume: '+data);
//});



// set volume
//tv.setVolume(20);

// get mute value
//tv.getMute(function(data) {
//    console.log('mute: ' + data);
//});

// set mute
//tv.setMute(true);

// send command
//tv.sendCommand("menu");

// you can also chain multiple methods
//tv.sendCommand("apps")
//  .sendCommand("down")
 // .sendCommand("enter")
 // .setVolume(25);

//tv.sendCommand("menu").sendCommand("right").sendCommand("enter");

//tv.sendCommand("NRC_POWER-ONOFF");
tv.sendCommand("power");

