<?php
require_once 'entity.php';

class Type extends LookupTable
{
    public function __construct($id)
    {
        parent::__construct($id, "type");
    }

    public function validate($value) {
        switch (strtolower($this->name)) {
            case "integer":
                return is_int($value);
            case "double":
                return is_double($value);
            case "string":
                return is_string($value);
            case "boolean":
                return is_bool($value);
            default:
                return $value instanceof $this->name;
        }
    }

    // Common types, preinstantiated for ease of use.

    public static function int() {
        return new Type(1);
    }

    public static function double() {
        return new Type(2);
    }

    public static function string() {
        return new Type(3);
    }

    public static function boolean() {
        return new Type(4);
    }
}