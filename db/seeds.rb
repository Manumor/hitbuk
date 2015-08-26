Country.create(country_name: "UK")
Country.create(country_name: "USA")
Country.create(country_name: "Canada")

u1 = University.create(name: "Oxford University", city: "Oxford", country_id: 1,image: "http://web.prm.ox.ac.uk/rpr/images/oxunilogo.png", link: "link")

		Course.create(name: "Economics and Management", alevels: "A*AA", ibpoints: 39, aextra: "Mathematics at grade A", ibextra: "766 at HL", university_id: u1.id)
		Course.create(name: "Computer science", alevels: "A*AA", ibpoints: 39, aextra: "A* must be in Mathematics, Further Mathematics, Physics or Computing", ibextra: "7 in Higher Level Mathematics and 6 6", university_id: u1.id)
		Course.create(name: "English Language and Literature", alevels: "AAA", ibpoints: 38, aextra: "English", ibextra: "At Higher Level 6 6 6 including English Literature or English Language/Literature", university_id: u1.id)
		Course.create(name: "Medicine", alevels: "A*AA", ibpoints: 39, aextra: "Chemistry and (Biology or Mathematics or Physics", ibextra: "At Higher Level 7 6 6 to include Chemistry and one of Physics/Biology/Mathematics.", university_id: u1.id)


u2 = University.create(name: "Cambridge University", city: "Cambridge", country_id: 1,image: "https://www.cam.ac.uk/sites/www.cam.ac.uk/files/inner-images/logo.jpg", link: "link")

		Course.create(name: "Medicine", alevels: "AAAA", ibpoints: 40, aextra: "Specific subjects are required for certain courses", ibextra: "with 776 in the Higher Level subjects", university_id: u2.id)
		Course.create(name: "Music", alevels: "A*AA", ibpoints: 40, aextra: "Specific subjects are required for certain courses", ibextra: "with 776 in the Higher Level subjects", university_id: u2.id)
		Course.create(name: "Economics", alevels: "A*AA", ibpoints: 40, aextra: "Specific subjects are required for certain courses", ibextra: "with 776 in the Higher Level subjects", university_id: u2.id)
		Course.create(name: "Architecture", alevels: "A*AA", ibpoints: 40, aextra: "Specific subjects are required for certain courses", ibextra: "with 776 in the Higher Level subjects", university_id: u2.id)


u3 = University.create(name: "Essex University", city: "Essex", country_id: 1,image: "http://opticalm.ca/images/Essex%20logo.jpg", link: "link")

		Course.create(name: "Business Administration", alevels: "ABB", ibpoints: 31, aextra: "Grades ABB-BBB required. GCSE Mathematics and English at grade C or above also required", ibextra: "Standard Level Mathematics grade 4 or above (if not taken at Higher Level)", university_id: u3.id)
		Course.create(name: "English Literature", alevels: "ABB", ibpoints: 31, aextra: "An essay-based subject", ibextra: "Standard Level Mathematics grade 4 or above (if not taken at Higher Level)", university_id: u3.id)
		Course.create(name: "Computer Systems Engineering", alevels: "ABB", ibpoints: 31, aextra: "Grades ABB-BBB required. GCSE Mathematics and English at grade C or above also required", ibextra: "Standard Level Mathematics grade 4 or above (if not taken at Higher Level)", university_id: u3.id)
		Course.create(name: "Art History", alevels: "ABB", ibpoints: 31, aextra: "Grades ABB-BBB required. GCSE Mathematics and English at grade C or above also required", ibextra: "", university_id: u3.id)
		

