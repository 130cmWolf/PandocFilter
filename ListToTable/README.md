# bulleted lists to Table

## how to use

The first bullet point is the table header.  
The second and subsequent bullet points are the table body.

# example


```
pandoc -d default.yml --lua-filter list2table.lua 
```

The [README.md](https://raw.githubusercontent.com/130cmWolf/PandocFilter/main/ListToTable/README.md) file will be converted to [output.docx](https://github.com/130cmWolf/PandocFilter/blob/main/ListToTable/output.docx).

## bulleted lists

use chatGPT Generate Sample Data

:::{.table}

* Name
    * Gender
    * Birthdate
    * State
* Emily Johnson
    * Female
    * 1995/05/12
    * California
* Michael Davis
    * Male
    * 1988/11/23
    * Texas
* Madison Martinez
    * Female
    * 2001/03/17
    * Florida
* William Brown
    * Male
    * 1990/09/02
    * New York
* Daniel Rodriguez
    * Male
    * 1992/07/15
    * Arizona

:::

## numbered lists

You can automatically number the items,  
but the first one should be the header,  
so please use a regular bullet point for it.

:::{.table}

* Name
    * Gender
    * Birthdate
    * State
1. Avery Taylor
    * Female
    * 1987/06/09
    * Ohio
1. Ethan Lee
    * Male
    * 1999/08/21
    * Illinois
1. Olivia Jackson
    * Female
    * 1993/12/08
    * Georgia
1. Jacob Wilson
    * Male
    * 1996/02/18
    * North Carolina
1. Emma Moore
    * Female
    * 2000/11/30
    * Michigan

:::

# Other Lists

## Other bulleted lists

other format lists.

:::{.table}

*   * Name
    * Gender
    * Birthdate
    * State
*   * Emily Johnson
    * Female
    * 1995/05/12
    * California
*   * Michael Davis
    * Male
    * 1988/11/23
    * Texas
*   * Madison Martinez
    * Female
    * 2001/03/17
    * Florida
*   * William Brown
    * Male
    * 1990/09/02
    * New York
*   * Daniel Rodriguez
    * Male
    * 1992/07/15
    * Arizona

:::

## Other numbered lists

:::{.table}

*   * Name
    * Gender
    * Birthdate
    * State
1.  * Avery Taylor
    * Female
    * 1987/06/09
    * Ohio
1.  * Ethan Lee
    * Male
    * 1999/08/21
    * Illinois
1.  * Olivia Jackson
    * Female
    * 1993/12/08
    * Georgia
1.  * Jacob Wilson
    * Male
    * 1996/02/18
    * North Carolina
1.  * Emma Moore
    * Female
    * 2000/11/30
    * Michigan

:::

# Other Lists 2

## Other bulleted lists

line breaks between lists

:::{.table}

*   * Name
    * Gender
    * Birthdate
    * State

*   * Emily Johnson
    * Female
    * 1995/05/12
    * California

*   * Michael Davis
    * Male
    * 1988/11/23
    * Texas

*   * Madison Martinez
    * Female
    * 2001/03/17
    * Florida

*   * William Brown
    * Male
    * 1990/09/02
    * New York

*   * Daniel Rodriguez
    * Male
    * 1992/07/15
    * Arizona

:::

## Other numbered lists

:::{.table}

*   * Name
    * Gender
    * Birthdate
    * State

1.  * Avery Taylor
    * Female
    * 1987/06/09
    * Ohio

1.  * Ethan Lee
    * Male
    * 1999/08/21
    * Illinois

1.  * Olivia Jackson
    * Female
    * 1993/12/08
    * Georgia

1.  * Jacob Wilson
    * Male
    * 1996/02/18
    * North Carolina

1.  * Emma Moore
    * Female
    * 2000/11/30
    * Michigan

:::

# lists in table



:::{.table}

*   * Name
    * Gender
    * Birthdate
    * State
*   * Madison Martinez
    * Female
    * 2001/03/17
    * * Florida
      * New York
*   * William Brown
    * Male
    * 1990/09/02
    * * New York
*   * Daniel Rodriguez
    * Male
    * 1992/07/15
    * 
      * Arizona
      * New York
*   * Olivia Jackson
    * Female
    * 1993/12/08
    * Plaintext and Lists
        * Georgia
        * North Carolina
*   * Olivia Jackson
    * Female
    * 1993/12/08
    * Using Markdown syntax when trying to stop using Markdown is counterproductive ;D
    
      | ago | State |
      | --- | --- |
      | 1 | Georgia |
      | 3 | North Carolina |
*   * Olivia Jackson
    * Female
    * 1993/12/08
    * | ago | State |
      | --- | --- |
      | 1 | Georgia |
      | 3 | North Carolina |

:::
