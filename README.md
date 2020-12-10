# ProtoSpaceのER図

## users テーブル

| email (string型,NOT NULL)          | 
| password (string型,NOT NULL)       | 
| name (string型,NOT NULL)           | 
| profile (text型,NOT NULL)          |
| occupation (text型,NOT NULL)       | 
| position (text型,NOT NULL)         | 


## prototypes テーブル

| title (string型,NOT NULL)          | 
| catch_copy (text型,NOT NULL)       | 
| concept (text型,NOT NULL)          |
| image (ActiveStorage型,NOT NULL)   | 
| user (references型,NOT NULL)       |

## comments テーブル

| text (text型,NOT NULL)             | 
| user (references型,NOT NULL)       | 
| prototype (references型,NOT NULL)  | 
