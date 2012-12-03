# -*- coding: utf-8 -*-




  # Create green features
power =  GreenFeature.create(:id =>1, :name => "power-agents", :full_name => "Power Agents", :content => "A Power Agent is a UC Berkeley campus volunteer committed to helping colleagues reduce energy usage in campus buildings. Power Agents work within their units to encourage behavior change, decrease energy usage, and identify potential energy-saving projects.  Power Agents receive training, resources, and a toolkit to better assist energy reduction on campus.   For more information visit: http://mypower.berkeley.edu/about/power_agents.html")

green_buildings =  GreenFeature.create(:id => 2, :name => "green-buildings", :full_name => "Green Buildings", :content => "Campus construction projects generally follow the U.S. Green Building Council Leadership in Energy and Environmental Design (LEED™) system for green building.  Major projects are LEED™-certified to a minimum of LEED™ Silver.  In 2012, the campus has seven LEED™ certified projects, representing 5.1% of total campus square footage.  All major projects now being designed, as well as several projects now in construction, are expected to be LEED™ certified.  New building and major renovation projects also outperform state energy code requirements by at least 20%.")

strategic =  GreenFeature.create(:id => 3, :name => "strategic-energy", :full_name => "Strategic Energy Plan", :content => "Since 2006, the campus has implemented over a hundred projects as part of its Strategic Energy Plan to reduce energy usage in new and large existing campus buildings.  As part of a partnership with Pacific Gas & Electric, these projects have now saved almost 14 million kWh and close to 460,000 therms of natural gas annually.  The Strategic Energy Plan is expected to reduce emissions by 17,500 tons.")

climate =  GreenFeature.create(:id => 4, :name => "cal-climate", :full_name => "Cal Climate Action Partnership", :content => "UC Berkeley's climate action goal is to reduce its greenhouse gas (GHG) emissions to 1990 levels by 2014.  The Cal Climate Action Partnership (CalCAP) is a collaboration of faculty, administration, staff, and students working to achieve this goal.  CalCAP's work includes conducting an annual ten-source GHG emissions inventory to track and report our progress and implementing climate change mitigation strategies.  UCB  is making progress toward reaching the target:  2010 GHG emissions were almost 5% below 2008 levels and electricity use in 2010 was down 1.1% on the main campus and 1.5% overall relative to 2009.  The campus will eventually achieve climate neutrality.")

green_departments = GreenFeature.create(:id => 5, :name => "green-departments", :full_name => "Green Departments", :content => "UC Berkeley Green Department certification recognizes campus  departments that have taken extra steps to be more sustainable. The  program identifies a set of conditions and actions - including energy, waste, transportation, and purchasing - that can be followed in order to be certified. The certification  process is designed to provide resources, guidance, and recognition to faculty,  staff, and students as they take steps to decrease their environmental impacts  at work.")

energy_star = GreenFeature.create(:id => 6, :name => "energy-star", :full_name => "ENERGY STAR", :content => "Devices that carry the ENERGY STAR symbol have been tested and found to meet high energy efficiency levels without compromising performance. For example, ENERGY STAR light commercial HVAC equipment uses 7-10% less energy than standard equipment.")

leed = GreenFeature.create(:id => 7, :name => "leed-certified", :full_name => "LEED Certified", :content => "The Leadership in Energy and Environmental Design (LEED) rating system is a third-party certification program and an internationally accepted benchmark for the design, construction, and operation of high performance green buildings. Building performance is evaluated in five key areas of human and environmental health: sustainable site development, water efficiency, energy efficiency, materials selection, and indoor environmental quality.")

Art_Museum = Hall.create(:name=>"Art Museum", :background=> "One of the largest university art museums in the United States, the Berkeley Art Museum and Pacific Film Archive is the campus’ visual arts center. Located in a distinctive Modernist building on the south side of campus, it includes 11 exhibition galleries, a sculpture garden, bookstore and Café.")
Art_Museum.green_features = [climate]

Barker = Hall.create(:name=>"Barker", :background=>"Barker Hall is a seven-story biological research laboratory building for the Molecular and Cell Biology Department, Howard Hughes Medical Institute, and Helen Willis Neuroscience Institute. One of the building’s specialties is its DNA sequencing lab. The building was named for Horace Albert Barker, a biochemist specializing in metabolism.")
Barker.green_features = [power, climate]

Barrows_Hall = Hall.create(:name=>"Barrows Hall", :background=>"Barrows is the second busiest building on campus in terms of classroom usage. The eight-story building houses classrooms, computer labs, thirteen different campus departments, faculty and staff offices and the campus radio station KALX. A large, prestigious assembly/event room is located on the eighth floor and boasts spectacular views of the San Francisco Bay Area. Barrows Hall is named for David Prescott Barrows, a Political Science professor and President of the University from 1919-23.")
Barrows_Hall.green_features = [strategic, power, climate]

Bechtel_Center = Hall.create(:name=>"Bechtel Center", :background=>"The Bechtel Engineering Center houses the Kresege Engineering Library, Sibley Auditorium, student study spaces, and the Terrace Café. Built in 1980, is it named for Stephen D. Bechtel, who attended Berkeley before taking the reins of the Bechtel engineering empire.")
Bechtel_Center.green_features = [power, climate]

Birge_Hall = Hall.create(:name=>"Birge Hall", :background=>"Birge Hall primarily houses the Department of Physics, and is joined by glass-walled passageways to Le Conte Hall.  Designed by John Warnecke, it replaced Bacon Hall (1881), formerly the university’s elegant library and art gallery. It is named for Raymond T. Birge, a Professor of Physics and Department Chair.")
Birge_Hall.green_features = [power, strategic, climate]

BoaltSimon = Hall.create(:name=>"Boalt and Simon Hall", :background=>"Boalt Hall is part of the Berkeley Law complex, which includes Simon Hall and the recently completed Law Infill building.  It is named in memory of Judge John Henry Boalt, whose wife Elizabeth Joyce Boalt, along with 40 state lawyers and judges contributed to make it the 'best law school west of the Rockies'.")
BoaltSimon.green_features = [power, strategic, green_buildings, climate]

