<?php

$string = '
abstract class tralala implements ArrayAccess{
    
	    /**
	     * @var Connection 
	     */
	    private $_connection;

	    /**
	     * @param Connection $connection
	     */
	    final function __construct(Connection $connection) {
	        $this->_connection = $connection;
	    }
}';

$result = '';
foreach (token_get_all($string) as $token) {
    if (is_array($token) && in_array($token[0], [T_ENCAPSED_AND_WHITESPACE, T_CONSTANT_ENCAPSED_STRING])) {
        $token[1] = preg_replace('#\s#', '.', $token[1]);
    }
    $result .= is_array($token) ? $token[1] : $token;
}
$string = $result;

if((bool) preg_match('~\x{00a0}~siu', $string)) { #remove super stupid space!
    $text = preg_replace('~\x{00a0}~siu', ' ', $string);
}
$string = str_replace("\n", PHP_EOL, str_replace(["\r\n", "\r"], "\n", $string)); #newline characters normalizer for the current OS
$new = trim(preg_replace('/\t+/', '    ', $string));
echo '<pre>';
var_dump($new);
