/* <![CDATA[ */ 
// Ponies.

(function () {

  var poniesEnabled = false;

  function loadScript(src) {
    var sc = document.createElement("script");
    sc.setAttribute('async', 'async');
    sc.src = "https://static.neo900.org/ponies/"+src;
    var head = document.head || document.getElementsByTagName("head")[0] || document.documentElement;
    head.insertBefore(sc, head.firstChild);
    return sc;
  }
    
  function doPonies() {
    if (poniesEnabled) { return; }
    var sc = loadScript("browserponies.js");
    sc.onload = sc.onreadystatechange = function() {
      var sc = loadScript("config.js");
      sc.onload = sc.onreadystatechange = function() {
	BrowserPonies.start();
	var poniesEnabled = true;
        
        var $controls = $("<div></div>").addClass('pony-controls');
        $('<a href="#">Turn off ponies</a>').addClass("btn").appendTo($controls).on('click', function() {
	  poniesEnabled = !poniesEnabled;
	  if (poniesEnabled) {
	    BrowserPonies.start();
	    $(this).text('Turn off ponies');
	  }
          else {
	    BrowserPonies.stop();
	    $(this).text('Turn on ponies');
	  }
          return false;
	});
        
        $('<a href="#">+</a>').addClass("btn btn-default").appendTo($controls).on('click', function() {
            BrowserPonies.spawnRandom(1);        
            return false;
        });
        $('<a href="#">-</a>').addClass("btn btn-default").appendTo($controls).on('click', function() {
            var ponies = BrowserPonies.ponies();
            for (var name in ponies) {
              var pony = ponies[name];
              if (pony.instances.length >= 1) {
                BrowserPonies.unspawn(name, 1);
                return false;
              }
            }
            return false;
        });
        
        $controls.appendTo('body');
        
      };
    };
    poniesEnabled=true;
  }

  var d=new Date();
  var month=d.getMonth();
  var day=d.getDate();
  
  function testPonies() {
    if ((day===0 && month===0 || window.location.hash==="#ponies")) { // April, 1st
      doPonies();
    }
  }
  
  $(window).on('hashchange', testPonies);
  testPonies();
  
})();
/* ]]> */
