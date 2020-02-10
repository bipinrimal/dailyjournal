# dailyjournal

## Introduction
A simple bash script to generate a markdown file to record daily events. It takes the year, month and date and creates folder and subfolder to store the journal. The general arrangement is as follows:

```
dailyjournal
│   README.md
│   jrnl.sh   
│   install.bk
└───2020
│   └───01_Jan
│   |    |   Jan_01
|   |    :
|   |    |   Jan_31 
    └───02_Feb
│   │   |    Feb_01
|   |   :
|   |   |    Feb_28 
│   └───03_Mar
│       │   Mar_01
│       :
│       │   Mar_31   
└───2021
     └───01_Jan
```
## Installation
Clone the repository and run installation file.
```
git clone https://github.com/bipinrimal/dailyjournal.git
cd dailyjournal
bash install.sh
```
The installation file will add the directory information and will need to be run only once. 
To run the script, add to path.
```
echo "export PATH=$PATH:/path/to/dailyjournal/jrnl.sh" >> ~/.bashrc
```
You can also add an `alias` to the `bashrc` file. 

