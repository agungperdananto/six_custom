<div class="custom-container"> 
  <!--============== Main Features ==============-->
  
  <div class="row mainFeatures" id="features">
    <div class="col-sm-6 col-md-4">
      <div class="img-thumbnail"> <img src="{$WEB_ROOT}/templates/{$template}/img/secure_img.png" width="85" height="88" alt="secure">
        <div class="caption">
          <h4>Aman &amp; Mudah</h4>
          <p>Transaksi anda terjamin keamanannya karena Donomen.com bekerjasama dengan gerbang pembayaran terkemuka di Asia Tenggara, Midtrans, melalui secure channel.
        </div>
      </div>
    </div>
    <div class="col-sm-6 col-md-4">
      <div class="img-thumbnail"> <img src="{$WEB_ROOT}/templates/{$template}/img/fast_img.png" width="85" height="88" alt="secure">
        <div class="caption">
          <h4>Cepat &amp; Murah</h4>
          <p>Donomen.com membantu anda dalam menemukan domain idaman dengan cepat, tidak hanya itu, juga berkomitmen memberikan harga murah dan terbaik.</p>
        </div>
      </div>
    </div>
    <div class="col-sm-6 col-md-4 col-sm-offset-3 col-md-offset-0">
      <div class="img-thumbnail"> <img src="{$WEB_ROOT}/templates/{$template}/img/support_img.png" width="85" height="88" alt="secure">
        <div class="caption">
          <h4>Layanan Pelanggan</h4>
          <p>Apa artinya beli domain dengan aman mudah cepat dan murah tanpa layanan pelanggan? Donomen.com hadir dengan layanan pelanggan 24 jam via email dan Live Chat.</p>
        </div>
      </div>
    </div>
  </div>
  
  <!--============== Other Features ==============-->
  
  <div class="row PageHead">
    <div class="col-md-12">
      <h1>Beli domain di Donomen.com</h1>
      <h3>Kenapa harus beli domain di <a href='https://www.donomen.com'>Donomen.com</a>, apa ada untungnya?</h3>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-6 features"> <img src="{$WEB_ROOT}/templates/{$template}/img/setup_icon.png" alt="icon" class="img-responsive">
      <h4>Aktifasi Instan</h4>
      <p>Segera setelah anda melakukan pembayaran, kami akan memproses pesana anda secara otomatis, tidak perlu lagi repot kirim bukti pembayaran.</p>
    </div>
    <div class="col-sm-6 features"> <img src="{$WEB_ROOT}/templates/{$template}/img/backup_icon.png" alt="icon" class="img-responsive">
      <h4>Diskon Tiap Hari</h4>
      <p>Cuma Donomen.com yang berani kasih diskon beli domain tiap hari. Selama bulan Agustus, kami berikan diskon hingga 75% untuk semua produk, mulai dari domain hingga sertifikat SSL.</p>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-6 features"> <img src="{$WEB_ROOT}/templates/{$template}/img/git_icon.png" alt="icon" class="img-responsive">
      <h4>Banyak Pilihan</h4>
      <p>Domain ga cuma .com .net .org Mas Bro! Tahun 2020 ini, setidaknya ada 130 ekstensi domain, itu artinya, kamu bisa punya domain baru yang pas sama kebutuhan. <a href='https://www.antiribet.club'>antiribet.club</a> misalnya, atau tahantawa.lol? semua bisa!</p>
    </div>
    <div class="col-sm-6 features"> <img src="{$WEB_ROOT}/templates/{$template}/img/cpanel_icon.png" alt="icon" class="img-responsive">
      <h4>Dapat Diandalkan</h4>
      <p>Donomen.com berkomitmen untuk selalu memberikan layanan terbaik dalam pembelian domain dan hosting, dengan dukungan tim teknis dan sales 24 jam via Email dan Live Chat, kamu ga perlu khawatir beli domain di Donomen.com.</p>
    </div>
  </div>
</div>

 
{if $twitterusername}

   <div class="PageHead"> <h2>{$LANG.twitterlatesttweets}</h2></div>

    <div id="twitterFeedOutput">
        <p class="text-center"><img src="{$BASE_PATH_IMG}/loading.gif" /></p>
    </div>

    <script type="text/javascript" src="templates/{$template}/js/twitter.js"></script>

{elseif $announcements}

    <h2>{$LANG.news}</h2>

    {foreach $announcements as $announcement}
        {if $announcement@index < 2}
            <div class="announcement-single">
                <h3>
                    <span class="label label-default">
                        {$announcement.rawDate|date_format:"M jS"}
                    </span>
                    <a href="{if $seofriendlyurls}{$WEB_ROOT}/announcements/{$announcement.id}/{$announcement.urlfriendlytitle}.html{else}announcements.php?id={$announcement.id}{/if}">{$announcement.title}</a>
                </h3>

                <blockquote>
                    <p>
                        {if $announcement.text|strip_tags|strlen < 350}
                            {$announcement.text}
                        {else}
                            {$announcement.summary}
                            <a href="{if $seofriendlyurls}{$WEB_ROOT}/announcements/{$announcement.id}/{$announcement.urlfriendlytitle}.html{else}announcements.php?id={$announcement.id}{/if}" class="label label-warning">{$LANG.readmore} &raquo;</a>
                        {/if}
                    </p>
                </blockquote>

                {if $announcementsFbRecommend}
                    <script>
                        (function(d, s, id) {
                            var js, fjs = d.getElementsByTagName(s)[0];
                            if (d.getElementById(id)) {
                                return;
                            }
                            js = d.createElement(s); js.id = id;
                            js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
                            fjs.parentNode.insertBefore(js, fjs);
                        }(document, 'script', 'facebook-jssdk'));
                    </script>
                    <div class="fb-like hidden-sm hidden-xs" data-layout="standard" data-href="{$systemurl}{if $seofriendlyurls}{$WEB_ROOT}/announcements/{$announcement.id}/{$announcement.urlfriendlytitle}.html{else}announcements.php?id={$announcement.id}{/if}" data-send="true" data-width="450" data-show-faces="true" data-action="recommend"></div>
                    <div class="fb-like hidden-lg hidden-md" data-layout="button_count" data-href="{$systemurl}{if $seofriendlyurls}{$WEB_ROOT}/announcements/{$announcement.id}/{$announcement.urlfriendlytitle}.html{else}announcements.php?id={$announcement.id}{/if}" data-send="true" data-width="450" data-show-faces="true" data-action="recommend"></div>
                {/if}
            </div>
        {/if}
    {/foreach}
{/if}
