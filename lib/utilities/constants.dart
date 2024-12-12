import 'package:flutter/material.dart';

enum LoginSignup { login, signup }

enum From { detail, add, edit }

const List<String> categories = [
  "Boxing",
  "Hockey",
  "Athletics",
  "Soccer",
  "Tennis",
  "Wrestling",
  "Zudo",
  "Gymnastics"
];

List<Map<String, String>> podcastData = [
  {
    "lang": "ENGLISH",
    "description": "Empower Your Mind on Anti-Doping Education"
  },
  {
    "lang": "ಕನ್ನಡ (Kannada)",
    "description": "ಡೋಪಿಂಗ್ ಶಿಕ್ಷಣದ ಬಗ್ಗೆ ನಿಮ್ಮ ಮನಸ್ಸು ಶಕ್ತಿಯುತವಾಗಿಸಿಕೊಳ್ಳಿ"
  },
  {
    "lang": "தமிழ் (Tamil)",
    "description": "டோப்பிங் குறித்து உங்கள் அறிவை மேம்படுத்துங்கள்"
  },
  {
    "lang": "മലയാളം (Malayalam)",
    "description": "ഡോപ്പിംഗ് സംബന്ധിച്ച അറിവ് വർദ്ധിപ്പിക്കൂ"
  },
  {"lang": "हिंदी (Hindi)", "description": "डोपिंग शिक्षा पर अपनी समझ बढ़ाएँ"},
  {
    "lang": "తెలుగు (Telugu)",
    "description": "డోపింగ్ గురించి మీ జ్ఞానాన్ని పెంచుకోండి"
  }
];

List<Map<String, dynamic>> gameData = [
  {
    "url": "https://dope-2024.github.io/sih/static/pictures/game3.jpg",
    "name": "Word Whirl",
    "color": const Color.fromARGB(255, 255, 186, 59)
  },
  {
    "url": "https://dope-2024.github.io/sih/static/pictures/game2.jpg",
    "name": "Tru or Talented ?",
    "color": const Color.fromARGB(255, 244, 54, 54)
  },
  {
    "url": "https://dope-2024.github.io/sih/static/pictures/game4.jpg",
    "name": "Ethics Enigma",
    "color": const Color.fromARGB(255, 172, 39, 234)
  },
  {
    "url": "https://dope-2024.github.io/sih/static/pictures/game1.jpg",
    "name": "Doping Dilemma",
    "color": const Color.fromARGB(255, 12, 226, 137)
  }
];

List<String> languages = [
  "English",
  "Tamil",
  "Kannada",
  "Malayalam",
  "Telugu",
  "Hindi"
];

List<String> rebuildTopics = [
  "NADA or WADA",
  "Sports Authority of India (SAI)",
  "Anti-Doping Advocacy",
  "Mentorship",
  "Personal Trainer",
  "Higher Education",
  "Workshops and Seminars"
];

List<Map<String, String>> articleData = [
  {
    "url":
        "https://ss-i.thgim.com/public/incoming/ljayte/article68882836.ece/alternates/LANDSCAPE_1200/AFP_18P8EY.jpg",
    "sport": "ATHLETICS",
    "title": "Asiad Gold medallist Vismaya fails doping test",
    "date": "18 November 2024",
    "data":
        ''' V.K. Vismaya, who anchored the Indian women’s 4x400m relay team to gold at the 2018 Jakarta Asian Games, has tested positive for dope. The 27-year-old quarter miler was tested at her home in Perumbavur, near Kochi, in an out-of-competition test on August 15 and the National Anti-Doping Agency (NADA) informed the athlete on September 12 that her urine sample contained Clomiphene which comes under the hormone and metabolic modulators category which is prohibited at all times.

Clomiphene, according to Sport Integrity Australia, is a non-steroidal medication used clinically to induce ovulation in women and increase testosterone levels in males. And Vismaya, who last competed on June 1 in a Taipei meet, explained she had taken it as a fertility drug.

“I agree I had taken it because it induces ovulation. I had mentioned this in the NADA form when they came to take the test. But they did not consider it,” Vismaya told Sportstar from Perumbavur on Monday evening.

“I met the doctor in the first week of August and when the treatment was on, on August 15, the dope test was taken. It was not possible to submit a TUE (therapeutic use exemption) a month in advance in my case. I submitted the TUE after the sample was taken and they rejected it. I’m three months pregnant now.”

Vismaya, who was also a part of the Indian mixed relay team which finished seventh in the 2019 Doha Worlds, said she had twice sent detailed letters to NADA explaining her case. '''
  },
  {
    "url":
        "https://d3lzcn6mbbadaf.cloudfront.net/media/details/ANI-20241118063819.jpg",
    "sport": "India Hosts Anti-Doping Training",
    "title":
        "India to host anti-doping training with World Anti-Doping Agency support",
    "date": "18 November 2024",
    "data":
        ''' India is set to host an anti-doping training program in collaboration with the World Anti-Doping Agency (WADA) and with support from Japan, marking a significant step toward strengthening global efforts against doping in sports. The initiative aims to enhance anti-doping education and capacity-building in the Asia region. By bringing together experts, athletes, and administrators, the training will focus on the latest strategies for testing, monitoring, and promoting clean sport practices. This collaboration reflects India’s commitment to fostering ethical sportsmanship and ensuring a level playing field in competitive sports.

With Japan's support, the program underscores the importance of international cooperation in combating doping. It also aligns with WADA's global agenda of spreading awareness and equipping stakeholders with effective tools to detect and prevent doping violations. India’s proactive role in hosting such an event showcases its dedication to maintaining integrity in sports while promoting fair competition. The initiative not only reinforces the country's position as a leader in sports governance in the region but also sets a strong example for the global sporting community. '''
  },
  {
    "url":
        "https://static.toiimg.com/thumb/msid-115341782,imgsize-32084,width-400,resizemode-4/115341782.jpg",
    "sport": "Powerlifter",
    "title": "Worlds medallist Indian para powerlifter banned for doping",
    "date": "15 November 2024",
    "data":
        ''' Indian para powerlifter and World Championships medallist has been handed a doping ban, marking a significant setback for both the athlete and Indian para sports. The athlete, who had earned accolades on the global stage, was found guilty of violating anti-doping regulations, leading to a suspension. This decision not only tarnishes their individual reputation but also raises concerns about the integrity of Indian para powerlifting. The incident serves as a reminder of the rigorous anti-doping measures enforced in sports to maintain fairness and ethical competition.

The ban highlights the ongoing battle against doping in sports, emphasizing the importance of adherence to strict guidelines to protect the spirit of fair play. For Indian para sports, this development is a call to action for more robust anti-doping education and preventive measures for athletes at all levels. It also underscores the need for athletes to seek proper guidance regarding supplements and medications to avoid inadvertent violations. This case reiterates the importance of maintaining a clean and transparent sporting environment, ensuring trust and fairness in competitive arenas.
 '''
  },
  {
    "url":
        "https://shabiba.eu-central-1.linodeobjects.com/2024/11/1730805281-1730805281-iu9vqhpeatww.jpg",
    "sport": " Clean Sport Awareness",
    "title":
        "Oman Anti-Doping Committee participates in Science Festival promoting Clean Sports",
    "date": "5 November 2024",
    "data":
        ''' The Oman Anti-Doping Committee actively participated in the Oman Science Festival, leveraging the platform to promote the importance of clean sports and raise awareness about anti-doping practices. Through interactive sessions and educational exhibits, the committee engaged with athletes, students, and sports enthusiasts, emphasizing the significance of integrity and fair play in sports. The initiative aimed to educate the younger generation about the detrimental effects of doping on health and careers, fostering a culture of clean competition from grassroots levels.

This collaboration between science and sports highlights the growing emphasis on ethical sportsmanship in Oman. By integrating anti-doping education into a science-focused event, the committee effectively bridged the gap between scientific knowledge and practical application in sports. Such efforts contribute to building a strong foundation for clean sports, empowering athletes to make informed choices and uphold the principles of fairness and respect in their athletic pursuits. '''
  },
  {
    "url":
        "https://www.aljazeera.com/wp-content/uploads/2024/10/GettyImages-1643280189-1728307038.jpg?w=770&resize=770%2C513&quality=80",
    "sport": "Football",
    "title":
        "Paul Pogba drug ban reduced to 18 months, can play football from March",
    "date": "7 October 2024",
    "data":
        ''' Paul Pogba’s doping suspension has been cut from four years to 18 months after experts supported the French football player’s insistence that he had unintentionally ingested a banned substance, the Court of Arbitration for Sport (CAS) says.

The 91-times capped World Cup winner was provisionally suspended by Italy’s anti-doping organisation, NADO Italia, in September 2023 after testing positive for DHEA, a banned substance that raises levels of testosterone, in August 2023 after a match between Juventus and Udinese.

CAS reduced the sentence last week with Pogba saying his “nightmare is over”. The 31-year-old, who has a contract with Italy’s Juventus until June 2026, will be eligible to return to football in March.

In a statement released on Monday, CAS said Pogba had argued that his ingestion of DHEA was not intentional and had occurred after he consumed a supplement prescribed to him by a doctor in Florida.

“Mr Pogba had been given assurances that the medical doctor, who had claimed to treat several high level U.S. and international athletes, was knowledgeable and would be mindful of Mr Pogba’s anti-doping obligations under the World Anti-Doping Code,” CAS added.
 '''
  },
  {
    "url":
        "https://ichef.bbci.co.uk/news/976/cpsprodpb/2CF6/production/_132501511_gettyimages-1335685941.jpg.webp",
    "sport": "Tennis",
    "title":
        "Tara Moore doping clearance decision to be challenged by Tennis Integrity Agency",
    "date": "Jan 30, 2024",
    "data":
        '''Jannik Sinner said he was “disappointed and surprised” Saturday after the World Anti-Doping Agency (WADA) appealed the decision to clear him in his steroid case, seeking a ban of up to two years.

The Italian world number one twice tested positive for traces of the banned substance clostebol in March but was exonerated and allowed to carry on playing.

The 23-year-old went on to win the US Open earlier this month for his second major crown, weeks after the International Tennis Integrity Agency (ITIA) found he “bears no fault or negligence”.

The ITIA accepted his explanation that the drug entered his system when his physiotherapist used a spray containing it to treat a cut, then provided massage and sports therapy to the player.

WADA on Thursday appealed the high-profile case to the Court of Arbitration for Sport.

“It is WADA’s view that the finding of ‘no fault or negligence’ was not correct under the applicable rules,” it said in a statement on Saturday.

WADA made the appeal announcement as Sinner was on court at the China Open, where the defending champion fought back to beat 69th-ranked Russian Roman Safiullin 3-6, 6-2, 6-3 in Beijing.

“WADA is seeking a period of ineligibility of between one and two years,” it added.

Sinner has consistently denied knowingly doping and said after his win: “Obviously I’m very disappointed and also surprised.

“We had three hearings. All three hearings came out very positively for me.”

Clostebol is an anabolic agent prohibited at all times by WADA.
Player scepticism

After winning the US Open, Sinner said that the controversy over his failed tests was still on his mind.

He defeated Taylor Fritz in straight sets to add the New York title to his Australia Open triumph in January.

“It was and it’s still on my mind. It’s not that it’s gone, but when I’m on court, I try to focus about the game, I try to handle the situation the best possible way, communication with the team, in the practice courts,” said the world number one.

“It was not easy, that’s for sure, but I tried to stay focused, with which I guess I’ve done a great job.”

The decision to clear the Italian was met with scepticism by some players in the locker room who suggested that Sinner had benefited from preferential treatment due to his status in the sport.

Australia’s Nick Kyrgios said in a post on X that the lack of a suspension was “ridiculous”.

Canadian player Denis Shapovalov said the decision proved that there are “different rules for different players” suggesting that Sinner was saved by his ranking.

On court in Beijing, Sinner fell behind against the “lucky loser” Safiullin on Saturday after also dropping a set in his opening victory over Chile’s Nicolas Jarry.

The second set went with serve until the sixth game when Sinner finally broke to go up 4-2, celebrating with a subtle fist pump.

Sinner took control early on in the deciding set on the way to an ultimately comfortable victory to reach the last eight, where he faces Jiri Lehecka of the Czech Republic.

In-form Sinner has reached at least the quarter-final of every tournament he has played this year. '''
  },
  {
    "url":
        "https://images.thequint.com/thequint%2F2024-08-06%2Frvk8r2ut%2Fhero-image-ol.jpg?auto=format%2Ccompress&fmt=webp&width=720",
    "sport": "Wrestling",
    "title":
        "'I Will Continue to Fight For....': Vinesh Phogat's Emotional Message to India",
    "date": "Aug 16, 2024",
    "data":
        '''Olympic rings: As a small girl from a small village, I did not know what was the Olympics or what these rings meant. As a small girl, I dreamt of things like long hair, flaunting a mobile phone in my hand, and doing all these things that any young girl would normally dream of.

My father, an ordinary bus driver, would tell me that one day he would see his daughter fly high in a plane while he would drive on the road below, that only I would turn my father's dreams into a reality. I don't want to say it, but I think I was his favourite child because I was the youngest of the three. When he used to tell me about this, I used to laugh at the absurd thought of it, it did not mean much to me. My mother, who could have a whole story written on the hardships of her life, only dreamt that all her children would one day live a life better than she did. Being independent and her kids being up on their own feet was enough of a dream for her. Her wishes and dreams were much more simple than my father's '''
  },
];

