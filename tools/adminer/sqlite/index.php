<?php

$_GET['sqlite'] = '';

function adminer_object() {
   require "../plugins/plugin.php";
   require "../plugins/fc-sqlite-connection-without-credentials.php";

   $plugins = array(new FCSqliteConnectionWithoutCredentials());

   return new AdminerPlugin($plugins);
}

require "../adminer.php";

