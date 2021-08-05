# Excel input examples

- `basic_excel_input.json` - Example Mitto `io` job using an Excel file as an input and a database table as an output.

## Mitto Documentation
- Mitto Excel Input - https://www.zuar.com/help/mitto/excel/

## Example Data
cogs.xlsx - https://github.com/zuarbase/data/blob/master/cogs.xlsx

The `basic_excel_input.json` job creates this database table:

| \_\_index\_\_ | date | state | cogs |
| :--- | :--- | :--- | :--- |
| 2 | 2018-06-30 | Maryland | 106.416699999999 |
| 3 | 2018-06-30 | Ohio | 189.741 |
| 4 | 2018-06-30 | Texas | 111.707 |
| 5 | 2018-05-31 | Alabama | 13.3416 |
| ... | ... | ... | ... |