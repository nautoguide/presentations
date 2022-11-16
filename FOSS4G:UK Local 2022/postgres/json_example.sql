CREATE TABLE my_json(
	
	id 		  BIGINT PRIMARY KEY,
	some_data JSONB DEFAULT '{}'::JSONB
);

CREATE INDEX my_json_index ON my_json 
USING GIN(attributes jsonb_path_ops);

SELECT some_data FROM my_json 
WHERE some_data @> '{"key" : "value"}'::JSONB;


SELECT some_data 
FROM my_json
WHERE some_data @? '$.key.sub_key[0].value ? (@  > 30)'

--@? any item

{
	"key" : {
	"sub_key" ;[{"value" : 31}]
	}
}