<?php
require_once '../Database.php';

abstract class Entity
{
    public $id;
}

abstract class NamedEntity extends Entity
{
    public $name;
    public $tableName;
}

abstract class ModifiableEntity extends NamedEntity
{
    protected abstract function __update();

    public final function update()
    {
        if (!$this->__update())
            return;

        $stmt = DatabaseConnection::getInstance()->prepare(
            "UPDATE `{$this->tableName}` SET
                updated_at=CURRENT_TIMESTAMP()
            WHERE id=?"
        );

        $stmt->bind_param('i', $this->id);
        return $stmt->execute();
    }

    public final function delete()
    {
        $stmt = DatabaseConnection::getInstance()->prepare(
            "UPDATE `{$this->tableName}` SET
                was_deleted=1,
                deleted_at=CURRENT_TIMESTAMP()
            WHERE id=?"
        );

        $stmt->bind_param('i', $this->id);
        return $stmt->execute();
    }
}

class LookupTable extends NamedEntity
{
    public function __construct($id, $tableName)
    {
        $this->id = $id;
        $this->tableName = $tableName;

        $stmt = DatabaseConnection::getInstance()->prepare(
            "SELECT `name` FROM $tableName WHERE id=?"
        );

        $stmt->bind_param('i', $id);
        $stmt->execute();

        $result = $stmt->get_result();
        if ($row = $result->fetch_assoc()) {
            $this->name = $row["name"];
        }
    }

    /**
     * @return LookupTable[]
     */

    public static function fetch($tableName)
    {
        $members = array();
        $result = DatabaseConnection::getInstance()->query(
            "SELECT * FROM `$tableName`"
        );

        while ($row = $result->fetch_assoc()) {
            $members[] = array($row["id"], $row["name"]);
        }

        // var_dump($members);
        return $members;
    }

    // These methods are here for compatibility
    // purposes.

    public function id()
    {
        return $this->id;
    }

    public function name()
    {
        return $this->name;
    }
}