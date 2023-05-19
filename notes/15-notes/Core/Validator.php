<?php
namespace Core;

/**
 * https://www.php.net/manual/en/function.filter-var.php
*/
class Validator
{

    /**
     * Example:
     *
     * Validator::string($_POST['body'], 1, 1000)
     *
     * @param $value
     * @param $min
     * @param $max
     * @return bool
     */
    public static function string($value, $min = 1, $max = INF) {
        $value = trim($value);
        $length = strlen($value);

        return $length >= $min && $length <= $max;
    }




    /**
     * Example:
     *
     * Validator::email('joe@example.com')
     *
     * @param $value
     * @return mixed
    */
    public static function email($value)
    {
         return filter_var(trim($value), FILTER_VALIDATE_EMAIL);
    }


    /*
    public function notBlank($value) {
        return strlen(trim($value)) === 0;
    }

    public function required($value) {
        return strlen(trim($value)) === 0;
    }
    */
}