List<Map<String, dynamic>> caseStudy = [
  {
    "url":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToqN4pnFCDwv66Ez7VUDr0Q_WP0AeyJ0y40Q&&s",
    "name": "Usain Bolt",
    "sport": "Sprinting",
    "description":
        "Usain Bolt, the Jamaican sprinter renowned for his world records in the 100m and 200m events, faced a setback when his teammate, Nesta Carter, tested positive for a banned substance following the 2008 Beijing Olympics. As a result, Bolt's 4x100m relay team was disqualified, stripping him of one of his nine Olympic gold medals.",
    "level": [
      ["At Rest (Baseline Level)", "80-100", "50-70"],
      ["During Intense Training", "350-450", "80-120"],
      ["During High-Pressure Matches", "550-650", "150-200"]
    ]
  },
  {
    "url":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlicheavt7iunDG071FiE16K6WDReXVUvFIg&&s",
    "name": "Neeraj Chopra",
    "sport": "Javelin Throw",
    "description":
        "Neeraj Chopra, India's Olympic gold medalist in javelin throw, has been a prominent figure in athletics. While there have been doping cases in Indian athletics, there is no public record of Chopra being involved in any doping violations. His consistent performances have been a source of national pride.",
    "level": [
      ["At Rest (Baseline Level)", "45-55", "30-40"],
      ["During Intensive Training", "70-80", "40-50"],
      ["After Significant Achievement", "80-100", "50-60"]
    ]
  },
  {
    "url":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCKlyde8TBsrA6oFmuM3jdDh_SsmyJ6ah6PA&&s",
    "name": "Serena Williams",
    "sport": "Tennis",
    "description":
        "Serena Williams, the American tennis icon, has faced doping allegations in the past. In 2018, she was tested positive for a banned substance but was later cleared of any wrongdoing after an investigation. Her career continues to inspire many aspiring athletes worldwide.",
    "level": [
      ["At Rest (Baseline Level)", "70-90", "50-70"],
      ["During Intense Training", "300-400", "80-120"],
      ["During High-Pressure Matches", "550-700", "150-200"]
    ]
  },
  {
    "url":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkuh09XLj-mJkV3DmzYa0iRS--xVSwl7autw&&s",
    "name": "Michael Phelps",
    "sport": "Swimming",
    "description":
        "Michael Phelps, the American swimmer with the most Olympic gold medals, has faced doping allegations during his career. In 2009, he was photographed using a marijuana pipe, leading to a suspension from USA Swimming. However, he was not banned from competition, and he returned to win multiple gold medals in subsequent Olympics.",
    "level": [
      ["At Rest (Baseline Level)", "80-100", "50-70"],
      ["During Rigorous Training", "300-450", "80-120"],
      ["After Major Achievement", "600-800", "150-200"]
    ]
  },
  {
    "url":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3jK_p5JUACLcao14Cq8aCUoB6QMjkl6uOVQ&&s",
    "name": "Frankie Andreu",
    "sport": "Cyclist",
    "description":
        "Frankie Andreu, a former professional cyclist, admitted that he started using performance-enhancing drugs (like EPO, which boosts red blood cell production) in 1995 to improve his performance. In 2005, he and his wife testified that, during a hospital visit in 1996, Lance Armstrong told doctors he had also used banned substances, including EPO, growth hormones, and steroids.",
    "level": [
      ["At Rest (Baseline Level)", "35-55", "20-40"],
      ["During Intense Training", "65-85", "40-60"],
      ["During High-Pressure Matches", "50-75", "15-35"]
    ]
  },
];

