require 'pg'
conn=PGconn.connect( :hostaddr=>"127.0.0.1", :port=>5432, :dbname=>"zyuat_db", :user=>"rakesh", :password=>'Rocky5ras')
res = conn.exec("SELECT * FROM master.zyuat_user")
fieldArray=res.fields()
res.each{ |row|
    puts "Firstname="+row["firstname"]+" LastName="+row["lastname"] 
}