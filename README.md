Example using Force CLI

This is a sample bash script to import data, remove test data, and deploy metadata.

``` 
#!/bin/bash

force login -u $1 -p $2
force apex $3 > /dev/null 2>&1
echo "Data insert finished"
force apex $4 > /dev/null 2>&1
echo "Data clean up finished"
force import
echo "Finished!"
```

To run the script, unzip this repo into a new directory and make that new directory your working directory.

Then, run the script command below providing your salesforce username and password.

```./volumeTest.sh username password volumeTest.txt cleanup.txt```

