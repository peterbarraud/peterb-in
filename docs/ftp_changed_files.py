import ftplib
import os

def ftpchangedfiles(ftpdirlist,ftpserver,ftpusername,ftppwd) :
	ftp = ftplib.FTP(ftpserver)
	ftp.login(ftpusername, ftppwd)
	for dirname,filelist in ftpdirlist.iteritems() :
		ftpdir = dirname.replace(sitedir,'')
		ftpdir = ftpdir.replace('\\','/')
		localdir = dirname.replace('\\','/') #local dir from where to get file
		for filename in filelist :
			print 'ftp file: ' + filename
			ftp.cwd(ftpdir)	#ftp dir to put file
			os.chdir(localdir)
			ftpfile = open(filename, 'r')
			ftp.storlines('STOR ' + filename, ftpfile)
			ftpfile.close()
	ftp.close()

def getftpfilelist (timekeeper,sitedir) :
	lastftptime = 0
	if os.path.isfile(timekeeper) :
		lastftptime = os.stat(timekeeper).st_mtime
	ftpdirlist = {}
	for root, dirs, files in os.walk(sitedir):
		for name in files:
			filesindir = []
			if root in ftpdirlist :
				filesindir = ftpdirlist[root]
			#if the file modification time is greater than the last run time of script, only and only then add it to the ftplist
			if (os.stat(os.path.join(root, name)).st_mtime > lastftptime) :
				filesindir.append(name)
				ftpdirlist[root] = filesindir
	return ftpdirlist

sitedir = 'C:/xampp/htdocs/peterb-in'
timekeeper = sitedir + '/docs/time.keeper'
ftpserver = "ftp.peterb.in"
#if you want to run this with user intervention, you might want to prompt for username and pwd
ftpusername = 'peterb@peterb.in'
ftppwd = 'Pokerj07'
ftpfilelist = getftpfilelist (timekeeper,sitedir)
ftpchangedfiles(ftpfilelist,ftpserver,ftpusername,ftppwd)
timekeeper_f = open(timekeeper, 'w')
timekeeper_f.write('latest updates');
timekeeper_f.close();
