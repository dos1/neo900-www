
    <div id="footer">
      <div class="container">
        <p class="text-muted credit">
        <strong>CC-BY-SA 3.0</strong> Neo900. <a href="/impressum">Impressum</a>. Project by <a href="http://handelsregister-online.net/neueintragung.cfm?cn=3966641" target="_blank">Neo900 UG</a> in cooperation with <a target="_blank" href="http://goldelico.com/">Golden Delicious Computers GmbH &amp; Co. KG</a>.<br/>
        Site created by <a target="_blank"  href="http://dosowisko.net/">Sebastian Krzyszkowiak</a>. All trademarks are the property of their respective owners.</p>
      </div>
    </div> <!-- /footer -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="http://static.neo900.org/jquery.min.js"></script>
    <script src="http://static.neo900.org/jquery.smooth-scroll.min.js"></script>
    <script src="http://static.neo900.org/jquery.stellar.min.js"></script>
    <script src="http://static.neo900.org/bootstrap.min.js"></script>
    <script src="http://static.neo900.org/ponies/ponies.js"></script>
    <script src="http://neo900.org/js/lightbox-2.6.min.js"></script>
    <script>
     $(function() {

       if ($('#fund-amount').length) {
         function updateProgress() {
           $.get('campaign-info.txt?timestamp='+new Date().getTime(), function(d) {
             d = d.split('\n');
             var valF = parseInt(d[0].split(':')[1]);
             var valFS = (valF + "").replace(/\B(?=(\d{3})+(?!\d))/g, " ");
             var valMore = parseInt(d[5].split(':')[1]);
             var val = parseInt(d[4].split(':')[1]);
             var valLess = parseInt(d[2].split(':')[1])-val-valMore;

             $('.progress-bar-over100').width(val/11.11+"%").attr('aria-valuenow',val);
             $('.progress-bar-over1500').width(valMore/11.11+"%").attr('aria-valuenow',val);
             $('.progress-bar-less').width(valLess/11.11+"%").attr('aria-valuenow',val);
             $('.btn-progressbar').width(val/11.11+"%");

             if ((val+valMore) >= 1000) {
               $('.progress-bar-over100').addClass('progress-bar-danger');
               //$('#ourgoal').text('The campaign has reached its main goal! Thank you!');
               //$('#ourgoal2').text("However, it's not over yet.\nYour donation will still serve as a rebate for a finished device.");
             }
             $('#fund-amount span').text(val+valMore);
             $('#alreadycollected span').html(valFS+" €");
             d.splice(1,1);
             $('.progress-details').html(d.join('<br/>'));
           });
         }
         updateProgress();
         setInterval(updateProgress, 300000);
       }

       var $form = $('#subscription');
       var submited = false;
       $form.on('submit', function(e) {
         if (submited) return false;
         submited = true;
         $form.find('input[type=submit]').fadeOut(500);
         $form.find('.modal-body').slideUp(500);
         $.post('/subscribe.php', "neo900-mail="+encodeURIComponent($form.find('input[type=email]').val()), function(txt) {
           $("<p class=\"modal-body info\"></p>").text(txt).insertAfter($form.find('.modal-body')).hide().slideDown(500);
         }, "text").fail(function() {
           $("<p class=\"error modal-body info\">Unexpected error on subscribing.<br/>Please try again later.</p>").insertAfter($form.find('.modal-body')).hide().slideDown(500);
         });
         e.preventDefault();
         return false;
       });

       $('.btn-subscribe').on('mousedown',function(e) {
         $(this).attr('href','#subscribe');
       }).on('click', function(e) {
         $form.find('.modal-body.info').remove();
         $form.find('input[type=submit]').show();
         $form.find('.modal-body').show();
         submited = false;
       });

       if (window.location.hash === '#subscribe') {
         $('.btn-subscribe').attr('href','#subscribe').trigger('click').attr('href','/subscribe');
       }

       $('.faq-list').affix({
         offset: {
           top: function () {
             return (this.top = $('#faq').offset().top-10)
           }
         }
       });

       $('a.smooth').smoothScroll({offset:document.querySelector('#faq') ? 0 : -50, beforeScroll: function(ev){$('.target').removeClass('target'); $(ev.scrollTarget).addClass('target');}, afterScroll: function(ev) {$(ev.scrollTarget).removeClass('target'); var a = $(window).scrollTop(); window.location.hash=ev.scrollTarget; $(window).scrollTop(a);} });
       $('.credit,.milestone,.legend,.phase').popover();
       $('#progress-link').on('click', function() {
         $("#progress-details").modal('show');
         updateProgress();
         return false;
       });
       $.stellar({responsive: true, parallaxElements: false, horizontalScrolling: false, positionProperty: 'transform', hideDistantElements: false});

       if ($('.faq-list').height() > ($(window).innerHeight() - 140)) {
         $(window).off('.affix');
         $('.faq-list').removeClass('affix');
       }
     });
    </script>

    <!-- Piwik -->
    <script type="text/javascript"> 
        var _paq = _paq || [];
        _paq.push(['trackPageView']);
        _paq.push(['enableLinkTracking']);
        (function() {
        var u=(("https:" == document.location.protocol) ? "https" : "http") + "://dosowisko.net/analytics/piwik//";
        _paq.push(['setTrackerUrl', u+'piwik.php']);
        _paq.push(['setSiteId', 1]);
        var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0]; g.type='text/javascript';
        g.defer=true; g.async=true; g.src=u+'piwik.js'; s.parentNode.insertBefore(g,s);
        })();
    </script>
    <noscript><p><img src="http://dosowisko.net/analytics/piwik/piwik.php?idsite=1" style="border:0" alt="" /></p></noscript>
<!-- End Piwik Code -->

  </body>
</html>