Cali_Hall = Hall.create(:name=>"California Hall", :background=>"Located in central campus, Cal Hall is the main campus administration building, housing the Chancellor’s office and other top University administration offices. Designed in the Beaux Arts Style by John Galen Howard and built in 1905, it was added to the National Register of Historic Places in 1982.")
Cali_Hall.green_features = [green_departments, power, climate]

# Hall.create(:name=>"Campbell Hall")
# Hall.create(:name=>"Central Dine")
# Hall.create(:name=>"Chan-Bowditch")
Chavez_Center = Hall.create(:name=>"Chavez Center", :background=>"This campus hot spot for students was once a dining commons and lounge and later renovated in 1990 to house various student services, including student advising, resources and services, Center for Transfer, Re-entry & Student Parents, student arts organizations, and The Golden Bear Café. Built in 1960, it is named in honor of Cesar Chavez, the charismatic founding president of the farm workers’ union.")
Chavez_Center.green_features = [power, climate]

Cory_Hall = Hall.create(:name=>"Cory Hall", :background=>"Cory Hall is home to Electrical Engineering and Computer Sciences. The building houses labs devoted to integrated circuits, lasers, and robotics. Cory had a fifth floor added in 1985, the exterior of which features a computer chip inspired design motif.  It is named for Clarence L. Cory, Dean of the College of Mechanics and a faculty member for almost 40 years.")
Cory_Hall.green_features = [power, strategic, climate]

Davis = Hall.create(:name=>"Davis Hall", :background=>"Davis Hall houses the offices of the Department of Civil and Environmental Engineering, including its structural and earthquake engineering labs and teaching facilities. The building has a double-height space used for testing many types of materials and designs, from scale models of California highway overpasses to segments of the Golden Gate  Bridge. It is named for Professor Raymond Davis, who was a faculty member for 50 years and developed the Engineering Materials Laboratory into one of the world’s finest.")
Davis.green_features = [power, climate]

# Hall.create(:name=>"Doe Addition")

Doe_Annex = Hall.create(:name=>"Doe Annex", :background=>"Built in 1949, Bancroft Library is home to many of the University Library’s special collections, including of the largest collection of Western Americana. The library was founded with Hubert Howe Bancroft’s 19th century gift of his extensive library of California and Western history. The Bancroft Library also includes the Mark Twain Papers, the Regional Oral History Office, the University of California Archives, and other collections and artifacts. The building recently underwent a major seismic upgrade and renovation - its interior is one of the campus’s most beautiful spaces.")
Doe_Annex.green_features = [power, climate]

Doe = Hall.create(:name=>"Doe Library", :background=>"Doe Memorial Library is the main library on campus. The Beaux Arts building, which features the magnificently restored North Reading Room and the cozy Morrison Library, was the centerpiece of architect John Galen Howard’s classical campus ensemble. It is named for Charles Franklin Doe, who came from Maine in 1857 as a schoolteacher and made his fortune in California. He left a quarter of his estate to the University for the construction of the library. It was added to the National Register of Historic Places in 1982.  A four-story underground addition, the Gardner Stacks, opened in 1995 to provide more space for the library's holdings.", :energy_info=>"In Fall 2010, BSAC conducted a survey with students and full-time employees at Doe Library. They found that over 90 percent of participants said the three most effective ways to encourage sustainable practices is through education, incentives, and reminders.")
Doe.green_features = [power, climate]

Donner = Hall.create(:name=>"Donner Laboratory", :background=>"Donner Lab is home to molecular and cell biology and was the world’s first center for research in the uses of atomic energy in biology and medicine, and considered the birthplace of nuclear medicine. The lab was funded by William H. Donner, President of the Donner Steel Corporation, who donated money to the University for work in nuclear medicine following his son’s death from cancer.")
Donner.green_features = [power, climate]

# Hall.create(:name=>"Durant")
# Hall.create(:name=>"Dwinelle Annx")
Dwinelle = Hall.create(:name=>"Dwinelle Hall", :background=>"With more than 300,000 square foot of office and classroom space, Dwinelle is the second largest building on campus. The building is home to many departments within the College of Letters and Sciences and the Durham Theater.  A building expansion was completed in the 1990s. It is named for John W. Dwinelle, a UC Regent, state assemblyman, and author of the 1868 “Organic Art” that established the University of California.")
Dwinelle.green_features = [power, strategic, climate]

East = Hall.create(:name=>"East Asian Library", :background=>"Berkeley’s vast collection of East Asian manuscripts and artifacts—assembled over the past century—is housed in this library, the first freestanding structure at a U.S. university erected solely for East Asian collections. The library is home to more than 900,000 volumes, primarily in Chinese, Japanese, and Korean, plus thousands of manuscripts, rubbings, and the largest and most valuable collection of historic Japanese maps outside of Japan. It was built in 2008 and is named for the late Cornerlius Vander Starr, an insurance pioneer with a deep interest in Asia and a major donor to the building fund for the library.")
East.green_features = [power, climate]

# Hall.create(:name=>"Edwards Track")
# Hall.create(:name=>"Eshleman Hall")

# Hall.create(:name=>"Evans Field")

Etch = Hall.create(:name=>"Etcheverry Hall", :background=>"Etcheverry is home to the Departments of Mechanical, Nuclear and Industrial Engineering. It once held a functioning nuclear reactor in its basement and a research wind tunnel, both which are now dismantled. It is named for Bernard Etcheverry, Professor of drainage and irrigation and Chair of the Department for nearly three decades.")
Etch.green_features = [power, climate]

