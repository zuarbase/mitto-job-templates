# JSON input examples

- `basic_jsonl_input.json` - Example Mitto `io` job using a JSON lines file as an input and a database table as an output. Only non array values from the top level JSON keys are output. 
- `json_input_arrays.json` - Example Mitto `io` job using a JSON lines file as an input and a database table as an output. This job has an additional transform in the `steps` (`PluckV2Transform`) to specify the `jpath` to a key with an array. This transform also specifies top level keys (`members`) to additionally output. Only non array values from the specified `jpath`'s keys are output.

## Mitto Documentation
- Mitto JSON Input - https://www.zuar.com/help/mitto/json/

## Example Data
Zuar Pets - https://github.com/zuarbase/data/blob/master/zuar_pets.jsonl

The `basic_jsonl_input.json` job creates this database table:

| id | name |
| :--- | :--- |
| 1 | Justin |
| 2 | Matt |
| 3 | Ben |
| 4 | Andy |
| 5 | Kenneth |
| 6 | Greg Rossi |

The `jsonl_input_arrays.json` job creates this database table:

| id | name | pet\_\_type | pet\_\_breed | person\_id |
| :--- | :--- | :--- | :--- | :--- |
| 1 | Bear | dog | Goldendoodle | 1 |
| 2 | Birdie | dog | Goldendoodle | 1 |
| 3 | Zuca | dog | Cavapoo | 3 |
| 4 | Pepper | dog | mutt | 4 |
| 5 | Gracie | dog | Golden | 5 |
| 1 | Yuki | cat | Lynx Point | 6 |
| 2 | Lemon | cat | Tuxedo | 6 |
