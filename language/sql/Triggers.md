```sql
CREATE TABLE PreparationMethods(
  method VARCHAR(50) NOT NULL,
  PRIMARY KEY (method)
);

CREATE TABLE Preparation(
  iid INT,
  method VARCHAR(50),
  PRIMARY KEY(iid, method),
  FOREIGN KEY(iid) REFERENCES Items(iid),
  FOREIGN KEY(method) REFERENCES PreparationMethods(method)
);

CREATE FUNCTION delete_preparation() RETURNS trigger AS $delete_preparation$
  BEGIN
    DELETE FROM Preparation WHERE Preparation.method = OLD.method;
    RETURN OLD;
  END
$delete_preparation$ LANGUAGE plpgsql;

CREATE TRIGGER CleanPreparations BEFORE DELETE on PreparationMethods
  FOR EACH ROW
  EXECUTE PROCEDURE delete_preparation();
```
