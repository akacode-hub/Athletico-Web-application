import matplotlib.pyplot as plt

def add_diet(cnx, fname,lname):
    executecur4=cnx.cursor()
    cnx.begin()
    print("Enter the values details of diet of sports player ")
    descr = input('Enter diet description: ')
    diet_calorie_count=input("Enter the calorie count for the above player ")
    executecur4.callproc('insert_diet',(diet_calorie_count,fname,lname,descr))
    cnx.commit()
    print("Inserted diet successfully ")      

def add_brand_end(cnx,fname,lname):
    executecur3=cnx.cursor()
    cnx.begin()
    print("Enter the values details of Brand endorsement")
    be_brand_name=input("Enter the brand name that player gets endorsed on ")
    be_ad_prize=input("Enter the prize amount from endorsement ")
    executecur3.callproc('insert_brand_endorsements',(be_brand_name,be_ad_prize,fname,lname))
    cnx.commit()
    print("Inserted brand endorsement successfully ") 

def del_brand_end(cnx,fname,lname):
    executecur6=cnx.cursor()
    cnx.begin()
    be_all_flag = int(input('Delete all brands associated with athlete? Press 1, else 0 '))
    if be_all_flag==1:
        executecur6.callproc('deletebrandinfo', (fname,lname))
    elif be_all_flag==0:
        b_name = input('Enter brand name to be deleted ')
        executecur6.callproc('deleteonebrand', (fname,lname, b_name))
    cnx.commit()



def add_athlete(cnx):
    executecur1=cnx.cursor()
    cnx.begin()

    valid_sport=1
    while valid_sport==1:
        sportname=input("Enter the Sport name  ")
        cur = cnx.cursor()
        verify_q = 'SELECT verify_sport(%s)'
        cur.execute(verify_q, (sportname))
        for row in cur.fetchall():
            valid_sport = int(row[0])                

        if valid_sport==1:
            break
        else:
            print('\nThe entered sport does not exist. Choose from the following sports: ')
            s1 = 'SELECT sports_name FROM sports'
            cur.execute(s1)
            for row in cur.fetchall():
                print(row[0])
            sportname = input('Enter from above sports: ')
            cur.close()  


    valid_team=1
    while valid_team==1:
        teamname=input("Enter the Team name  ")
        cur = cnx.cursor()
        verify_q = 'SELECT verify_team(%s)'
        cur.execute(verify_q, (teamname))
        for row in cur.fetchall():
            valid_team = int(row[0])                

        if valid_team==1:
            break
        else:
            print('\nThe entered team does not exist. Choose from the following teams: ')
            s1 = 'SELECT team_name FROM team t join sports s on(t.team_sports_id=s.sports_id and s.sports_name=%s)'
            cur.execute(s1,(sportname))
            for row in cur.fetchall():
                print(row[0])
            teamname = input('Enter from above teams: ')
            cur.close()          
        

    valid_athlete= 1
    while valid_athlete==1:
        print('Enter athlete details')
        athlete_first_name = input('Athlete First Name: ')
        athlete_last_name = input('Athlete Last Name: ')
        
        cur = cnx.cursor()
        verify_q = 'SELECT verify_athlete(%s,%s)'
        cur.execute(verify_q, (athlete_first_name,athlete_last_name))
        for row in cur.fetchall():
            valid_athlete = int(row[0])                

        if valid_athlete==0:
            break
        else:
            print('\nAthlete already exists in the database. Enter another athlete.')
            cur.close()    

    athlete_mail_id=input("Enter the email id of the player ")
    athlete_contact_no=input("Enter the of the contact number of player ")
    athlete_nationality=input("Enter the nationality of the player ")  
    athlete_age=input("Enter the age of the player ") 
    athlete_gender=input("Enter the gender of the player ") 
    athlete_net_worth=input("Enter the net worth of the player ") 
    athlete_position = input('Enter the position of athlete ')
    athlete_performance_metric=input("Enter the performance metric of the player. (Enter value between 0 to 10) ")  
    athlete_address=input("Enter the address of the player ") 
    athlete_turned_pro=input("Enter the date when player turned proffesional player (yyyy/mm/dd format) ")
    athlete_health_score=input("Enter the health score of the player. (Enter value between 0 to 10) ")

    executecur1.callproc('insert_athlete',(teamname,sportname,athlete_first_name,athlete_last_name,athlete_mail_id,
    athlete_contact_no,athlete_nationality,athlete_age,athlete_gender,athlete_net_worth,
    athlete_performance_metric,athlete_address,athlete_turned_pro,athlete_health_score, athlete_position))

    
    add_diet_flag = 1
    while add_diet_flag==1:
        add_diet(cnx,athlete_first_name,athlete_last_name)
        add_diet_flag=int(input('Add more diet? Press 1, else 0 '))

    add_be_flag = int(input('Does the athlete endorse any brands? Type 1 if yes, else 0: '))
    while add_be_flag==1:
        add_brand_end(cnx,athlete_first_name,athlete_last_name)
        add_be_flag=int(input('Add more Brand endorsements? Press 1, else 0 '))        
    cnx.commit()  