u4 = University.create(name: "Warwick University", city: "Essex", country_id: 1,image: "https://upload.wikimedia.org/wikipedia/en/thumb/3/3e/University_of_Warwick_logo_2015_with_descriptor.svg/1280px-University_of_Warwick_logo_2015_with_descriptor.svg.png", link: "link")

		Course.create(name: "Engineering and Business Studies", alevels: "AAB", ibpoints: 36, aextra: "Mathematics and Physics", ibextra: "5 points each from Mathematics and Physics at Higher Level", university_id: u4.id)
		Course.create(name: "Economics and Industrial Organization", alevels: "A*AA", ibpoints: 38, aextra: "Mathematics at grade A.", ibextra: "6 points required from Mathematics at higher level", university_id: u4.id)
		Course.create(name: "Microbiology/Virology", alevels: "", ibpoints: 34, aextra: "", ibextra: "6 in Higher Level Biology required", university_id: u4.id)
		Course.create(name: "Law", alevels: "AAA", ibpoints: 38, aextra: "", ibextra: "", university_id: u4.id)


u5 = University.create(name: "Harvard University", city: "Boston", country_id: 2,image: "https://s-media-cache-ak0.pinimg.com/236x/24/c9/86/24c9867e0e579d9b95d927554366afe6.jpg", link: "link")

		Course.create(name: "Business and Management", alevels: "A*AA", ibpoints: 39, aextra: "math", ibextra: "HL math", university_id: u5.id)
		Course.create(name: "Law", alevels: "AAA", ibpoints: 39, aextra: "math and english", ibextra: "HL 667", university_id: u5.id)
		Course.create(name: "Medicine", alevels: "A*A*A", ibpoints: 41, aextra: "science and math", ibextra: "HL chemistry and biology", university_id: u5.id)
		Course.create(name: "Architecture", alevels: "AAA", ibpoints: 38, aextra: "math", ibextra: "HL math and 667", university_id: u5.id)


u6 = University.create(name: "Stanford University", city: "Palo Alto", country_id: 2,image: "https://music.unt.edu/graduate/sites/default/files/Stanford-University-logo.jpg", link: "link")

		Course.create(name: "Business and Accounting", alevels: "A*AA", ibpoints: 39, aextra: "math or physics", ibextra: "HL math and science with 667 for HL", university_id: u6.id)
		Course.create(name: "Law", alevels: "A*AA", ibpoints: 33, aextra: "", ibextra: "HL 667", university_id: u6.id)
		Course.create(name: "Medicine", alevels: "A*A*A", ibpoints: 42, aextra: "math and chemistry", ibextra: "HL chemistry and math", university_id: u6.id)
		Course.create(name: "Computer Science", alevels: "AAA", ibpoints: 38, aextra: "math or physics", ibextra: "HL math or physics", university_id: u6.id)


u7 = University.create(name: "Columbia University", city: "New York", country_id: 2,image: "http://www.usjournal.com/img/columbia390x111logo.gif", link: "link")

		Course.create(name: "Physics", alevels: "A*AA", ibpoints: 40, aextra: "physics or math", ibextra: "HL math or physics with 67", university_id: u7.id)
		Course.create(name: "Law", alevels: "AAA", ibpoints: 38, aextra: "english", ibextra: "HL 666", university_id: u7.id)
		Course.create(name: "Medicine", alevels: "AAA", ibpoints: 33, aextra: "need to have taken business", ibextra: "HL business or economics", university_id: u7.id)
		Course.create(name: "Computer Science", alevels: "A*AA", ibpoints: 39, aextra: "math or physics", ibextra: "HL math", university_id: u7.id)


u8 = University.create(name: "Boston University", city: "Boston", country_id: 2,image: "http://msfhq.com/wp-content/uploads/2010/12/Boston-University-Logo.jpg", link: "link")

		Course.create(name: "Art History", alevels: "ABB", ibpoints: 35, aextra: "art", ibextra: "HL art or music", university_id: u8.id)
		Course.create(name: "Law", alevels: "AAB", ibpoints: 37, aextra: "", ibextra: "HL 566", university_id: u8.id)
		Course.create(name: "Medicine", alevels: "AAA", ibpoints: 39, aextra: "math or chemistry with biology", ibextra: "HL math and a science with 666 for HL", university_id: u8.id)
		Course.create(name: "Economics", alevels: "AAA", ibpoints: 38, aextra: "math or economics", ibextra: "HL economics or business with 666 for HL", university_id: u8.id)

