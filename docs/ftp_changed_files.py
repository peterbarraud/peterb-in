import ftplib
import os

def ftpchangedfiles(ftpdirlist,ftpserver,ftpusername,ftppwd) :
	try :
		ftp = ftplib.FTP(ftpserver)
		ftp.login(ftpusername, ftppwd)
		for dirname,filelist in ftpdirlist.iteritems() :
			ftpdir = dirname.replace(sitedir,'')
			ftpdir = ftpdir.replace('\\','/')
			localdir = dirname.replace('\\','/') #local dir from where to get file
			for filename in filelist :
				error_msg = ''
				try :
					#a completely SPECIFIC condition: exclude all git folders
					if ftpdir != '/.git' :
						print 'ftp file: ' + filename
						error_msg = 'unable to find remote FTP directory:- ' + ftpdir
						ftp.cwd(ftpdir)	#ftp dir to put file
						error_msg = 'unable to find local file to FTP:- ' + localdir
						os.chdir(localdir)
						error_msg = 'unable to open file for read:- ' + filename
						ftpfile = open(filename, 'r')
						error_msg = 'storlines failed for read:- ' + filename
						ftp.storlines('STOR ' + filename, ftpfile)
						error_msg = 'ftp.close failed for read:- ' + filename
						ftpfile.close()
						print 'FTP successful: ' + filename
					#else :
						#print 'We are NOT uploading git to the FTP'
				except Exception:
					print 'FTP failed: ' + error_msg
				print "=================****================="
		ftp.close()
	except :
		print "Unable to connect to the FTP server:- " + ftpserver
		print "Ensure your network connection is right"

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
