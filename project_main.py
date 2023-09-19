import pymysql as sql
from option_apis import add_diet,add_brand_end,del_brand_end,add_athlete,plot_stats

# Prompt user to enter username and password and validate
while True:
    try:
        username = input("Enter your username: ")
        password = input("Enter your password: ")

        # Connect to the database
        connection = sql.connect(host='localhost',
                                user= username,
                                password= password,
                                database='athletico')
    except sql.err.OperationalError:
        print("Connection Unsuccesful! Check the credentials\n")   
        continue
    else:
        print('Connection to database success!!')
        break   

print("\nWelcome to Athletico database!\n")


while True:
    print('\nMAIN MENU')
    print('1. Display profiles of all athletes')
    print('2. Display athlete profile Sports wise')
    print('3. Add a new athlete to the database')
    print('\t3.1 Add diet details of a existing athlete')
    print('\t3.2 Add brand endorsement details of a existing athlete')
    print('4. Update Athlete information (Team Transfer)')
    print('5. Update Manager information (Team Transfer)')
    print('6. Delete Athlete profile')
    print('\t6.1 Delete brand endorsement of existing athlete')
    print('\t6.2 Retire athletes who are old and weak')
    print('7. Important Insights into Athletico')
    print('8. Visualization')
    print('9. Close Connection')

    option_1 = input("Enter your option from the above menu ")
    print("Selected Option {}".format(option_1))

    if option_1=="1":
        cur = connection.cursor()
        s1 = 'SELECT * FROM athlete'
        cur.execute(s1)
        print('Information of all athletes')
        print('-------------------------------------------------------------------------------------')
        for row in cur.fetchall():
            print(row)
        print("----------------Display Success!-----------------")
        cur.close()
    
    elif option_1=="9":
        connection.close()
        print('-------------Connection to Database Closed-----------------')
        exit()

    elif option_1=="2":
        print('\nAvailable Sports in the database are:')
        
        cur = connection.cursor()
        s1 = 'SELECT sports_name FROM sports'
        cur.execute(s1)

        valid_sports = []
        for row in cur.fetchall():
            print(row[0])
            valid_sports.append(row[0])
        cur.close()     

        sports_selected = input('Enter the name of Sports that you want information about from the list above ').title()
        
        while sports_selected not in valid_sports:
            print('\nInvalid sports.')
            sports_selected = input("Enter sports name from the available sports list shown above:").title()
        print('Next available options:')
        print('1. Display all athletes playing {}'.format(sports_selected))
        print('2. Display athlete specific information')
        option_2 = input('Select an option from above ')

        while True:
            if option_2=='1':
                print('All athletes playing {}'.format(sports_selected))
                cur = connection.cursor()
                cur.callproc('display_sports_athletes', args=[sports_selected])
                for row in cur.fetchall():
                    print(row)
                cur.close()
                break

            elif option_2=='2':
                valid_athlete= 0
                while valid_athlete==0:
                    print('Enter athlete details')
                    a_fname = input('Athlete First Name: ')
                    a_lname = input('Athlete Last Name: ')
                    
                    cur = connection.cursor()
                    verify_q = 'SELECT verify_athlete(%s,%s)'
                    cur.execute(verify_q, (a_fname,a_lname))
                    for row in cur.fetchall():
                        valid_athlete = int(row[0])                

                    if valid_athlete==1:
                        cur.callproc('display_athlete_detail', args=[a_fname,a_lname])
                        for row in cur.fetchall():
                            print(row)                   
                        print('\n-------------------Athlete profile displayed--------------------------')
                    else:
                        print('\nInavlid athlete, athlete does not exist in database')
                        cur.close()
                break

            else:
                print('\nWrong option. Select Right option')
                print('1. Display all athletes playing {}'.format(sports_selected))
                print('2. Display athlete specific information')
                option_2 = input('Select an option from above ')
                

    elif option_1=="3":
        print('\nPreparing to add a new athlete to the database')
        print('Provide athlete infromation')
        add_athlete(connection)
        print('-------------------Athlete added to database successfully!---------------------')  

    elif option_1=="3.1":
        print('Provide athlete infromation')
        valid_athlete= 0
        while valid_athlete==0:
            print('Enter athlete details')
            a_fname = input('Athlete First Name: ')
            a_lname = input('Athlete Last Name: ')
            
            cur = connection.cursor()
            verify_q = 'SELECT verify_athlete(%s,%s)'
            cur.execute(verify_q, (a_fname,a_lname))
            for row in cur.fetchall():
                valid_athlete = int(row[0])                

            if valid_athlete==1:
                add_diet(connection, a_fname,a_lname)
            else:
                print('\nInavlid athlete, athlete does not exist in database')
                cur.close()
        
        print('-------------------Athlete diet added to database successfully!---------------------')  

    elif option_1=="3.2":
        print('Provide athlete infromation')
        valid_athlete= 0
        while valid_athlete==0:
            print('Enter athlete details')
            a_fname = input('Athlete First Name: ')
            a_lname = input('Athlete Last Name: ')
            
            cur = connection.cursor()
            verify_q = 'SELECT verify_athlete(%s,%s)'
            cur.execute(verify_q, (a_fname,a_lname))
            for row in cur.fetchall():
                valid_athlete = int(row[0])                

            if valid_athlete==1:
                add_brand_end(connection, a_fname,a_lname)
            else:
                print('\nInavlid athlete, athlete does not exist in database')
                cur.close()
        
        print('-------------------Athlete brand endorsement added to database successfully!---------------------')                


    elif option_1=="4":
        print('This function is for athlete transfers')
        valid_athlete= 0
        while valid_athlete==0:
            print('Enter athlete details')
            a_fname = input('Athlete First Name: ')
            a_lname = input('Athlete Last Name: ')
            
            cur = connection.cursor()
            verify_q = 'SELECT verify_athlete(%s,%s)'
            cur.execute(verify_q, (a_fname,a_lname))
            for row in cur.fetchall():
                valid_athlete = int(row[0])                

            # use while loop
            if valid_athlete==1:
                q2= 'select team_name from team t join athlete a \
                on(t.team_id=a.athlete_team_id and a.athlete_first_name=%s and a.athlete_last_name=%s)'
                cur.execute(q2,(a_fname,a_lname))
                for row in cur.fetchall():
                    print('Athlete belongs to {}'.format(row[0]))
                    current_team=row[0]
                
                print('Available teams for transfer: ')
                q3 = 'select team_name from team t join\
                    (select sports_id from sports s join athlete a on(a.athlete_sports_id=s.sports_id and\
                    a.athlete_first_name=%s and a.athlete_last_name=%s)) as abc on (t.team_sports_id=abc.sports_id and t.team_name!=%s)'
                cur.execute(q3,(a_fname,a_lname,current_team))
                for row in cur.fetchall(): 
                    print(row[0])   
                cur.close() 
                cur1=connection.cursor()
                connection.begin()          
                a_new_team = input('Select the team name he is transferring into, from above list ')
                cur1.callproc('updateathleteinfo',(a_fname,a_lname,a_new_team))
                for row in cur.fetchall():
                   print(row) 
                connection.commit() 
                cur1.close()                  
            else:
                print('\nInavlid athlete, athlete does not exist in database')
                cur.close()
        print('------------------Athlete team info updated successfully-----------------')    


    elif option_1=="5":
        print('This function is for Manager transfers')
        valid_manager= 0
        while valid_manager==0:
            print('Enter Manager details')
            a_fname = input('Manager First Name: ')
            a_lname = input('Manager Last Name: ')
            
            cur = connection.cursor()
            verify_q = 'SELECT verify_manager(%s,%s)'
            cur.execute(verify_q, (a_fname,a_lname))
            for row in cur.fetchall():
                valid_manager = int(row[0])                

            if valid_manager==1:
                q2= 'select team_name from team t join manager m \
                on(t.team_id=m.manager_team_id and m.manager_first_name=%s and m.manager_last_name=%s)'
                cur.execute(q2,(a_fname,a_lname))
                for row in cur.fetchall():
                    print('Manager belongs to {}'.format(row[0]))
                    current_team=row[0]
                
                print('Available teams for move: ')

                cur1=connection.cursor()
                connection.begin()          
                cur1.callproc('M_TEAM_TRNSFER',(a_fname,a_lname,current_team))
                for row in cur1.fetchall():
                   print(row[0]) 
                connection.commit() 
                cur1.close()                 

                a_new_team = input('Select the team name he is moving into, from above list ')

                cur3 = connection.cursor()
                connection.begin()
                cur3.callproc('updatemanagerinfo', args=[current_team,a_new_team])
                connection.commit() 
                cur3.close()                
            else:
                print('\nInavlid Manager, Manager does not exist in database')
                cur.close()
        print('------------------Manager info updated successfully-----------------') 


    elif option_1=="6":
        print('Enter athlete details who has to be deleted')
        valid_athlete= 0
        while valid_athlete==0:
            print('Enter athlete details')
            a_fname = input('Athlete First Name: ')
            a_lname = input('Athlete Last Name: ')
            
            cur1 = connection.cursor()
            verify_q = 'SELECT verify_athlete(%s,%s)'
            cur1.execute(verify_q, (a_fname,a_lname))
            for row in cur1.fetchall():
                valid_athlete = int(row[0])                
            cur1.close()

            if valid_athlete==1:
                cur2=connection.cursor()
                connection.begin()
                cur2.callproc('removeoperation', args=[a_fname,a_lname])
                connection.commit()  
                cur2.close()               
                print('\n-------------------Athlete profile deleted--------------------------')
            else:
                print('\nInavlid athlete, athlete does not exist in database')
                cur1.close()


    elif option_1=="6.1":
        print('Provide athlete infromation')
        valid_athlete= 0
        while valid_athlete==0:
            print('Enter athlete details')
            a_fname = input('Athlete First Name: ')
            a_lname = input('Athlete Last Name: ')
            
            cur = connection.cursor()
            verify_q = 'SELECT verify_athlete(%s,%s)'
            cur.execute(verify_q, (a_fname,a_lname))
            for row in cur.fetchall():
                valid_athlete = int(row[0])                

            if valid_athlete==1:
                del_brand_end(connection, a_fname,a_lname)
            else:
                print('\nInavlid athlete, athlete does not exist in database')
                cur.close()        
        print('-------------------Athlete brand endorsement deleted from database successfully!---------------------')


    elif option_1=="6.2":
        exec=connection.cursor()
        connection.begin()
        print("Deleting old and weak players")
        exec.callproc('retireathlete')
        for row in exec.fetchall():
            readchar1=row
        connection.commit()
        exec.close()
        print('-------------------Retired all old and weak athletes from database successfully!---------------------')        


    elif option_1=='8':
        print('Visualization is diaplayed')
        plot_stats(connection)

    elif option_1=='7':
        print('Display Imp Info being called')
        print('1. Display Richest player.')
        print('2. Display Oldest Player')
        print('3. Display Highest Endorsed Brand')
        print('4. Display upcoming Amateur athlete')
        print('5. Display athlete with highest paid brand endorsement for a particular brand')

        opt = input("Enter one of the above options ")

        if opt=='1':
            execute6=connection.cursor()
            connection.begin()
            print("Displaying the richest player amoung all the athlete")
            execute6.callproc('richest')
            for row in execute6.fetchall():
                readchar1=row
            print(readchar1)
            connection.commit()
            execute6.close()

        elif opt=='2':
            execute7=connection.cursor()
            connection.begin()
            print("Displaying the oldest player amoung all the athlete")
            execute7.callproc('oldest')
            for row in execute7.fetchall():
                readchar2=row
            print(readchar2)
            connection.commit()
            execute7.close()

        elif opt=='3':
            execute8=connection.cursor()
            connection.begin()
            print("Displaying the most endorsed brand amoung all the athlete and no of athlete that were endorsed on it ")
            execute8.callproc('mostend')
            for row in execute8.fetchall():
                readchar3=row
            print(readchar3)
            connection.commit()
            execute8.close()


        elif opt=='4':
            execute9=connection.cursor()
            connection.begin()
            print("Displaying the upcoming athlete who has already secured brand endorsements even with less experience ")
            execute9.callproc('upcoming_athletes')
            for row in execute9.fetchall():
                readchar4=row
            print(readchar4)
            connection.commit() 


        elif opt=='5':
            brand_name = input('Enter the brand name ')
            cur = connection.cursor()
            verify_q = 'SELECT HighestBE(%s)'
            cur.execute(verify_q, (brand_name))
            for row in cur.fetchall():
                print(row[0])  

    else:
        print('\nWrong option. Select Right option')