u9 = University.create(name: "University of Toronto", city: "Toronto", country_id: 3,image: "https://upload.wikimedia.org/wikipedia/en/thumb/9/9a/UofT_Logo.svg/1280px-UofT_Logo.svg.png", link: "link")

		Course.create(name: "Computer Science", alevels: "ABB", ibpoints: 35, aextra: "Mathematics or English", ibextra: "English HL or SL, Math HL or SL (Math Studies not acceptable)", university_id: u9.id)
		Course.create(name: "Mathematics", alevels: "AAB", ibpoints: 37, aextra: "Mathematics", ibextra: "English HL or SL, Math HL or SL (Math Studies not acceptable)", university_id: u9.id)
		Course.create(name: "Medicine", alevels: "AAB", ibpoints: 37, aextra: "math or chemistry with biology", ibextra: "HL math and a science with 666 for HL", university_id: u9.id)
		Course.create(name: "Economics", alevels: "ABB", ibpoints: 33, aextra: "", ibextra: "655 for HL", university_id: u9.id)

u10 = University.create(name: "McGill University", city: "Montreal", country_id: 3,image: "http://www.quebecnorthshore.org/sites/nsca/files/logos/McGill-Logo.jpg", link: "link")

		Course.create(name: "Art History", alevels: "ABB", ibpoints: 35, aextra: "An artistic subject", ibextra: "HL art or music", university_id: u10.id)
		Course.create(name: "Law", alevels: "AAB", ibpoints: 37, aextra: "", ibextra: "HL 666", university_id: u10.id)
		Course.create(name: "Medicine", alevels: "AAB", ibpoints: 37, aextra: "math or chemistry with biology", ibextra: "HL math and a science with 666 for HL", university_id: u10.id)
		Course.create(name: "Economics", alevels: "ABB", ibpoints: 35, aextra: "", ibextra: "English at SL or HL with a humanity at HL", university_id: u10.id)

u11 = University.create(name: "The University of British Columbia", city: "Vancouver", country_id: 3,image: "http://www.agf.gov.bc.ca/busmgmt/2008_templates/images/logos/bcgov.gif", link: "link")

		Course.create(name: "Applied Biology", alevels: "ABB", ibpoints: 35, aextra: "Biology or Chemistry", ibextra: "Math at SL or HL and a science(Biology, Chemistry or Physics)", university_id: u11.id)
		Course.create(name: "Engineering", alevels: "ABB", ibpoints: 36, aextra: "Physics or Math", ibextra: "Math, Chemistry and Physics at SL or HL)", university_id: u11.id)
		Course.create(name: "Music", alevels: "BBB", ibpoints: 32, aextra: "Audition", ibextra: "Audition", university_id: u11.id)
		Course.create(name: "Economics", alevels: "AAA", ibpoints: 34, aextra: "math or economics", ibextra: "Math (Standard or Higher Level)", university_id: u11.id)

u12 = University.create(name: "Western University", city: "London", country_id: 3,image: "http://communications.uwo.ca/comms/img/logo_teasers/Horizontal_Full.gif", link: "link")

		Course.create(name: "Health Studies", alevels: "BBB", ibpoints: 31, aextra: "Biology or Math", ibextra: "HL or SL Biology and Math", university_id: u12.id)
		Course.create(name: "Medical Sciences", alevels: "AAB", ibpoints: 36, aextra: "Biology, Math or Chemistry", ibextra: "SL or HL Math, Biology and Chemistry", university_id: u12.id)
		Course.create(name: "Engineering", alevels: "AAB", ibpoints: 36, aextra: "Either two math, chemistry or biology", ibextra: "SL or HL Math and Biology or Chemistry", university_id: u12.id)
		Course.create(name: "Nursing", alevels: "BBB", ibpoints: 30, aextra: "", ibextra: "HL or SL Biology, Math, Chemistry or Physics", university_id: u12.id)