Evans = Hall.create(:name=>"Evans Hall", :background=>"Built in 1971, Evans is a ten-story building in the northeast part of campus, just east of Memorial Glade. Originally home to much of the computer infrastructure on campus, it now houses the Departments of Economics, Mathematics, and Statistics, and College of Letter and Sciences Advising. It is named for Griffith Evans, the Chair of the Math Department from 1934-1949.", :energy_info=>"During a lighting audit conducted in spring 2008, auditors were able to find almost 1,700 light fixtures that could be retrofitted throughout its ten floors. Many of these light fixture problems can be remedied by installing more energy efficient bulbs. This can be fluorescent, LED, or a lower wattage bulb for areas that do not need large amounts of light. Some other recommendations encouraged by the energy auditors were: <br> <br>
Increased usage of power strips to prevent phantom loads.Using task lighting when possible also has a large effect on energy consumption. <br> <br>
Hallways could use a reduction in total lighting but still be well lit; motion sensors would also be helpful. <br> <br>
Personal appliance use should be discouraged, communal refrigerators or communal printers will have the same desired result but with less power used.")
Evans.green_features = [strategic, power, climate]

# Hall.create(:name=>"Foothill Dorms")
Gardner = Hall.create(:name=>"Gardner Stacks", :background=>"The Gardner Stacks is a four-story underground addition connecting Doe Library to Moffitt Undergraduate Library.")
Gardner.green_features = [power, climate]

# Hall.create(:name=>"Giannini")
Giannini = Hall.create(:name=>"Giannini Hall", :background=>"Giannini is home to the College of Natural Resources including Agricultural & Resource Economics, and Environmental Science, Policy & Management. This building was named for benefactor Amadeo Peter Giannini, founded of the Bank of Italy (which eventually became the Bank of America). The light-splashed entry hall and grand split staircase are filled with Art Deco details. It was added to the National Register of Historic Places in 1982.")
Giannini.green_features = [power, climate]

# Hall.create(:name=>"Giauque")
# Hall.create(:name=>"Gill Tract")
# Hall.create(:name=>"Gilman")
# Hall.create(:name=>"Golden Bear")
# Hall.create(:name=>"Golden Bear Sb")
# Hall.create(:name=>"Greek Theatre")
# Hall.create(:name=>"Haas Business")
# Hall.create(:name=>"Haas Clbhouse")
Haas = Hall.create(:name=>"Haas Pavilion", :background=>"Haas Pavilion is a 12,000-seat state-of-the-art basketball area and sports facility located on in the middle of the main university sports complex. It is home to the university’s basketball, gymnastics, and volleyball teams. The building was originally built in 1933 as Harmon Gym, and underwent major renovation in 1999 to become Haas Pavilion, named in honor of Walter A. Haas, Jr.")
Haas.green_features = [strategic, climate]

Haas = Hall.create(:name=>"Haas School of Business", :background=>"Designed by Charles Moore and built in 1995, the Haas School is a mini-campus of three connected buildings set around a central courtyard. Classrooms, lecture halls, and seminar rooms are wired for the 21st century, and the complex also includes a computer lab, career center, Andersen Auditorium, Cheit Hall, and a business library.", :energy_info=>"During the spring of 2008, BSAC performed a lighting audit in the Student, Faculty and Cheit buildings in Haas. The survey found that 68% of lights were CFL, 28% T8 tubes, and 4% other. Lighting is estimated to be a quarter of all electricity costs. Most areas allow occupants to turn off lights when not in use, and motion sensors are installed around the buildings. Education campaigns to remind occupants to turn off the lights when they leave could be useful. Future energy audits to determine occupant behaviors could be useful in identifying more ways to cut down on energy usage.")
Haas.green_features = [strategic, power, climate]

# Hall.create(:name=>"Haas Trailers")
Hargrove = Hall.create(:name=>"Hargrove Library", :background=>"This three-story building in the “arts quadrangle” houses the No. 1 academic music library in the United States, with 190,000 volumes of printed music, books, and periodicals and more than 50,000 recordings, manuscripts and other rare materials. The building’s sustainable features include low-E glazing, sun shielding louvers, and a highly-efficient interior lighting system. It is named in honor of Jean Gray Hargrove, a Berkeley alumna, Bay Area concert pianist, and patron of the arts.")
Hargrove.green_features = [power, climate]

# Hall.create(:name=>"Harmon Gym")
# Hall.create(:name=>"Haviland")
Haviland = Hall.create(:name=>"Haviland Hall", :background=>"Haviland Hall is home to the Schools of Social Welfare and Public Health. The building was designed by John Galen Howard and named in honor of San Francisco banker J.T.H. Haviland, whose wife donated the funds for the building. It was added to the National Register of Historic Places in 1982.")
Haviland.green_features = [power, climate]

# Hall.create(:name=>"Hearst Annex")
Hearst = Hall.create(:name=>"Hearst Gym", :background=>"Designed by celebrated local architects Bernard Maybeck and Julia Morgan, Hearst Memorial Gym has large and small gymnasiums and outdoor swimming pools. The building is home to the Department of Physical Education and ROTC. It was added to the National Register of Historic Places in 1982.")
Hearst.green_features = [power, climate]

Mining = Hall.create(:name=>"Hearst Mining Building", :background=>"Hearst Mining was designed by John Galen Howard and financed by Phoebe Apperson Hearst as a memorial to her husband George, a silver tycoon and U.S. Senator. The building underwent a massive restoration that included cutting-edge seismic retrofitting to protect the building in the event of a major earthquake. The building houses new laboratories for advance experiments in computation, ceramics, metals and polymers, as well as facilities to develop nanoscale and superconducting materials. It was added to the National Register of Historic Places in 1982.", :energy_info=>"In the spring of 2008, students from BSAC attempted to survey the Hearst Memorial Mining Building. Of the approximate 300 occupants, 31 responded. Recommendations: taking the stairs instead of the elevator, turning off power strips prevent appliances from drawing power even when not in use. This is another way to become greener without changing habits that much. <br> <br>
During this same semester students tabled on Earth Day at Hearst Memorial Mining Building and were able to engage with more than 12 occupants. A considerable success considering the building has a modest amount of occupants. Newsletters were also distributed throughout the building containing sustainability tips. Overall the building was very hospitable towards the education efforts. Given that these events occurred over four years ago, more education projects could be in store.")
Mining.green_features = [power, climate]

# Hall.create(:name=>"Heating Plant")
# Hall.create(:name=>"Hertz Hall")
# Hall.create(:name=>"Hesse")
# Hall.create(:name=>"Hesse Annex")
Hilde = Hall.create(:name=>"Hildebrand Hall", :background=>"Built in 1966, Hildebrand houses graduate research laboratories, undergraduate teaching labs, and the Chemistry Library.  It is named after Joel Hildebrand, longtime Professor and former Dean of the College of Chemistry.")
Hilde.green_features = [strategic, power, climate]

Hilgrad = Hall.create(:name=>"Hilgard Hall", :background=>"Designed by John Galen Howard, this was one of the first campus buildings to acknowledge the City of Berkeley (by attempting to face both inward and outward at the same time). The building houses Environmental Science, Policy & Management. Named for Eugene Hilgard, an agriculture professor who founded the University Agricultural Experimental station, it was added to the National Register of Historic Places in 1982.")
Hilgrad.green_features = [strategic, power, climate]

King = Hall.create(:name=>"King Union Bldg")
# Hall.create(:name=>"Kleeburger")
Kosh = Hall.create(:name=>"Koshland", :background=>"Koshland is a research laboratory building and home to the Departments of Plant and Microbial Biology and Molecular and Cell Biology. Built in 1990, Koshland is named for Daniel Koshland, a Berkeley alumnus and Biochemistry Professor.")
Kosh.green_features = [power, strategic, climate]

Krober = Hall.create(:name=>"Kroeber Hall", :background=>"Named for Anthropology Professor, Kroeber Hall houses the Phoebe Hearst Museum of Anthropology and the Worth Ryder Art Gallery, in addition to classroom and office space.")
Krober.green_features = [power, climate]

Latimer = Hall.create(:name=>"Latimer Hall", :background=>"Latimer is laboratory building part of the College of Chemistry complex, housing labs and classrooms. It is named for Wendell Latimer, Professor of Chemistry (1919–55) and Dean of College of Chemistry (1942–49).")
Latimer.green_features = [power, strategic, climate]

# Hall.create(:name=>"LAW")

# Hall.create(:name=>"LBL")
# Hall.create(:name=>"Leconte Hall")
LeCunt = Hall.create(:name=>"Le Conte Hall", :background=>"Le Conte Hall is a five-story building housing the Physics Department. The eastern portion is the original Le Conte and today referred to as “Old Le Conte”. The western portion is known as “Le Conte Annex”. The world's first atom smasher was built in Le Conte Hall and to date, six Nobel laureates have had labs in the building.  The building was designed by John Galen Howard in the Beaux Arts style, and is dedicated to John Lawrence LeConte, the third President of the University and professor of Physics.", :energy_info=>"In the spring of 2008 BSAC performed a lighting audit in LeConte Hall’s public areas. Following the audit, 17 fixtures were retrofitted 700+ more fixtures were identified for retrofitting. The auditors also recommend stickers reminding people to turn off lights, occupancy sensors, bi-level lighting, and an overall reduction in the number of lamps used. <br> <br>
During the same semester these students hosted educational workshops focused on distributing environmental newsletters and informing occupants about phantom loads. Some additional suggestions include encouraging people to do is to take the stairs when possible and share office appliances (like printers) when possible.")
LeCunt.green_features = [strategic, power, climate]

Lewis = Hall.create(:name=>"Lewis Hall", :background=>"The building was built as part of the post-WWII expansion to accommodate the surge of faculty and students. It houses Chemistry and was named for Gilbert Lewis, Dean of the College of Chemistry from 1912-41.")
Lewis.green_features = [power, climate]

Shing = Hall.create(:name=>"Li Ka Shing", :background=>"The Li Ka Shing Center for Biomedical and Health Sciences, named for global entrepreneur and philanthropist Li Ka-Shing, is the anchor for a quadrangle of research and teaching buildings dedicated to the biomedical and health sciences.  It houses more than 450 researchers and features flexible, open labs shared by multiple investigators to facilitate collaboration, as well as the Henry H. Wheeler Jr. Brain Imaging Center, the Berkeley Stem Cell Center and the Henry Wheeler Center for Emerging and Neglected Diseases.  Its sustainable environmental design has been recognized with a LEEDTM Gold certification and a California Higher Education Energy Efficiency Best Practice Award for its HVAC design.")
Shing.green_features = [energy_star, power, leed, climate]

#Hall.create(:name=>"Life Science")
LSA = Hall.create(:name=>"LSA", :background=>"The six-story Life Sciences Addition was part of a major campus drive to improve facilities for biology studies. Located adjacent to the Valley Life Sciences Building it houses 46 laboratory suites for advanced biological research.")
LSA.green_features = [power, strategic, climate]

# Hall.create(:name=>"LSB")
McCone = Hall.create(:name=>"McCone", :background=>"McCone is home to the Departments of Earth and Planetary Sciences and Geography, and the Berkeley Seismological Laboratory, one of the world’s foremost centers for the study of earthquakes. Designed by John Warnecke ad built in 1961, it is named for alumnus and former CIA director John McCone.", :energy_info=>"During the fall of 2009, BSAC launched an outreach program in McCone Hall. The outreach program collected occupant surveys, turn off the light stickers on light switches, a lighting audit, and distributed educational packets concerning more sustainability. Informative posters displaying energy usage in McCone were displayed around the building. As a result, it was discovered that almost half of the building’s energy usage is overhead lighting. Therefore, reducing overhead lights would play a large role in reducing energy usage. The auditors recommend checking to see if occupants are following the educational packets distributed. They also recommend more motion sensor linked lighting and a reduction of lighting used for hallways and other over-lit areas.")
McCone.green_features = [strategic, power, climate]

# Hall.create(:name=>"Memorial Std")
# Hall.create(:name=>"Mens Fac Club")
Minor = Hall.create(:name=>"Minor Addition", :background=>"Minor Addition is the expansion to Minor Hall and home to the School of Optometry Clinics, including the Meredith W. Morgan University Eye Center. The building is a modernist concrete structure with wood beam trim and substantial window bays providing an emphasis on open views.")
Minor.green_features = [strategic, power, climate]

# Hall.create(:name=>"Moffitt")
Morgan = Hall.create(:name=>"Morgan Hall", :background=>"Morgan Hall houses the Department of Nutritional Sciences and Toxicology and was named for Anges Fay Morgan, a Professor of Nutrition from 1915-54.")
Morgan.green_features = [strategic, green_buildings, power, climate]

# Hall.create(:name=>"Morrison")
# Hall.create(:name=>"Moses")
Mulford = Hall.create(:name=>"Mulford Hall", :background=>"Mulford Hall is home to the Department of Environmental Science, Policy and Management. A unique building characteristic is that much of the interior is wood-paneled or covered by planks of various tree species, including California natives and foreign species. It is named for Water Mulford, first Dean of the School of Forestry from 1914-47.")
Mulford.green_features = [green_departments, power, climate]

Oxford = Hall.create(:name=>"Oxford Tract", :background=>"Adjacent to Warren Hall, Oxford Tract is a research complex for the Department of Plant and Microbial Biology. The complex consists of greenhouses, gardens, and research laboratories.")
Oxford.green_features = [power, climate]
# Hall.create(:name=>"Music Library")
# Hall.create(:name=>"Naval Arch")
# Hall.create(:name=>"North Gate")
# Hall.create(:name=>"Northwest Animal Facility")
# Hall.create(:name=>"Nw Animal")
# Hall.create(:name=>"Obrien")
#Ox = Hall.create(:name=>"Oxford Tract")
#Ox.green_features = [power, climate]

# Hall.create(:name=>"Parking A")
# Hall.create(:name=>"Parking B")
# Hall.create(:name=>"Parking B Sub")
# Hall.create(:name=>"Parking D")
# Hall.create(:name=>"Parking H")
# Hall.create(:name=>"Parking Stdm")
#RSF = Hall.create(:name=>"Rec Sports Facility")
#RSF.green_features = [power, climate, strategic]

#Hall.create(:name=>"Rec Sport Sub")
#Hall.create(:name=>"Res Hall I")
#Hall.create(:name=>"Res Hall Ii")
#Hall.create(:name=>"Res Hall Iii")
#Hall.create(:name=>"Res Hall Ii S")
#Hall.create(:name=>"Res Hall I Sb")
#Hall.create(:name=>"Rh3 Ida")
#Hall.create(:name=>"Rh3 Norton")
#Hall.create(:name=>"Rh3 Priestley")
#Hall.create(:name=>"Rh3 Spence")
#Hall.create(:name=>"Rugby Fld Hse")
#Hall.create(:name=>"Services")
#Hall.create(:name=>"Simon")
Oxford_Tract = Hall.create(:name=>"SRB1", :background=>"This high-tech building is home to serveral units of the campus Information Services and Technology unit. It was renamed in 2008 for the late Chief Justice of the U.S. Supreme Court Earl Warren - a Berkeley graduate and former California governor - after the demolition of the original Warren Hall, which was located on a nearby site. The building provides a stable and secure home for much of the campus's data infrastructure.")
Oxford_Tract.green_features = [power, strategic, climate]

Silver = Hall.create(:name=>"Silver Addition", :background=>"The Silver Space Sciences Lab Addition is a five-story research lab building and is one of the buildings in the Space Sciences Lab campus on the hill above the campus core.")
Silver.green_features = [power, climate]

Soda = Hall.create(:name=>"Soda Hall", :background=>"Soda Hall is home of the Computer Sciences Department and has advanced networking, wireless capabilities, and access to computer clusters for shared computer power, storage and services. Built in 1994, the building is named in honor of Y. Charles and Helen Soda for their commitment to education in the Bay Area.")
Soda.green_features = [power, strategic, climate]

#Hall.create(:name=>"South")
Sproul = Hall.create(:name=>"Sproul Hall", :background=>"This neoclassical building houses the Office of Financial Aid, Registrar, Visitors  Center, Graduate Division, Admissions, and UC Police Department. The combination of a stairway that can be used as a large raised platform is often the site of public performances and demonstrations. It is named for Robert Gordon Sproul, the first Berkeley alumnus and native Californian to serve as University President.", :energy_info=>"During fall of 2012, a plug load audit was performed. This audit used kill-a-watt meters to find where much of the buildings power was going. A major result of this audit was the realization that printers, even when not in use, use a lot of electricity. While more than half of the printers audited were Energy Star there were still many more that could be replaced. The auditors recommended consolidating printers and turning them all off at night. Education campaigns about environmental benefits and economic benefits would also help people to adopt additional sustainable behaviors.")
Sproul.green_features = [green_departments, power, climate]

Stanley = Hall.create(:name=>"Stanley Hall", :background=>"Stanley Hall is a state-of-the-art research laboratory and the Berkeley headquarters for the California Institute for Quantitative Biosciences (QB3), which supports interdisciplinary teaching and research as part of the campus’ Health Science Initiative. Built in 2007, Stanley Hall replaced the original 1952 structure which was demolished in 2003. The building is named for biochemist and virologist Wendell M. Stanley, one of Berkeley’s first Nobel laureates.", :energy_info=>"A lighting audit was performed in Stanley Hall during the fall of 2009. The audit was performed in public spaces in all 11 floors. Overall Stanley Hall has efficient lighting. However, many parts of the building are over-lit. Due to fire code, many parts of the building require light fixtures even though natural lighting is sufficient. The auditors recommend getting in touch with fire marshals to make sure the building is operating sustainably while still being safe. Some other recommendations would be motion sensor lights in areas that don’t need to stay lit around the clock. Auditors recommended tabling as a way to encourage people to be more energy efficient.")
Stanley.green_features = [power, strategic, climate]


#Hall.create(:name=>"Std Press Box")
St = Hall.create(:name=>"Stephens Hall", :background=>"The building is home to International & Area Studies, Ethnic Studies, Middle Eastern Studies, South Asian Studies, African Studies, Asian Studies, Peace & Conflict Studies, Office for History of Science and Technology, Townsend Center for the Humanities, and the Academic Senate. It is named for Henry M. Stephens, a Professor and student adviser.")
St.green_features = [power, climate]

#Hall.create(:name=>"Stern")
#Hall.create(:name=>"Sutardja Dai Hall")
Tang = Hall.create(:name=>"Tang Center", :background=>"The Tang Center is home to the University Health Services, which provides services such as acute care, radiology, a pharmacy, optometry clinic, and counseling. A major gift from Hong Kong businessman Jack C.C. Tang, whose two daughters graduated from Berkeley, helped fund this center for student health care.")
Tang.green_features = [power, green_departments, strategic, climate]

Tan = Hall.create(:name=>"Tan Hall", :background=>"Tan Hall is an 118,000 square foot research facility for the College  of Chemistry. The building contains research and teaching laboratories, a lecture hall, staff offices, and a seminar room for students and faculty. It is named in honor of Tan Kah Kee, a pioneering industrialist and philanthropist in China and Singapore.")
Tan.green_features = [power, climate]

Tol = Hall.create(:name=>"Tolman Hall", :background=>"Tolman Hall is home to the School of Education, Department of Psychology and Institute for Human Development. Its mid-20th century modernist look was inspired by the work of famed architect Le Corbusier and features a signature suspended breezeway and molded concrete decorations. It is named in honor of psychologist Edward Chace Tolman.")
Tol.green_features = [power, climate]

#Hall.create(:name=>"Tolman Sub")
#Hall.create(:name=>"Union")
#Hall.create(:name=>"Univ Art Ctr")
Univer = Hall.create(:name=>"University Hall", :background=>"This seven-story tower houses Public Health, Environmental Health & Safety, and various administrative units.  The building originally house the UC Office of the President before the headquarters were moved to Oakland.", :energy_info=>"A lighting audit was done in University Hall in the spring of 2008. This audit identified over 200 fixtures that needed to be retrofitted. After the audit, auditors recommended light stickers reminding people to turn off lights to be installed. Competitions such as a take the stairs challenge could help spur energy savings. The building is over lit so a general reduction of lamps would help, as well as distributing more energy efficient light bulbs. <br> <br>
In fall of 2009 a green coffee hour was hosted to encourage sustainable behaviors and lifestyles. Continued education about phantom loads and the impacts of behavioral changes are recommended for long-term adoption of sustainable practices.")
Univer.green_features = [power, strategic, green_buildings, green_departments, climate]

#Hall.create(:name=>"University Sb")
VL = Hall.create(:name=>"Valley Life Sciences", :background=>"The Life Sciences Building  is over 400,000 square feet, housing research and instructional laboratories for Departments of Integrative Biology, Molecular and Cell Biology, Environmental Science Policy and Management, and Anthropology and Nutritional Sciences. It is also home to several world-class research museums: Museum of Paleontology, Museum of Vertebrate   Zoology, and the University & Jepson Herbaria. In the early 1990s, it underwent a major building renovation and was renamed for two major contributors, Wayne and Gladys Valley.", :energy_info=>"In the spring of 2008, a lighting audit was performed in all public areas and found that many bulbs could be replaced with more efficient ones. Some recommendations given are: <br> <br>
De-lamp      the rooms that are already bright enough <br>
Distribute      CFLs <br>
Adjusting      when lights come on at night")
VL.green_features = [strategic, power, climate]

#Hall.create(:name=>"Warren Hall/Oxford Tract")
#Hall.create(:name=>"Wellman Ctyd")
Wellman = Hall.create(:name=>"Wellman Hall", :background=>"Housing Environmental Science, Policy & Management and the Essig Museum of Entomology Wellman Hall is part of the trio of buildings that were the core of agricultural studies. Its original name was Agriculture Hall but was renamed for Harry Wellman, Professor of Agricultural Economics and acting University President in 1967. Designed by John Galen Howard in the Beaux Arts style, it was added to the National Register of Historic Places in 1982.")
Wellman.green_features = [power, climate]

Wheel = Hall.create(:name=>"Wheeler Hall", :background=>"Wheeler Hall is home classrooms and to Wheeler Auditorium - one of the largest on campus, often used as a lecture hall for  undergraduate classes. The building is named for Benjamin Ide Wheeler, the University President during Berkeley’s “golden years” from 1899-1919. It was added to the National Register of Historic Places in 1982.")
Wheel.green_features = [power, strategic, climate]

#Hall.create(:name=>"Women Fac Clb")
Wurst = Hall.create(:name=>"Wurster Hall", :background=>"Wurster Hall, built in 1964, was designed by three Berkeley architecture faculty — Joseph Esherick, Vernon DeMars, and Donald Olsen. Wurster is home to the College of Environmental Design, the Center of Environmental   Design Research, and the Institute for Urban and Regional Development. Wurster is named for William Wilson Wurster, a distinguished architect and first Dean of the college, and his wife, Catherine Bauer Wurster, a Professor of City and Regional Planning and leader in the field of public housing.")
Wurst.green_features = [green_buildings, strategic, power, climate]
#Hall.create(:name=>"Zellerbach Hall")



if Hall.where(:id => 1).empty?
  Hall.create(:id => 1,:name => "Shofix Hall", :key =>"Bd5238Ki31GOL5ZewrQglA%3D%3D").save()


  # End green features

  HallFeature.create(:hall_id => 1, :green_feature_id => 1)
  HallFeature.create(:hall_id => 1, :green_feature_id => 2)
  HallFeature.create(:hall_id => 1, :green_feature_id => 3)
  HallFeature.create(:hall_id => 1, :green_feature_id => 4)
end

if Hall.where(:id => 2).empty?
  Hall.create(:id => 2, :name => "Frungy Centre", :key => "6MwduHG8B4JkuCejC0sCeg%3D%3D").save
  HallFeature.create(:hall_id => 2, :green_feature_id => 1)
  HallFeature.create(:hall_id => 2, :green_feature_id => 4)
end


if Hall.where(:id => 3).empty?
  Hall.create(:id => 3, :name => "Pik Tower", :key => "xE2OB0othPxoMOeq8gGehQ%3D%3D").save
  HallFeature.create(:hall_id => 3, :green_feature_id => 2)
end

if Hall.where(:id => 4).empty?
  Hall.create(:id => 4, :name => "Soda Hall").save
end

Category_general = Category.find_by_name("Top Tips")
Category_office = Category.find_by_name("Office")
Category_lab = Category.find_by_name("Lab")
Category_reshall = Category.find_by_name("Residence Hall")


if(Category_general == nil)
  Category_general = Category.create(:name=>"Top Tips")
end
if(Category_office == nil)
  Category_office = Category.create(:name=>"Office")
end
if(Category_lab == nil)
  Category_lab = Category.create(:name=>"Lab")
end
if(Category_reshall == nil)
  Category_reshall = Category.create(:name=>"Residence Hall")
end

homeText = Array[
Introduction.create(:title=>"Welcome", :content=>"Welcome to the mobile energy dashboard at UC Berkeley!  This dashboard is part of UC Berkeley’s Energy Management program, a comprehensive program aimed at permanently reducing the amount of energy the campus uses.  It empowers faculty, staff, and students to take smart, simple energy savings measures that will improve our environmental footprint and save the campus money ─ returning those funds to teaching and research. Learn more at myPower.berkeley.edu"),
Introduction.create(:title=>"How is it used?", :content=>"The dashboard lets you see the real-time effects of your energy savings measures such as turning off the lights at night, lowering the heat by a degree, or other similar actions. You will be able to see the cumulative impact of your behavior and of others in your building, proving that small actions can add up to a large impact.  Everyone has a role in the campus energy conservation effort."),
Introduction.create(:title=>"How does it work?", :content=>"A hardware connector in each facility communicates with the building's energy metering system and sends the data to software engine. The software tracks the exact amount of energy being consumed at any given moment, analyzes it, and communicates it to you in real-time via this dashboard.

In an effort to reduce greenhouse gas emissions and save money on operations, occupants are being given access to this innovative software tool powered by Pulse Energy.  Please check out the dashboard and feel free to post feedback or any suggestions you have for making it more useful to you.")
]




generalTips = Array[
Tip.create(:title=>"Turn off what you\'re not using", :content=>"Monitors and lights when you\'re away for more than 15 minutes"),
Tip.create(:title=>"Turn off what you\'re not using", :content=>"Overhead lights when not needed, including in common areas"),
Tip.create(:title=>"Turn off what you\'re not using", :content=>"Individual printers and other equipment at night and on weekends"),

Tip.create(:title=>"Buy energy efficient products", :content=>"Make sure your new computer, appliance, and electronics purchase are ENERGY STAR compliant"),
Tip.create(:title=>"Buy energy efficient products", :content=>"Choose CFL or LED light bulbs instead of incandescents"),

Tip.create(:title=>"Reduce the energy used by your computer", :content=>"Enable the energy-saving features like sleep mode"),
Tip.create(:title=>"Reduce the energy used by your computer", :content=>"Avoid screensavers, they cause newer monitors to use more energy"),
Tip.create(:title=>"Reduce the energy used by your computer", :content=>"Reduce the brightness and bump up the contrast of your monitor")
]

generalTips.each do |tip|
  CategoryTip.create(:category_id=>Category_general.id, :tip_id=>tip.id)
end


officeTips = Array[
Tip.create(:title=>"Purchasing", :content=>"<h3>Buy Energy Efficient Equipment</h3>Look for Energy Star or EPEAT equipment when shopping BearBuy or see if the Environmentally Preferred list includes an option for the equipment you want to buy."),
Tip.create(:title=>"Purchasing", :content=>"<h3>Choose a Laptop Instead of Desktop</h3>Laptops can save up to 90% in electricity use compared to desktop models."),
Tip.create(:title=>"Purchasing", :content=>"<h3>Upgrade CRT Monitors to LCDs</h3>Save energy by buying a flat screen monitor for your desktop. An LCD monitor uses about 40% less power than a CRT."),
Tip.create(:title=>"Purchasing", :content=>"<h3>Replace Old Refrigerators</h3>New refrigerators on average use about half the energy of models from 1990. Use common area refrigerators and microwaves instead of personal ones."),

Tip.create(:title=>"Standby Power", :content=>"<h3>Unplug</h3> Simply unplug items that you dont use very often."),
Tip.create(:title=>"Standby Power", :content=>"<h3>Use a Power Strip</h3>Plug in items like chargers and lamps, make the strip easily accessible, and turn it off when those items arent being used."),
Tip.create(:title=>"Standby Power", :content=>"<h3>Check Out a Kill-a-Watt</h3>If you want to know how much energy an electronic item is wasting when not in use, borrow a Kill-a-Watt monitor from the Office of Sustainability. Email myPower@berkeley.edu to reserve one today."),

Tip.create(:title=>"Thermal Comfort", :content=>"<h3>Close Doors and Windows When the Heat or AC is On</h3>Also check for drafts and air leaks and report problems to your building manager."),
Tip.create(:title=>"Thermal Comfort", :content=>"<h3>Use Sunlight Wisely</h3>Block direct sunlight by closing or tilting blinds to reduce cooling needs during the summer. In colder weather, leave shades and blinds open on sunny days, but close them at night to help reduce heat loss through windows."),
Tip.create(:title=>"Thermal Comfort", :content=>"<h3>Avoid Using Space Heaters</h3>Portable heaters can be unsafe and use large amounts of energy. Wear extra layers instead. If the building temperature is not in an acceptable range and youre still cold, look into purchasing an efficient and safe radiant heater. The Department of Energy has some helpful guidelines."),

Tip.create(:title=>"Lighting", :content=>"<h3>Turn Off Lights When You Dont Need Them</h3>Look to eliminate unnecessary lights and use natural lighting when possible."),
Tip.create(:title=>"Lighting", :content=>"<h3>Use Task Lighting</h3>If possible, turn off overhead lights and switch on a desk lamp. With low-wattage task lighting, less ambient light is needed, resulting in energy savings upwards of 40%."),
Tip.create(:title=>"Lighting", :content=>"<h3>Switch to CFL or LED Light Bulbs</h3>CFLs last 6 to 12 times longer than incandescents and use about 75% less energy. Light-emitting diode (LED) bulbs last even longer than CFLs and use a fraction of the energy. Both are available in equivalent light intensity and quality."),
Tip.create(:title=>"Lighting", :content=>"<h3>Agree on Lighting Routines in Communal Spaces</h3>Work with other building occupants on a routine for turning lights off when they are not needed. Post instructions for more complex switches. Install lighting timers or occupancy sensors in common areas whenever possible."),

Tip.create(:title=>"Computers", :content=>"Turn off your monitor when you leave for more than 15 minutes."),
Tip.create(:title=>"Computers", :content=>"Turn off individual printers at night and on weekends."),
Tip.create(:title=>"Computers", :content=>"<h3>Avoid Screensavers</h3>Originally used to prevent images from being burned into older monitors, they actually cause newer ones to use more energy by preventing them from going to sleep."),
Tip.create(:title=>"Computers", :content=>"<h3>Reduce Brightness and Bump Up Contrast</h3>Dropping brightness to the lowest setting can reduce power usage by up to 50 percent, just make sure that you can still easily read the screen by boosting contrast! It can also help to choose a desktop background that is darker."),
Tip.create(:title=>"Computers", :content=>"<h3>Disable Bluetooth and AirPort</h3>Save battery power by turning off the wireless Bluetooth and AirPort when not in use and make sure to fully charge and fully discharge your laptop battery once a month."),
Tip.create(:title=>"Computers", :content=>"<h3>Enable Energy-Saving Features</h3> Make sure the Energy Star or EPEAT features are turned on. Ask IT staff if you dont know."),
Tip.create(:title=>"Computers", :content=>"<h3>Keep Vents on Your Computer Clean and Unblocked</h3>This keeps the fans that cool your machine working more efficiently and can extend the life of your computer."),
Tip.create(:title=>"Computers", :content=>"<h3>Take Advantage of the Power of Your Network</h3>Many printers and multi-functional devices (combining copying, printing, and scanning functions) are easy to network together so multiple people can use them."),
Tip.create(:title=>"Computers", :content=>"<h3>Ask IT Staff</h3>See if backups and updates could be regularly done on the same day of the week, so that computers could be turned off the other days."),
Tip.create(:title=>"Computers", :content=>"<h3>Virtualize Your Servers</h3>Consider moving your servers to the campus data center, which can reduce the total amount of energy used through virtualization and other actions. Click here for more information.")
]

officeTips.each do |tip|
  CategoryTip.create(:category_id=>Category_office.id, :tip_id=>tip.id)
end

labTips = Array[
Tip.create(:title=>"Cold Storage", :content=>"Minimize Frost Formation on Freezers"),
Tip.create(:title=>"Cold Storage", :content=>"Clean Refrigerator & Freezer Coils"),
Tip.create(:title=>"Cold Storage", :content=>"<h3>Check the Door Seals or Gaskets for Leaks</h3>Do this by puttling a dollar bill in the door as you close it and see if holds firmly in place."),
Tip.create(:title=>"Cold Storage", :content=>"<h3>Keep a Cleared Radius of 3</h3>Reduce the heat load by keeping items off and away from appliances."),
Tip.create(:title=>"Cold Storage", :content=>"<h3>Locate Freezers in Cooler Areas</h3>Freezers have to work hard to maintain cold temperatures if the surrounding air is hot."),
Tip.create(:title=>"Cold Storage", :content=>"<h3>Consider Using Chest Freezers</h3>Chest freezers are more energy efficient than upright freezers."),
Tip.create(:title=>"Cold Storage", :content=>"<h3>Turn Off Any Empty Freezers</h3>"),
Tip.create(:title=>"Cold Storage", :content=>"<h3>Consider Alternate Storage Methods</h3>Switching to new room temperature sample storage methods (e.g., biomatrica.com) or liquid nitrogen storage tanks for certain kinds of samples can reduce electricity use as well as increase storage dependability. Contact myPower@berkeley.edu for more information and case studies."),
Tip.create(:title=>"Cold Storage", :content=>"<h3>Conduct an Equipment Audit</h3>Identify items that can be decommissioned, not only cold storage, but other equipment as well. You can save electricity by not having excess equipment plugged in, and free up space in your lab. You can also request (myPower@berkeley.edu)stickers to help signal which equipment can be regularly turned off."),
Tip.create(:title=>"Fume Hoods", :content=>"<h3>Shut Fume Hood Sashes</h3>When not in use, decrease hood work opening. When working with chemicals, set the sash at the proper opening and never more than is recommended."),
Tip.create(:title=>"Fume Hoods", :content=>"<h3>Store Chemicals and Equipment in Cabinets</h3>Keep fume hoods clear of unnecessary items that can block ventilation."),
Tip.create(:title=>"Fume Hoods", :content=>"<h3>Report Excessively High Inflows</h3>If your fume hood has >150 ft/min inflow, turbulence and decreased containment can occur."),
Tip.create(:title=>"Fume Hoods", :content=>"<h3>Turn Off BioSafety Cabinets</h3>Shut sashes and turn off blowers and lights at night."),
Tip.create(:title=>"Fume Hoods", :content=>"<h3>Collaborate with Your Facility Manager</h3>Explore the possibilities of installing occupancy sensors to turn off fume hoods at night. Such occupancy-based measures might work best for teaching labs, but could decrease energy use overall. Also ask about decommissioning hoods, switching to more efficient variable air volume fume hoods, or changing the temperature operating range of the lab space."),

Tip.create(:title=>"Lighting", :content=>"<h3>Turn Off Lights When You Dont Need Them</h3>Look to eliminate unnecessary lights and use natural lighting when possible."),
Tip.create(:title=>"Lighting", :content=>"<h3>Use Task Lighting</h3>If possible, turn off overhead lights and switch on a desk lamp. With low wattage task lighting, less ambient light is needed, resulting in energy savings upwards of 40%."),
Tip.create(:title=>"Lighting", :content=>"<h3>Switch to CFL or LED Light Bulbs</h3>CFLs last 6–12 times longer than incandescents and use about 75% less energy. Light-emitting diode (LED) bulbs last even longer than CFLs and use a fraction of the energy. Both are available in equivalent light intensity and quality."),
Tip.create(:title=>"Lighting", :content=>"<h3>Agree on Lighting Routines in Communal Spaces</h3>Work with other building occupants on a routine for turning lights off when they are not needed. Post instructions for more complex switches. Install lighting timers or occupancy sensors in common areas whenever possible."),

Tip.create(:title=>"Stand By", :content=>"<h3>Use a Power Strip</h3>Plug in items like chargers and lamps, make the strip easily accessible and turn it off when those items arent being used."),
Tip.create(:title=>"Stand By", :content=>"<h3>Check Out a Kill-a-Watt</h3>If you want to know how much energy an electronic item is wasting when not in use, borrow a KillaWatt monitor from the Office of Sustainability. Email myPower@berkeley.edu to reserve one today."),

Tip.create(:title=>"Purchasing", :content=>"<h3>Buy Energy Efficient Equipment </h3>Look for Energy Star or EPEAT equipment when shopping BearBuy or see if the Environmentally Preferred list includes an option for the equipment you want to buy."),
Tip.create(:title=>"Purchasing", :content=>"<h3>Ask the Vendor</h3>If youre buying a specialty item like a lab freezer and theres not an Energy Star alternative, ask the vendor for information on energy usage and how to adjust energy-saving settings. Also checkout the Labs21 energy saving equipment wiki.")
]

labTips.each do |tip|
  CategoryTip.create(:category_id=>Category_lab.id, :tip_id=>tip.id)
end
