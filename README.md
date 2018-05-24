1) Pre-Requisites for This Assignment
	a) Basic Knowledge About MySQL.
	b) Basic Scripting for reading and writing into a file in any language. 
	c) Comfortable working in Linux Environment.

2) Steps for Setting up the Environment for Elastic Search
	a) Make an account on Amazon Web Services following the process from this link 	
	b) Create a EC2 Instance with Ubuntu as a Operating System. Ubuntu is prefered as the Tutorial link given in the end is
		covering UBUNTU installation.
	c) Install mysql server in the Instance and create a user other than root.
	d) Install Elastic Search on the server on the ubuntu.
	e) Test the connection using the EC2 pubic dns as the url joined with :9200 at the end.
	f) An Index was created before uploading the data.
	g) Data Upload Part is done using REST API Tool INSOMNIA.
	
	This full Environment Setup can be followed from this link:
	https://web.cs.dal.ca/~kosmajac/CSCI5408_tutorials/a1.html
	
3) Setting up environment for RDBMS
	a) Install MySQL Workbench on your System
	b) Create a new connection in the workbench with the Hostname:<EC2 Public IP> and put in the details of the user created in
		the mysql server in UBUNTU.
	c) Import data into the mysql using the .csv files 
		** Use DATA GRIP as a tool for importing data, as it is way faster than MySQL Workbench**
	