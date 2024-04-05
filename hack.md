# Create database
```
$ sqlite3 databasename
```

# Create table
```
sqlite> create table user(one varchar(10), two smallint);
```

# Insert data
```
sqlite> insert into tblone values('helloworld',20);
sqlite> insert into tblone values('archlinux', 30);
```

# Search database
```
sqlite> select * from tblone;
---
helloworld|20
archlinux|30
```

```
CREATE TABLE User (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL
);

insert into User values(0, 'test', 'test@test.com', 'test');
```