List<Map<String, dynamic>> courseData = [
  {
    "url": "https://dope-2024.github.io/sih/static/pictures/Course1.png",
    "level": "Beginner",
    "description": "Introduction to Anti-Doping Education",
    "video": {
      "Tamil": "https://youtu.be/gdTC1ya1yfQ",
      "Telugu": "https://youtu.be/BcAMZeiAdSM",
      "Malayalam": "https://youtu.be/IChXglZy78o",
      "Hindi": "https://youtu.be/wLq7BqxczDI",
      "English": "https://youtu.be/REchfi3z3Vg",
      "Kannada": "https://youtu.be/mNvV-J186bs",
    },
    "data": '''
**Module 1: What is Doping?**

**Doping: A Threat to Fair Play**

Doping, the use of performance-enhancing substances or methods, is a serious issue in sports that undermines the integrity of competition. It's a complex problem with far-reaching consequences.

**Types of Doping:**

    &&Substance Doping:&& This involves the use of banned substances to enhance performance. Common substances include:
        - &&Anabolic steroids:&& These synthetic hormones mimic the effects of testosterone, promoting muscle growth and strength.
        - &&Stimulants:&& These substances increase alertness and reduce fatigue, such as amphetamines and cocaine.
        - &&Diuretics:&& These drugs increase urine production, which can mask the presence of other banned substances.
        - &&Hormones:&& This includes substances like human growth hormone (HGH), which can increase muscle mass and recovery time.

    &&Method Doping:&& Includes blood doping and gene doping. Common methods include:
        - &&Blood doping:&& This involves increasing the number of red blood cells in the body, which can improve oxygen delivery to muscles.
        - &&Gene doping:&& This involves the genetic modification of cells to enhance athletic performance.

**Impact of Doping:**

    Doping has serious consequences for both athletes and the sport itself:

    - &&Health Risks:&&
        - &&Physical:&& Doping can lead to a variety of health problems, including heart disease, liver damage, kidney damage, and increased risk of cancer.
        - &&Psychological:&& Doping can lead to psychological issues such as addiction, depression, and anxiety.
    - &&Career Implications:&&
        - &&Bans and Penalties:&& Athletes who are caught doping face severe penalties, including bans from competition and forfeiture of medals and records.
        - &&Damaged Reputation:&& Doping scandals can tarnish an athlete's reputation and lead to loss of sponsorships and endorsements.
        - &&Public Disgrace:&& Doping scandals can damage the reputation of the sport and erode public trust.

To combat doping, international organizations like the World Anti-Doping Agency (WADA) have implemented strict anti-doping rules and testing procedures. However, the fight against doping remains ongoing as new substances and methods continue to emerge.

**Case Study: Ben Johnson (1988 Olympics):**

Ben Johnson's doping scandal at the 1988 Olympics highlights the severe consequences of doping in sports.

- &&The rise and fall:&& Ben Johnson's rise to fame came in the late 1980s as he shattered 100-meter sprint records, culminating in a stunning gold medal at the 1988 Seoul Olympics with a world-record time of 9.79 seconds. However, his fall was swift and dramatic; just days later, a doping scandal led to his disqualification, loss of the gold medal, and a ban from competition.
- &&The role of pressure:&& The intense pressure Ben Johnson faced played a crucial role in his decision to use performance-enhancing drugs. Competing in an era of fierce track and field rivalries, the expectations to succeed for his country, combined with the lure of financial rewards, created immense stress. This pressure, both external and internal, likely led him to seek shortcuts to stay competitive.

**Scenario Challenge: Energy Drink Dilemma**

**Scenario:** A popular energy drink brand has been accused of using a banned stimulant in their product. This stimulant has been linked to serious health risks, including heart attacks and seizures. Analyze this scenario and identify the potential risks associated with consuming this energy drink. Consider the following questions:
    - &&Health Risks:&& What are the potential health consequences of consuming this energy drink, both short-term and long-term?
    - &&Legal Implications:&& What are the legal implications for the company if they are found to be using a banned substance?
    - &&Consumer Trust:&& How could this scandal impact the company's reputation and consumer trust?
    - &&Regulatory Response:&& What actions might regulatory agencies take in response to this situation?
    - &&Crisis Management:&& How should the company respond to this crisis to minimize damage to their brand and reputation?

**Answers for Scenario:**

    - &&Health Risks:&& Increased heart rate, blood pressure, anxiety, insomnia, and in severe cases, heart attack, stroke, and seizures.
    - &&Legal Implications:&& Significant fines, product recalls, and potential lawsuits from consumers who have suffered adverse health effects.
    - &&Consumer Trust:&& Loss of consumer trust, decreased sales, and negative brand image.
    - &&Regulatory Response:&& Product recall, investigations, and potential bans on the sale of the product.
    - &&Crisis Management:&& Immediate product recall, transparent communication with consumers, cooperation with regulatory agencies, and a public relations campaign to restore trust.

**Module 2: Why is Anti-Doping Important?**

**The Pervasive Threat of Doping in Sports**

Doping, the use of performance-enhancing substances or methods, is a persistent issue that continues to plague the world of sports. It not only undermines the very essence of fair play but also poses significant health risks to athletes. Anti-doping measures are crucial to safeguard the integrity of sports, protect the health of athletes, and ensure a level playing field for all competitors.

**The Devastating Impact of Doping**

    - &&Compromising Athlete Health:&&
        - &&Physical Toll:&& Doping can lead to a range of serious health issues, including heart problems, liver damage, kidney dysfunction, and increased cancer risk.
        - &&Psychological Distress:&& The immense pressure to perform, coupled with the potential for addiction, can take a significant toll on an athlete's mental health, leading to depression, anxiety, and substance abuse.
    - &&Undermining Fair Competition:&&
        - &&Leveling the Playing Field:&& Anti-doping measures ensure that athletes compete based on their natural abilities, hard work, and dedication, rather than resorting to artificial means.
        - &&Preserving the Spirit of Sport:&& Doping tarnishes the spirit of sportsmanship, which emphasizes fair play, respect, and integrity.
    - &&Damaging the Reputation of Sports:&&
        - &&Eroding Public Trust:&& Doping scandals can erode public trust in athletes, sports organizations, and the integrity of the sport itself.
        - &&Financial Implications:&& Doping can have severe financial consequences, as sponsors and fans may withdraw their support, leading to decreased revenue and potential economic losses.

**The Role of Anti-Doping Agencies**

To combat doping, various anti-doping agencies have been established worldwide, including the World Anti-Doping Agency (WADA). These agencies work tirelessly to develop and enforce anti-doping rules, conduct drug tests, and educate athletes about the dangers of doping.

**The Future of Anti-Doping**

    - &&Enhance Technological Advancements:&& Develop advanced testing methods to detect new and emerging doping substances and methods.
    - &&Strengthen International Cooperation:&& Foster collaboration among countries to share information and coordinate anti-doping efforts.
    - &&Promote Education and Awareness:&& Educate athletes, coaches, and support staff about the dangers of doping and the importance of clean sport.
    - &&Implement Stricter Penalties:&& Impose severe penalties on athletes who are found guilty of doping, including bans, fines, and forfeiture of medals.

By working together, we can create a future where athletes compete fairly and honorably, inspiring future generations and upholding the true spirit of sport.
'''
  },
  {
    "url": "https://dope-2024.github.io/sih/static/pictures/Course3.png",
    "level": "Intermediate",
    "description": "Anti-Doping Rules, Regulations, and Legalities",
    "video": {
      "Tamil": "https://youtu.be/Xv6kQRlJSTg",
      "Telugu": "https://youtu.be/c39zPHXGixU",
      "Malayalam": "https://youtu.be/O_GehIU47mg",
      "Hindi": "https://youtu.be/RAOYq6Tn2P4",
      "English": "https://youtu.be/GV5b5MqbR2M",
      "Kannada": "https://youtu.be/45ei79HaaBs",
    },
    "data": '''

**Module 1: Overview of Prohibited Substances and Methods**

This module explores the substances and methods banned in sports by the World Anti-Doping Agency (WADA). Understanding these categories helps athletes, coaches, and support personnel ensure compliance with anti-doping rules while promoting fair and ethical competition.

&& 1. Overview of Prohibited Substances and Methods &&
The WADA Prohibited List, updated annually, classifies substances and methods based on their potential to:
- Enhance performance unnaturally.
- Pose significant health risks.
- Violate the spirit of sport.

Substances and methods are categorized into those:
- Prohibited at all times (in and out of competition).
- Banned only during competitions or specific sports.

&& 2. Categories of Prohibited Substances &&
- **Stimulants**:
    - Examples: Amphetamines, cocaine, ephedrine.
    - Purpose: Increase alertness, focus, and energy by stimulating the central nervous system.
    - Risks: Anxiety, heart palpitations, and addiction.

- **Anabolic Agents**:
    - Examples: Testosterone, nandrolone, stanozolol.
    - Purpose: Promote muscle growth and recovery.
    - Risks: Hormonal imbalance, liver damage, and cardiovascular issues.

- **Peptide Hormones, Growth Factors, and Related Substances**:
    - Examples: Erythropoietin (EPO), human growth hormone (hGH).
    - Purpose: Enhance endurance or muscle mass.
    - Risks: Blood thickening, increased cancer risk, and organ damage.

- **Beta-2 Agonists**:
    - Examples: Clenbuterol, salbutamol (only permitted in specific doses).
    - Purpose: Open airways and enhance oxygen delivery.
    - Risks: Cardiovascular complications and muscle tremors.

- **Diuretics and Masking Agents**:
    - Examples: Furosemide, hydrochlorothiazide.
    - Purpose: Increase urine output to dilute banned substances or achieve rapid weight loss.
    - Risks: Dehydration, kidney damage, and electrolyte imbalance.

- **Cannabinoids and Narcotics (in competition)**:
    - Examples: Cannabis, morphine.
    - Purpose: Recreational use or pain relief.
    - Risks: Impaired coordination, dependency, and mental health issues.

- **New and Experimental Substances**:
    - Designer drugs or substances not yet approved for medical use but exploited for performance enhancement.

&& 3. Prohibited Methods &&
- **Manipulation of Blood and Blood Components**:
    - Examples: Blood transfusions, use of synthetic oxygen carriers.
    - Purpose: Boost oxygen delivery to muscles, improving endurance.
    - Risks: Blood clotting, stroke, and infections.

- **Chemical and Physical Manipulation**:
    - Examples: Tampering with samples, catheterization.
    - Purpose: Interfere with testing to avoid detection of banned substances.
    - Risks: Sanctions and reputational damage.

- **Gene and Cell Doping**:
    - Examples: Gene editing tools like CRISPR to alter genetic material for enhanced performance.
    - Purpose: Modify traits such as muscle mass or oxygen efficiency.
    - Risks: Unpredictable health consequences and ethical violations.

&& 4. Substances Prohibited in Specific Sports &&
Substances like beta-blockers are prohibited in sports where precision and steady hands are critical (e.g., archery, shooting).

&& 5. Exceptions and Therapeutic Use Exemptions (TUEs) &&
Athletes with medical conditions requiring prohibited substances or methods (e.g., insulin for diabetes) must apply for a TUE. TUEs ensure that athletes can receive necessary medical treatment without gaining a performance advantage.

&& 6. Education and Awareness &&
Importance of Checking Medications: Athletes must verify medications and supplements for banned substances using resources like WADA’s Global DRO (Drug Reference Online). Anti-Doping Seminars: NADA and other agencies provide workshops to educate athletes about the Prohibited List and how to avoid violations.

**Conclusion**: Understanding prohibited substances and methods is critical for maintaining integrity and fairness in sports. Athletes and support staff must stay informed about updates to the Prohibited List and seek guidance to compete clean while safeguarding their health and careers.

&& Challenge: Two Truths and a Lie &&
Can you identify the lie among these statements?

**Module 2: Legal Framework in Anti-Doping**

&& 1. Overview of Anti-Doping Legal Framework &&
The foundation of anti-doping laws is the World Anti-Doping Code (Code), developed by the World Anti-Doping Agency (WADA). The Code harmonizes regulations, sanctions, and procedures worldwide, ensuring consistent implementation across all sports and nations.
- Purpose of the Code:
    - Protect the fundamental right of athletes to compete in doping-free sports.
    - Promote health, fairness, and equality.
    - Coordinate anti-doping efforts among various organizations.

&& 2. Key Components of the Legal Framework &&
- **World Anti-Doping Code (WADA Code)**:
    - Outlines the core principles, including the Prohibited List, testing protocols, sanctions, and appeal mechanisms.
    - All signatories, including sports organizations and national anti-doping agencies (e.g., NADA), must comply.

- **Prohibited List**:
    - Updated annually, it specifies substances and methods banned in and out of competition.
    - Violations include possession, trafficking, and use of prohibited substances, among others.

- **Anti-Doping Rule Violations (ADRVs)**:
    - Presence of a banned substance in an athlete’s sample.
    - Use or attempted use of a prohibited substance or method.
    - Refusal to submit to testing.
    - Tampering with doping control processes.

&& 3. Roles and Responsibilities &&
- **World Anti-Doping Agency (WADA)**: Oversees global anti-doping efforts, manages the Prohibited List, and enforces the Code.
- **National Anti-Doping Agencies (e.g., NADA)**: Implement the Code at a national level, conduct testing, manage TUEs, and provide anti-doping education.
- **International Federations (IFs)**: Ensure adherence to anti-doping regulations within their respective sports.
- **Court of Arbitration for Sport (CAS)**: Resolves disputes, including appeals against sanctions imposed for doping violations.

&& 4. Testing and Results Management &&
- **Testing Process**:
    - Athletes are subject to in-competition and out-of-competition testing.
    - Testing is conducted under strict protocols to maintain sample integrity.

- **Results Management**:
    - If an Adverse Analytical Finding (AAF) is identified, the athlete is notified and given the opportunity to explain.
    - Cases are reviewed, and sanctions are determined based on the severity and circumstances of the violation.

&& 5. Sanctions for Violations &&
- **Sanction Types**:
    - Suspensions: Bans ranging from months to a lifetime, depending on the severity of the violation.
    - Disqualification of Results: Removal of titles, medals, and records.
    - Fines: Monetary penalties in some cases.

- **Factors Influencing Sanctions**:
    - Intent and level of fault.
    - Nature of the substance or method.
    - Cooperation with anti-doping authorities.

&& 6. Athlete Rights and Responsibilities &&
- **Rights**:
    - Right to a fair hearing and legal representation.
    - Right to appeal decisions to CAS or national sports tribunals.
    - Right to privacy and dignity during testing.

- **Responsibilities**:
    - Ensure compliance with anti-doping rules.
    - Regularly check medications and supplements.
    - Report for testing and cooperate with anti-doping authorities.

&& 7. Therapeutic Use Exemptions (TUEs) &&
Athletes with medical conditions requiring prohibited substances or methods can apply for a TUE.
- **Criteria for Approval**:
    - The treatment must be medically necessary.
    - No reasonable therapeutic alternative exists.
    - The treatment should not provide a performance advantage.

&& 8. Education and Awareness &&
Education is a critical aspect of the legal framework. Programs ensure athletes and support personnel understand their obligations and the consequences of violations. Examples: WADA’s Anti-Doping eLearning Platform (ADeL) and NADA workshops.

**Conclusion**: The legal framework in anti-doping is essential for ensuring fair play, safeguarding athlete health, and preserving the integrity of sports. By adhering to these regulations, athletes and organizations can contribute to a doping-free sports culture while protecting their rights and careers.

&& Tongue-Twister Challenge &&
Click on a tongue twister to try it!

**Module 3: Athlete Responsibilities**

Athletes are expected to adhere to strict guidelines to ensure fair play and maintain the integrity of sports. Here are the key responsibilities:

&& 1. Adhere to the WADA Code and NADA Rules &&
Athletes must understand and comply with the anti-doping rules established by WADA and implemented nationally by NADA.

&& 2. Be Aware of the Prohibited List &&
Athletes must stay updated with WADA’s annual Prohibited List to avoid using banned substances or methods.

&& 3. Strict Liability Principle &&
Athletes are responsible for any prohibited substance found in their body, regardless of intent or source.

&& 4. Attend Anti-Doping Education Programs &&
Participation in WADA or NADA-organized workshops, e-learning modules, and seminars is crucial for understanding anti-doping regulations.

&& 5. Ensure Medication Compliance &&
Before using any medication or supplement, athletes must verify its status against the Prohibited List using tools like WADA’s Global DRO or consulting NADA.

&& 6. Apply for Therapeutic Use Exemptions (TUEs) &&
If a prohibited substance is medically necessary, athletes must obtain a TUE in advance by following NADA’s or their sport federation’s application process.

&& 7. Submit to Doping Control Testing &&
Athletes must comply with in-competition and out-of-competition testing requests and follow proper sample collection procedures.

&& 8. Provide Accurate Whereabouts Information &&
Athletes in WADA’s Registered Testing Pool (RTP) or NADA’s national testing pool must submit detailed whereabouts information through platforms like ADAMS (Anti-Doping Administration & Management System).

&& 9. Avoid Use of Unapproved Supplements &&
Athletes are advised to minimize supplement use and ensure that any supplements consumed are certified free of banned substances.

&& 10. Refrain from Tampering with Doping Controls &&
Tampering with testing processes or sample collection is a serious violation under anti-doping rules.

&& 11. Report Suspicious Activities &&
Athletes are encouraged to use WADA’s Speak Up! platform or NADA’s whistleblower systems to report doping activities or suspicious behavior.

&& 12. Avoid Associations with Disqualified Personnel &&
Athletes must not work with coaches, doctors, or other professionals who are serving doping-related bans.

&& 13. Maintain Clean Sport Values &&
Promote fair play, respect for opponents, and the health of fellow athletes by competing clean and supporting anti-doping efforts.

&& 14. Cooperate in Investigations &&
Athletes must cooperate fully with WADA, NADA, and other authorities in doping-related investigations, including providing information or testimony.

&& 15. Understand the Consequences of Violations &&
Athletes must be aware of potential sanctions, including suspensions, disqualification of results, and financial penalties, for anti-doping rule violations (ADRVs).

**Conclusion**: Athletes have a personal and professional obligation to uphold anti-doping regulations. By fulfilling these responsibilities, they contribute to a fair and ethical sporting environment while protecting their careers and reputations.
'''
  },
  {
    "url": "https://dope-2024.github.io/sih/static/pictures/Course5.png",
    "level": "Advanced",
    "description": "Comprehensive Education and Athlete Support",
    "video": {
      "Tamil": "https://youtu.be/VZHK_HKt17s",
      "Telugu": "https://youtu.be/kVcAoTog360",
      "Malayalam": "https://youtu.be/TdNSHHhMgbE",
      "Hindi": "https://youtu.be/zsGQISH2zts",
      "English": "https://youtu.be/rhUkPKIm-24",
      "Kannada": "https://youtu.be/u_6vQHuHcxI",
    },
    'data': '''

**Module 1: Education for Athletes and Coaches**

An athlete with a syringe and caution tape, symbolizing the risks of doping in sports.

Education is the cornerstone of clean sport. Both athletes and coaches play pivotal roles in maintaining the integrity of competition. This module provides essential information to help athletes and coaches understand anti-doping regulations, recognize their responsibilities, and foster a culture of ethical sportsmanship.

1. Why Education on Anti-Doping is Crucial
    1.1 Protecting Integrity and Fair Play
        Doping undermines fair competition, damages reputations, and erodes public trust in sports

    1.2 Avoiding Inadvertent Doping Violations
        Many doping violations are unintentional, often resulting from:
            - Consumption of contaminated supplements or medications.
            - Ignorance of prohibited substances.
            
    1.3 Ensuring Long-Term Health
        Doping can cause severe health risks, including hormonal imbalances, organ damage, and psychological issues. Education helps athletes make informed choices to safeguard their well-being.

2. Core Principles of Anti-Doping
    2.1 The World Anti-Doping Code (WADA)
        Athletes and coaches should familiarize themselves with the World Anti-Doping Agency (WADA) rules, which emphasize:
        - Strict Liability: Athletes are responsible for any banned substance found in their body, regardless of intent.
        - Prohibited List: A regularly updated list of banned substances and methods.
        - Psychological: Doping can lead to psychological issues such as addiction, depression, and anxiety.

    2.2 The Doping Control Process
        Key steps include:
            - Sample Collection: Understanding the procedures for urine and blood testing.
            - Documentation: Accurate reporting of medications and supplements during tests.
            - Therapeutic Use Exemptions (TUEs): Applying for exemptions to use necessary medications legally.

3. Educational Tools for Athletes and Coaches
    Online Resources and E-Learning Platforms
        - WADA e-Learning (ADEL): Provides tailored courses for athletes, coaches, and medical professionals.
        - Global Drug Reference Online (Global DRO): A tool to check the status of medications and supplements.
      
    Workshops and Seminars
        - Host regular sessions focusing on anti-doping policies, ethical decision-making, and case studies.
        - Scenario-Based Learning: Interactive exercises where participants identify potential doping risks and strategize preventive measures.

4. Roles and Responsibilities
    4.1 Athletes’ Responsibilities
        - Knowledge: Stay informed about prohibited substances.
        - Transparency: Maintain accurate records of supplement and medication use.
        - Accountability: Always verify ingredients before consumption.

5. Anti-Doping Advocacy: Fostering a Culture of Integrity
    5.1 Building a Team Ethos
        - Encourage open discussions about the importance of ethical choices in sports
        - Reward and celebrate clean-sport champions.
  
        - Consumer Trust: Loss of consumer trust, decreased sales, and negative brand image.
        - Regulatory Response: Product recall, investigations, and potential bans on the sale of the product.
        - Crisis Management: Immediate product recall, transparent communication with consumers, cooperation with regulatory agencies, and a public relations campaign to restore trust.

**Anti-Doping Riddle Game**

**Riddle 1:**
I make your body grow faster and strong,  
But using me in sports will only go wrong.  
My side effects could last for life,  
I bring more trouble, more pain, and strife.  
What am I?

**Riddle 2:**
I help you run faster, jump higher, and play,  
But using me can cause health risks that stay.  
I might seem like a quick fix for the win,  
But in the end, you’ll regret where I’ve been.  
What am I?

**Riddle 3:**
I make you feel light, like you’ve lost some weight,  
But using me the wrong way will seal your fate.  
I can hide drugs you’ve taken in the past,  
But soon enough, you’ll be caught at last.  
What am I?

**Riddle 4:**
I help you recover, but at a huge cost,  
I improve performance, but I can make you lost.  
I’m banned in most games, a serious crime,  
What am I that causes trouble every time?  

**Module 2: Nutrition and Safe Supplements**

Nutrition

Athletic success is built on a foundation of hard work, dedication, and a well-planned nutrition strategy. Proper nutrition fuels the body, supports recovery, and enhances performance. However, the misuse or inadvertent consumption of unsafe supplements can lead to doping violations, jeopardizing an athlete's career. This module aims to educate on the principles of balanced nutrition and the safe use of supplements while identifying potential risks of contamination.

1. The Importance of Balanced Nutrition
    A well-balanced diet provides the energy and nutrients required for peak performance and recovery.
    
    1.1 Macronutrients
        - Carbohydrates: Main energy source for high-intensity and endurance activities. Sources: Whole grains, fruits, vegetables, and legumes.
        - Proteins: Crucial for muscle repair and growth post-exercise. Sources: Lean meats, eggs, dairy, legumes, tofu, and nuts.
        - Fats: Provide sustained energy, particularly for low- to moderate-intensity activities. Sources: Nuts, seeds, avocados, and healthy oils (olive, flaxseed).

    1.2 Micronutrients
        Essential vitamins and minerals maintain bodily functions, prevent deficiencies, and support recovery.
        - Key examples: Calcium and Vitamin D: Bone health.
        - Iron: Prevents fatigue by supporting oxygen transport in the blood.
        - Magnesium and Potassium: Muscle contraction and hydration balance.

    1.3 Hydration
        Maintaining hydration is vital for preventing fatigue, regulating body temperature, and optimizing focus. 
        - Tips: Drink water before, during, and after physical activity. Use electrolyte-enhanced drinks for prolonged or intense exercise.

2. Safe Use of Supplements
    Supplements are not a substitute for a healthy diet but may be necessary for certain athletes who cannot meet their nutritional needs through food alone. However, unregulated supplements pose risks of contamination with banned substances.

    2.1 Common Scenarios Requiring Supplements
        - Restricted dietary intake (e.g., vegan athletes needing B12 or iron).
        - Intensive training requiring additional protein or electrolytes.
        - Specific health concerns, such as joint support with omega-3s.

    Safe Supplement Practices
        To avoid unintentional doping violations:
        - Verify Certifications: Choose products certified by organizations like NSFCertified for Sport®, Informed-Sport.
        - Check the Labels: Avoid supplements with vague ingredients like "proprietary blends."

    High-Risk Supplements
        - Weight-loss products.
        - Muscle-building or pre-workout powders.
        - Unverified herbal supplements.

3. Risks of Contamination and Doping
    3.1 How Contamination Happens
        - Poor manufacturing standards: Cross-contamination in factories.
        - Mislabeling: Some supplements don’t fully disclose their ingredients.
        - Online and unverified sources: High likelihood of banned substances in cheap or imported products.

    3.2 Tips to Avoid Contamination
        - Purchase supplements only from trusted sources and brands.
        - Maintain a detailed log of all supplements used, including brand names and dosages.
        - Beware of claims like "fast results" or "natural anabolic boosters."

4. The Role of Education and Responsibility
    Athletes are solely responsible for what they consume (“Strict Liability” principle under WADA rules). This emphasizes the need for proactive education on doping risks and safe practices.
    
    Action Plan:
        - Prioritize natural nutrition from whole foods.
        - Educate yourself and team members on anti-doping rules.
        - Use resources like the Global DRO (Drug Reference Online) to check the status of substances.

**Conclusion**
Balanced nutrition and safe supplementation are key to ethical and high-performance sports. By staying informed and making responsible choices, athletes can maintain their competitive edge without compromising integrity or health.

**Module 3: Psychological and Career Support**

Athletes navigate an intensely competitive environment, where the drive for success often coexists with pressures to enhance performance. These pressures can manifest as psychological challenges and ethical dilemmas, particularly regarding anti-doping compliance. This module addresses the psychological hurdles athletes face, offers strategies for mental well-being, and outlines career support mechanisms to help athletes maintain integrity and plan for a fulfilling future.

1. Psychological Challenges Associated with Anti-Doping
    1.1 Stress from Anti-Doping Compliance
        - Constant Monitoring: Frequent drug tests, surprise checks, and meticulous documentation create ongoing stress.
        - Fear of Accidental Violations: Concerns over unknowingly consuming contaminated supplements or prescribed medications.

    1.2 Performance Anxiety and Pressure
        - External Expectations: Pressure from coaches, sponsors, or even family to achieve results.
        - Internal Doubts: Fears of underperformance without artificial enhancements.

    1.3 Social and Peer Pressure
        - Team Dynamics: Pressure to conform to team norms, even if unethical.
        - Comparisons: Constantly measuring oneself against competitors who may be using illicit methods.

    1.4 Emotional Fallout from Accusations
        - Athletes accused of doping—rightly or wrongly—often face stigma, guilt, and reputational damage.
        - The isolation and public scrutiny can lead to depression, anxiety, and withdrawal.

2. Coping Mechanisms for Mental Well-being
    To excel in sports and life, athletes need tools to build emotional resilience and handle stress effectively.
    
    2.1 Mindfulness and Stress Management Techniques
        - Meditation and Relaxation Practices: Help athletes stay calm and focused.
        - Visualization: Positive mental imagery of success and ethical choices can reinforce confidence.
        - Breathing Exercises: Quick techniques for stress relief during high-pressure situations.

    2.2 Professional Mental Health Support
        - Sports Psychologists: Help athletes address performance anxieties and ethical dilemmas.
        - Counselors or Therapists: Provide a safe space for athletes to process emotions and stress.

    2.3 Building a Support System
        - Team and Family Involvement: Encouragement and understanding from loved ones and teammates.
        - Peer Networks: Fellow athletes who champion clean sport can act as positive role models.

3. Anti-Doping Education for Psychological Strength
    Proactive education builds confidence and minimizes stress related to anti-doping compliance.
    
    3.1 Understanding Anti-Doping Rules
        - Athlete Responsibility: Awareness of the "Strict Liability" rule, which holds athletes accountable for substances in their bodies.
        - Therapeutic Use Exemptions (TUEs): Navigating the process to use necessary medications legally.

    3.2 Scenario-Based Training
        - Real-life examples help athletes understand the importance of vigilance.
        - Training in ethical decision-making builds resilience against doping pressures.

4. Career Support for Athletes in Anti-Doping
    An athlete’s career is finite, and preparation for transitions—whether due to injury, retirement, or personal choice—is essential.
    
    4.1 Career Planning Within Sports
        - Building Credibility: Maintaining a clean record enhances reputation, leading to opportunities as coaches, mentors, or sports ambassadors.
        - Networking: Partnering with clean-sport advocacy groups and organizations can open doors for roles in administration or education.

    4.2 Developing Skills Beyond Sports
        - Education and Certifications: Encourage athletes to pursue academic qualifications or vocational training.
        - Entrepreneurship: Skills gained from sports—discipline, teamwork, and resilience—can be translated into successful business ventures.

    4.3 Handling Career Setbacks
        - Managing Reputational Damage: Athletes wrongly accused of doping can seek legal and PR assistance to rebuild their careers.
        - Career Counseling: Providing specialized services to explore new paths and manage transitions.

5. Anti-Doping Advocacy and Leadership Roles
    Athletes have the power to influence their peers and the next generation by promoting the values of clean sport.
    
    5.1 Becoming Role Models
        - Sharing personal stories of integrity and resilience inspires others to resist doping temptations.
        - Engaging in clean-sport campaigns amplifies the message of ethical competition.

    5.2 Community Outreach
        - Organizing educational events in schools, clubs, and local sports communities.
        - Partnering with anti-doping organizations to mentor young athletes.

    5.3 Mentorship Programs
        - Senior athletes mentoring juniors can create a ripple effect of positive values.
        - Encouraging ethical behavior through storytelling and sharing real-world examples.

6. Long-Term Impact of Psychological and Career Support
    - Compete with confidence and integrity.
    - Transition smoothly to life after competitive sports.
    - Act as ambassadors for clean sport, influencing a wider audience.

**Conclusion**
The challenges of anti-doping extend beyond physical performance and compliance. By addressing psychological well-being and career aspirations, we create a holistic support system for athletes. Empowered and informed, they can focus on ethical, sustainable success both on and off the field.

For Trusted Support:
    - Tele Mental Health Initiative
    - Tele MANAS (Tele Mental Health Assistance and Networking Across States) was introduced as a toll-free helpline (14416) available nationwide, offering a wide range of mental health services.
'''
  },
  {
    "url": "https://dope-2024.github.io/sih/static/pictures/Course2.png",
    "level": "Beginner",
    "description": "Understanding Doping and Its Consequences",
    "video": {
      "Tamil": "https://youtu.be/h7kjNncOdwg",
      "Telugu": "https://youtu.be/FhgC4yiSQNw",
      "Malayalam": "https://youtu.be/MndhHXun4xI",
      "Hindi": "https://youtu.be/4LcMZbhKIGc",
      "English": "https://youtu.be/WzUj4JYti6Q",
      "Kannada": "https://youtu.be/Nm3dGZPtCqk",
    },
    'data': '''

**Module 1: Types of Doping Substances**

Categories of Doping Substances:
Doping substances are categorized based on their effects and usage. The major types include:

&& Types of Doping Substances &&
- **Stimulants**: Enhance alertness and focus.
- **Anabolic Steroids**: Promote muscle growth and strength.
- **Peptide Hormones and Growth Factors**: Boost recovery and endurance.
- **Beta-2 Agonists**: Increase oxygen delivery to muscles.
- **Narcotics and Painkillers**: Suppress pain, allowing athletes to push through injuries.
- **Diuretics and Masking Agents**: Help hide the use of other prohibited substances.

&& Major Categories of Doping Substances &&

1. **Stimulants**:
   Examples of Stimulants
   Stimulants, such as amphetamines and caffeine in high doses, are used to improve focus, energy, and reaction times. While they can momentarily enhance performance, they may cause severe side effects like heart palpitations, nervousness, or even heart failure.
   
   Examples:
   - Amphetamine
   - Cocaine
   - Methamphetamine
   - Ephedrine
   - Methylphenidate

2. **Anabolic Steroids**:
   Anabolic Steroids
   These synthetic drugs mimic testosterone to increase muscle mass and strength. While they may seem beneficial, anabolic steroids come with dire consequences such as liver damage, hormonal imbalances, and aggression. They are one of the most commonly misused substances in sports.

   Examples:
   - Testosterone (when taken exogenously)
   - Nandrolone
   - Stanozolol
   - Boldenone
   - Oxandrolone

3. **Peptide Hormones (e.g., Erythropoietin - EPO)**:
   Peptide Hormones
   EPO is used to boost the production of red blood cells, enhancing oxygen delivery and improving stamina. It is particularly popular in endurance sports like cycling. However, its misuse can lead to thickened blood, increasing the risk of strokes and heart attacks.

   Examples:
   - Erythropoietin (EPO)
   - Human Growth Hormone (hGH)
   - Insulin-like Growth Factor-1 (IGF-1)
   - Corticotropins (ACTH)
   - Thyroid-stimulating Hormone (TSH)

4. **Beta-2 Agonists**:
   These substances, often used to treat asthma, open up the airways and enhance breathing efficiency. Misuse can improve oxygen delivery, but it can also lead to heart complications and muscle cramps.

   Examples:
   - Clenbuterol
   - Salmeterol (above specified limits)
   - Formoterol (above specified limits)
   - Terbutaline
   - Vilanterol

**Module 2: Health Risks of Doping**

&& Drug Type Examples Effects Associated Sports &&

- **Stimulant**: Amphetamine, Caffeine
   - Effects: Increase in heart rate, blood pressure, alertness, and mask fatigue
   - Associated Sports: Cycling, Running

- **Depressants / Tranquilizer**: Beta Blockers, Benzodiazepine
   - Effects: Reduce anxiety, heart rate, and blood pressure. Improve concentration and control.
   - Associated Sports: Snooker, Archery, Motor Racing

- **Narcotic Analgesics (Painkillers)**: Codeine, Morphine, Heroin
   - Effects: Drowsiness and deadened pain
   - Associated Sports: Football, Hockey

- **Anabolic Agents**: Testosterone, Nandrolone
   - Effects: Increase strength, power, and aggression
   - Associated Sports: Boxing, Weightlifting, Athletics

- **Diuretics**: Hydrochlorothiazide, Acetazolamide
   - Effects: Helps reduce body weight
   - Associated Sports: Horse Racing, Judo, Wrestling

&& Case Study: The Health Risks of Doping - The Story of a Promising Athlete &&

**Background**:
Mark (fictional name), a 22-year-old aspiring sprinter, was on track to qualify for international championships. Under pressure to perform, he turned to anabolic steroids, believing they would enhance his strength and speed. With limited knowledge about doping's health risks and no guidance on anti-doping education, Mark began self-administering the substance.

**Short-Term Effects**:
Within weeks, Mark experienced significant muscle growth and improved sprint times. However, he also noticed alarming side effects:
- **Physical Issues**: Severe acne and rapid weight gain.
- **Emotional Instability**: Frequent mood swings and irritability, affecting his relationships with teammates.
- **Cardiovascular Strain**: Episodes of elevated blood pressure and palpitations.

Despite these signs, Mark continued using steroids, attributing the side effects to stress and overtraining.

**The Downward Spiral**:
After six months, Mark started facing serious health complications:
- **Hormonal Imbalances**: Mark developed gynecomastia (enlarged breast tissue in males) due to hormonal disruption caused by steroid use.
- **Liver Damage**: Routine blood tests revealed abnormal liver enzyme levels, indicating early signs of liver toxicity.
- **Mental Health Decline**: Mark began experiencing anxiety and depression, along with withdrawal symptoms when attempting to reduce steroid use.

At this point, Mark’s performance also plateaued, and he found himself unable to compete at his previous levels.

**Discovery and Consequences**:
During a routine anti-doping test at a regional competition, Mark tested positive for anabolic steroids. The consequences were severe:
- **Immediate Ban**: A 4-year suspension from all competitive events.
- **Reputation Damage**: Loss of sponsorships and public criticism tarnished his athletic career.
- **Long-Term Health Risks**: Mark was diagnosed with hypertension and early-stage kidney damage, likely stemming from prolonged steroid use.

**Recovery and Reflection**:
Following his suspension, Mark enrolled in a rehabilitation program and underwent therapy to address his physical and psychological health. He also participated in anti-doping education workshops, becoming an advocate for clean sport.

In interviews, Mark emphasized:
- The importance of anti-doping education to avoid such mistakes.
- The long-term health risks of doping, far outweighing any short-term gains.
- The value of clean competition and ethical practices in preserving the true spirit of sports.

&& Lessons Learned &&
Mark’s story highlights the devastating health risks of doping, including:
- **Physical Health**: Hormonal imbalances, organ damage, and cardiovascular risks.
- **Mental Health**: Addiction, depression, and emotional instability.
- **Career Impact**: Disqualification, bans, and loss of reputation.

This case underscores the need for robust anti-doping education, strict enforcement of regulations, and accessible resources for athletes to choose safe and ethical paths to success.

**Module 3: Ethical and Social Impact**

&& Ethical and Social Impact of Doping &&
Doping transcends being a mere rule violation and delves into the realm of ethics and societal values. It disrupts the core principles of sportsmanship, impacting individuals, communities, and the broader sports ecosystem. This module explores the multi-faceted consequences of doping in sports and its ripple effects on society.

&& Ethical Violations &&
- **Unfair Advantage**: At its core, doping represents an ethical breach by granting athletes an artificial edge over their competitors. Sports are grounded in the principles of fair competition, where success should stem from natural talent, effort, and dedication. Doping disrupts this balance, casting doubts on the legitimacy of victories and records.

- **Dishonesty and Integrity Issues**: The use of prohibited substances is fundamentally dishonest. Athletes who dope not only betray their competitors but also deceive fans, sponsors, and the organizations that support them. Their actions erode the integrity of sports and tarnish their legacies.

- **Contradiction to Sportsmanship Values**: Sportsmanship emphasizes respect, fairness, and ethical behavior. Doping contradicts these ideals, prioritizing personal gain over the spirit of competition. It also undermines the respect athletes should have for their peers and the game itself.

&& Case Study Example: &&
Consider high-profile doping scandals like Lance Armstrong's in cycling. His doping not only discredited his individual achievements but also cast a shadow over the sport for years, affecting countless clean athletes and tarnishing its reputation globally.

&& Impact on Sports Integrity &&

- **Loss of Public Trust**: Doping scandals create a sense of disillusionment among fans. When athletes are exposed for using banned substances, spectators begin to question whether victories are earned or manipulated. This skepticism can reduce audience engagement and loyalty, harming the sport's appeal.

- **Damage to Organizational Reputation**: Sports organizations, leagues, and event organizers suffer when doping incidents emerge. Repeated scandals can tarnish their credibility, leading to decreased sponsorships, reduced viewership, and challenges in attracting new talent.

- **Challenges in Recognizing Talent**: Athletes who compete fairly may lose recognition and opportunities due to the deceptive practices of their competitors. Clean athletes are often overshadowed, leading to feelings of injustice and discouragement within the sporting community.

- **Financial Consequences**: Sponsorship deals, which are vital for athletes and organizations, may be jeopardized by doping scandals. Sponsors are often hesitant to associate their brand with tainted reputations, leading to a decline in financial support for the sport.

&& Case Study: The Russian Doping Scandal at the Sochi Winter Olympics &&

The Russian doping scandal, which came to light after the 2014 Sochi Winter Olympics, is one of the most significant and far-reaching doping cases in sports history. It revealed a state-sponsored doping program designed to enhance Russia's medal count on the global stage. This case not only exposed systemic corruption in sports but also raised concerns about the integrity of international competitions.

**Background**:
The Sochi Winter Olympics was a high-profile event for Russia, meant to showcase the nation's strength and sporting prowess. With an investment of over 50 billion, the event symbolized national pride and global dominance. However, behind the scenes, a massive doping program was orchestrated by Russian officials and scientists to ensure the success of its athletes.

**The Doping Mechanism**:
- **State Involvement**: The Russian Ministry of Sport, in collaboration with the Russian Anti-Doping Agency (RUSADA) and the Federal Security Service (FSB), executed a systematic doping plan. Athletes were provided with performance-enhancing drugs like anabolic steroids and were instructed on how to use them to avoid detection.

- **Sample Tampering**: During the Sochi Olympics, the Russian anti-doping laboratory used a secret method to swap dirty urine samples with clean ones. This was done through a hole in the wall, where FSB agents discreetly replaced the contaminated samples.

- **Cocktail of Drugs**: Russian scientists developed a "cocktail" of anabolic steroids mixed with alcohol to increase absorption and reduce detection windows. Athletes consumed this mixture to enhance performance while minimizing the chances of testing positive.

**Whistleblower Revelations**:
The scandal came to light in 2016 when Dr. Grigory Rodchenkov, the former head of the Moscow Anti-Doping Laboratory, turned whistleblower. Rodchenkov provided detailed accounts of the doping program, including how he was instructed by Russian officials to falsify test results and cover up positive cases. He shared spreadsheets, emails, and physical evidence that implicated high-ranking officials, including those within the International Olympic Committee (IOC). Rodchenkov’s testimony was corroborated by independent investigations, including the McLaren Report, commissioned by the World Anti-Doping Agency (WADA).

**Consequences of the Scandal**:
- **Athlete Sanctions**: Over 1,000 Russian athletes across 30 sports were implicated in the doping program. Several athletes were stripped of their medals from the Sochi Games, and lifetime bans were issued to key individuals.

- **Nationwide Penalties**: The International Olympic Committee (IOC) banned Russia from the 2018 PyeongChang Winter Olympics. Russian athletes who were cleared of doping could only compete under the neutral flag as "Olympic Athletes from Russia." Further restrictions were imposed at subsequent events, including the 2020 Tokyo Olympics and 2022 Beijing Winter Olympics.

- **Global Backlash**: The scandal damaged Russia's credibility in international sports and led to widespread condemnation from the global sporting community. It also sparked diplomatic tensions, with Russia denying state involvement and accusing the West of politicizing sports.

- **Reforms and Oversight**: WADA introduced stricter anti-doping measures and increased scrutiny of national anti-doping organizations. The scandal also prompted reforms within the IOC to prevent similar incidents in the future.

&& Impact on Sports and Society &&

- **Sports Integrity**: The scandal highlighted the vulnerabilities in anti-doping systems and the potential for state interference. It raised questions about the fairness of past competitions and the credibility of results in events involving Russian athletes.

- **Athlete Disillusionment**: Clean athletes were deeply affected, with many feeling that their efforts were overshadowed by those who doped. The revelations undermined trust in sports as a fair and merit-based endeavor.

- **Public Trust**: Fans and sponsors became skeptical about the legitimacy of athletic performances, reducing engagement and financial investment in sports.

The Russian doping scandal serves as a cautionary tale about the dangers of prioritizing national prestige over ethical conduct in sports. It underscores the need for robust anti-doping measures, independent oversight, and a commitment to integrity at all levels of competition. While sanctions and reforms have been implemented, the legacy of the scandal remains a stark reminder of how systemic corruption can undermine the spirit of sportsmanship. By learning from this case, the global sporting community can work toward creating a fair and transparent environment where athletes compete on a level playing field, guided by the principles of honesty, dedication, and respect for the rules.

&& Broader Social Consequences &&

- **Negative Role Modeling**: Athletes hold a significant influence on young people, serving as role models for discipline and perseverance. When they resort to doping, it sends the wrong message, promoting unethical shortcuts over genuine hard work and dedication. This negative influence can shape a generation of aspiring athletes who may view doping as a norm.

- **Cultural and Societal Erosion**: Doping scandals don’t just affect the athletes involved—they have a ripple effect on societal values. They normalize dishonesty and undermine values of integrity and meritocracy in sports and beyond.

- **Impact on Grassroots Sports**: In developing athletes at grassroots levels, doping incidents can discourage participation. Parents and communities may lose faith in the fairness of sports, reducing support for young talents and grassroots programs.

- **Economic and Developmental Impact**: Doping scandals can have long-term economic consequences. Reduced sponsorships, viewership, and ticket sales affect funding for sports development programs, training facilities, and outreach initiatives. Honest athletes, coaches, and support staff may also face reduced opportunities due to a tarnished sporting ecosystem.

**Restoring Integrity**:
Addressing these issues requires a multi-pronged approach involving strict anti-doping measures, awareness campaigns, and comprehensive education programs. Creating a clean and fair sports culture will ensure that achievements reflect genuine effort and ability, fostering trust and admiration from society.
'''
  },
  {
    "url": "https://dope-2024.github.io/sih/static/pictures/Course4.png",
    "level": "Intermediate",
    "description": "Testing, Detection, and Athlete Rights",
    "video": {
      "Tamil": "https://youtu.be/akIN3fPAyQM",
      "Telugu": "https://youtu.be/Y2VhUVnHKvg",
      "Malayalam": "https://youtu.be/qt-iPOM_MrE",
      "Hindi": "https://youtu.be/kgnIwfEDdik",
      "English": "https://youtu.be/jPeVIR6v10Y",
      "Kannada": "https://youtu.be/Dby62hFpSZk",
    },
    "data": '''
**Module 1: The Testing Process**

The anti-doping testing process is a comprehensive and standardized procedure designed to ensure fairness, integrity, and accuracy in detecting prohibited substances or methods. Governed by the World Anti-Doping Code (WADA Code) and implemented by organizations like NADA, it aims to maintain a doping-free environment in sports.

**WADA Code Illustration**

&&1. Overview of the Testing Process&&

The testing process is divided into several key stages:

- Test Planning: Determining which athletes to test and when.
- Sample Collection: Gathering urine and/or blood samples under strict protocols.
- Laboratory Analysis: Testing the samples for prohibited substances or methods.
- Results Management: Interpreting results and initiating follow-up procedures if necessary.

&&2. Types of Testing&&

- In-Competition Testing: Conducted during or immediately after a competition, focusing on substances that provide a performance advantage.
- Out-of-Competition Testing: Conducted anytime and anywhere without prior notice to detect long-term effects of banned substances.
- Targeted Testing: Focused on specific athletes based on intelligence or performance patterns.

&&3. Sample Collection Process&&

- Notification: Athletes are notified by a Doping Control Officer (DCO) or Chaperone and briefed on their rights.
- Athlete Identification: Athletes must provide valid ID to confirm their identity.
- Sample Collection: Includes urine and/or blood samples collected under strict observation and protocols.
- Chain of Custody: Samples are securely sealed, labeled, and documented to ensure anonymity and traceability.

&&4. Laboratory Analysis&&

WADA-accredited labs analyze samples using advanced technologies like Mass Spectrometry and Isotope Ratio Mass Spectrometry (IRMS). Results are reported to the relevant authorities for further action.

&&5. Results Management&&

- Adverse Analytical Findings (AAF): If a prohibited substance is detected, the athlete is notified and given an opportunity to explain.
- Review and Hearing: The athlete can request a hearing to contest the findings. Sanctions are imposed if the violation is confirmed.
- Therapeutic Use Exemptions (TUEs): Athletes with a valid TUE are exempted from sanctions if the detected substance is part of their approved treatment.

&&6. Athlete Responsibilities in Testing&&

- Report promptly for sample collection when notified.
- Follow the DCO’s instructions during the testing process.
- Provide accurate whereabouts information for out-of-competition testing.
- Cooperate fully with anti-doping authorities.

&&7. Challenges in the Testing Process&&

- Evasion Tactics: Micro-dosing and use of masking agents can complicate detection.
- Designer Drugs: Constant development of new substances poses challenges for laboratories.
- Logistics: Conducting timely and accurate testing across diverse locations can be resource-intensive.

&&8. Enhancements in Testing&&

- Use of advanced technologies such as Dried Blood Spot (DBS) Testing for non-invasive sample collection.
- Integration of the Athlete Biological Passport (ABP) to monitor long-term changes in biological markers.
- AI-driven analytics for identifying doping trends and patterns.

**Conclusion**

The testing process is the cornerstone of anti-doping efforts, ensuring that athletes compete on a level playing field. By adhering to strict protocols and leveraging cutting-edge technologies, organizations like NADA and WADA aim to uphold the integrity of sports and protect athletes’ health and careers.

**Historical Insights: NADA in India**

- 2005: India establishes the National Anti-Doping Agency (NADA).
- 2009: NADA begins in-competition and out-of-competition testing.
- 2011: First Anti-Doping Awareness Workshops are conducted.
- 2020: Revised World Anti-Doping Code adopted in India.
- 2021: National Dope Testing Laboratory regains WADA accreditation.
'''
  }
];