def plot_stats(cnx):
   
    mycursor = cnx.cursor()
    cnx.begin()
    mycursor.execute("select AVG(athlete_net_worth) as networth,\
    sports_name as sports from athlete a join sports s on (a.athlete_sports_id=s.sports_id) group by sports_name")
    result = mycursor.fetchall()
    
    networth = []
    sports = []
    
    for i in result:
        sports.append(i[0])
        networth.append(i[1])
        print('Sports\tNet_worth ',i[0],i[1])
    cnx.commit()
    plt.bar(networth,sports)
    plt.xlabel("Name of Sports")
    plt.ylabel("Avg net worth of the players in millions")
    plt.title("Average athlete net worth, Sports-wise")
    plt.show()

    mycursor = cnx.cursor()
    cnx.begin()
    mycursor.execute("select athlete_net_worth,athlete_perf_score from athlete a join sports s on (a.athlete_sports_id=s.sports_id) where sports_name='Ice Hockey';")
    athlete_net_worth=[]
    ath_perf_score=[]
    for i in mycursor.fetchall():
        athlete_net_worth.append(i[0])
        ath_perf_score.append(i[1])
    cnx.commit()

    # Add labels and legend
    plt.bar(ath_perf_score,athlete_net_worth)
    plt.ylabel("Athlete Net Worth")
    plt.xlabel("Performance score ")
    plt.title("Athlete Performance Information for Ice Hockey ")
    plt.show()

    mycursor = cnx.cursor()
    cnx.begin()
    mycursor.execute("SELECT s.sports_name, COUNT(DISTINCT e.event_id) AS distinct_event_count FROM\
    events e join sports s on (e.event_sports_id=s.sports_id)WHERE e.event_date BETWEEN '2023-01-01' AND '2023-05-05' GROUP BY s.sports_id;")
    s_name=[]
    countg=[]
    for i in mycursor.fetchall():
        s_name.append(i[0])
        countg.append(i[1])
    cnx.commit()

    # Add labels and legend
    plt.plot(s_name,countg , marker='o', linestyle='-', color='b', label='No Games Played')
    plt.ylabel("No of events belonging to each sport")
    plt.xlabel("Sports Name ")
    plt.title("Events in the spring season of 2023 ")
    plt.legend()
    plt.show()
    
    mycursor = cnx.cursor()
    cnx.begin()
    mycursor.execute("select event_name , count(distinct(event_country)) as no_of_country from events group by event_name;")
    e_name=[]
    countg=[]
    for i in mycursor.fetchall():
        e_name.append(i[0])
        countg.append(i[1])
    cnx.commit()

    # Add labels and legend
    plt.bar(e_name,countg)
    plt.xticks(rotation=45, ha='right')
    plt.tight_layout() 
    plt.ylabel("No of distinct countries")
    plt.xlabel("Event Name ")
    plt.title("Most popular event played throughout the world")
    plt.legend()
    plt.show()

    mycursor = cnx.cursor()
    cnx.begin()
    mycursor.execute("SELECT diet_description, AVG(diet_calorie_count) AS average_calorie_count FROM diet GROUP BY diet_description;")
    diet_description=[]
    average_calorie_count=[]
    for i in mycursor.fetchall():
        diet_description.append(i[0])
        average_calorie_count.append(i[1])
    cnx.commit()

    plt.pie(average_calorie_count, labels=diet_description, autopct='%1.1f%%', startangle=140)
    plt.axis('equal')
    plt.title('Distribution of Diet in athletes')
    plt.show()
