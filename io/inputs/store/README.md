# Store input templates

`basic_store_input.hjson` - Use a store as an input and output to database table.
`store_input_with_jpath.hjson` - Using jpath, use a sublist from a store as an input and output to a database table.

## Mitto Documentation
- Mitto store - https://www.zuar.com/help/mitto/mitto-store/
- Mitto store input - https://www.zuar.com/help/mitto/mitto-store-input/

## Example Store
Name: pets
```json
{
        "id": 1,
        "name": "Justin",
        "pets": [
            {
                "id": 1,
                "name": "Bear",
                "pet": {
                    "type": "dog",
                    "breed": "Goldendoodle"
                }
            },
            {
                "id": 2,
                "name": "Birdie",
                "pet": {
                    "type": "dog",
                    "breed": "Goldendoodle"
                }
            }
        ]
    }
```
