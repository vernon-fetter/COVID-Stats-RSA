import 'package:flutter/material.dart';

class CovidInformationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CovidInformationPageState();
  }
}

class CovidInformationPageState extends State<CovidInformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff788475),
          elevation: 0.1,
          title: Text('Covid-19 Information')),
      body: Container(
          child: ListView(
        children: [
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            title: Text(
              'What is a Coronavirus?',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            subtitle: Text(
              '''Coronaviruses are a large family of viruses which may cause illness in animals or humans.  In humans, several coronaviruses are known to cause respiratory infections ranging from the common cold to more severe diseases such as Middle East Respiratory Syndrome (MERS) and Severe Acute Respiratory Syndrome (SARS). The most recently discovered coronavirus causes coronavirus disease COVID-19.''',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xff5E5D5C),
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.justify,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            title: Text(
              'What is COVID-19?',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            subtitle: Text(
              '''COVID-19 is the infectious disease caused by the most recently discovered coronavirus. This new virus and disease were unknown before the outbreak began in Wuhan, China, in December 2019. COVID-19 is now a pandemic affecting many countries globally.''',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xff5E5D5C),
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.justify,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            title: Text(
              'What are the symptoms of COVID-19?',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            subtitle: Text(
              '''The most common symptoms of COVID-19 are fever, dry cough, and tiredness. Some patients may have aches and pains, nasal congestion, sore throat or diarrhea. These symptoms are usually mild and begin gradually. Some people become infected but only have very mild symptoms. Most people (about 80%) recover from the disease without needing hospital treatment. Around 1 out of every 5 people who gets COVID-19 becomes seriously ill and develops difficulty breathing. Older people, and those with underlying medical problems like high blood pressure, heart and lung problems, diabetes, or cancer , are at higher risk of developing serious illness. However anyone can catch COVID-19 and become seriously ill. Even people with very mild symptoms of COVID-19 can transmit the virus. People of all ages who experience fever, cough and difficulty breathing should seek medical attention.''',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xff5E5D5C),
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.justify,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            title: Text(
              'What should I do if I have COVID-19 symptoms and when should I seek medical care?',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            subtitle: Text(
              '''If you have minor symptoms, such as a slight cough or a mild fever, there is generally no need to seek medical care. Stay at home, self-isolate and monitor your symptoms. Follow national guidance on self-isolation.

However, if you live in an area with malaria or dengue fever it is important that you do not ignore symptoms of fever.  Seek medical help.  When you attend the health facility wear a mask if possible, keep at least 1 metre distance from other people and do not touch surfaces with your hands. If it is a child who is sick help the child stick to this advice.

Seek immediate medical care if you have difficulty breathing or pain/pressure in the chest. If possible, call your health care provider in advance, so he/she can direct you to the right health facility.''',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xff5E5D5C),
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.justify,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            title: Text(
              'How does COVID-19 spread?',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            subtitle: Text(
              '''People can catch COVID-19 from others who have the virus. The disease spreads primarily from person to person through small droplets from the nose or mouth, which are expelled when a person with COVID-19 coughs, sneezes, or speaks. These droplets are relatively heavy, do not travel far and quickly sink to the ground. People can catch COVID-19 if they breathe in these droplets from a person infected with the virus. This is why it is important to stay at least 1 metre (3 feet) away from others. These droplets can land on objects and surfaces around the person such as tables, doorknobs and handrails. People can become infected by touching these objects or surfaces, then touching their eyes, nose or mouth. This is why it is important to wash your hands regularly with soap and water or clean with alcohol-based hand rub.

WHO is assessing ongoing research on the ways that COVID-19 is spread and will continue to share updated findings.''',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xff5E5D5C),
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.justify,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            title: Text(
              'Can COVID-19 be caught from a person who has no symptoms?',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            subtitle: Text(
              '''COVID-19 is mainly spread through respiratory droplets expelled by someone who is coughing or has other symptoms such as fever or tiredness. Many people with COVID-19 experience only mild symptoms. This is particularly true in the early stages of the disease. It is possible to catch COVID-19 from someone who has just a mild cough and does not feel ill.

Some reports have indicated that people with no symptoms can transmit the virus. It is not yet known how often it happens. WHO is assessing ongoing research on the topic and will continue to share updated findings.''',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xff5E5D5C),
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.justify,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            title: Text(
              'How can we protect others and ourselves if we don'
              't know who is infected?',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            subtitle: Text(
              '''Practicing hand and respiratory hygiene is important at ALL times and is the best way to protect others and yourself.

When possible maintain at least a 1 metre (3 feet) distance between yourself and others. This is especially important if you are standing by someone who is coughing or sneezing. Since some infected persons may not yet be exhibiting symptoms or their symptoms may be mild, maintaining a physical distance with everyone is a good idea if you are in an area where COVID-19 is circulating.''',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xff5E5D5C),
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.justify,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            title: Text(
              'What shoud I do if I come in close contact with someone who has COVID-19?',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            subtitle: Text(
              '''If you have been in close contact with someone with COVID-19, you may be infected. Close contact means that you live with or have been in settings of less than 1 metre from those who have the disease. In these cases, it is best to stay at home. However, if you live in an area with malaria or dengue fever it is important that you do not ignore symptoms of fever. Seek medical help. When you attend the health facility wear a mask if possible, keep at least 1 metre distant from other people and do not touch surfaces with your hands. If it is a child who is sick help the child stick to this advice. 
              
If you do not live in an area with malaria or dengue fever please do the following:
- If you become ill, even with very mild symptoms you must self-isolate
- Even if you don’t think you have been exposed to COVID-19 but develop symptoms, then self-isolate and monitor yourself
- You are more likely to infect others in the early stages of the disease when you just have mild symptoms, therefore early self-isolation is very important.
- If you do not have symptoms, but have been exposed to an infected person, self-quarantine for 14 days.
- If you have definitely had COVID-19 (confirmed by a test) self-isolate for 14 days even after symptoms have disappeared as a precautionary measure – it is not yet known exactly how long people remain infectious after they have recovered. Follow national advice on self-isolation.''',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xff5E5D5C),
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.justify,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            title: Text(
              'What does it mean to self-isolate?',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            subtitle: Text(
              '''Self-isolation is an important measure taken by those who have COVID-19 symptoms to avoid infecting others in the community, including family members.

Self-isolation is when a person who is experiencing fever, cough or other COVID-19 symptoms stays at home and does not go to work, school or public places. This can be voluntarily or based on his/her health care provider’s recommendation. However, if you live in an area with malaria or dengue fever it is important that you do not ignore symptoms of fever. Seek medical help. When you attend the health facility wear a mask if possible, keep at least 1 metre distant from other people and do not touch surfaces with your hands. If it is a child who is sick help the child stick to this advice.

If you do not live in an area with malaria or dengue fever please do the following:

- If a person is in self-isolation, it is because he/she is ill but not severely ill (requiring medical attention) have a large, well-ventilated with hand-hygiene and toilet facilities
- If this is not possible, place beds at least 1 metre apart
- Keep at least 1 metre (3 feet) from others, even from your family members
- Monitor your symptoms daily
- Isolate for 14 days, even if you feel healthy
- If you develop difficulty breathing, contact your healthcare provider immediately – call them first if possible
- Stay positive and energized by keeping in touch with loved ones by phone or online, and by exercising yourself at home.''',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xff5E5D5C),
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.justify,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            title: Text(
              'What should I do if I have no symptoms, but think I have been exposed to COVID-19? What does it mean to self-quarantine?',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            subtitle: Text(
              '''To self-quarantine means to separate yourself from others because you have been exposed to someone with COVID-19 even though you, yourself, do not have symptoms.During self-quarantine you monitor yourself for symptoms.  The goal of the self-quarantine is to prevent transmission.  Since people who become ill with COVID-19 can infect people immediately self-quarantine can prevent some infections from happening.  .

In this case:

- Have a large, well-ventilated single room with hand hygiene and toilet facilities
- If this is not available place beds at least 1 metre apart.
- Keep at least 1-metre distance from others, even from your family members.
- Monitor your symptoms daily
- Self-quarantine for 14 days, even if you feel healthy
- If you develop difficulty breathing, contact your healthcare provider immediately – call them first if possible.
- Stay positive and energized by keeping in touch with loved ones by phone or online, and by exercising yourself at home.
- However, if you live in an area with malaria or dengue fever it is important that you do not ignore symptoms of fever.  Seek medical help.  When you attend the health facility wear a mask if possible, keep at least 1 metre distant from other people and do not touch surfaces with your hands. If it is a child who is sick help the child stick to this advice. ''',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xff5E5D5C),
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.justify,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            title: Text(
              'What is the difference between self-isolation, self-quarantine and distancing?',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            subtitle: Text(
              '''Quarantine means restricting activities or separating people who are not ill themselves but may have been exposed to COVID-19. The goal is to prevent spread of the disease at the time when people just develop symptoms.

Isolation means separating people who are ill with symptoms of COVID-19 and may be infectious to prevent the spread of the disease.

Physical distancing means being physically apart. WHO recommends keeping at least 1-metre (3 feet) distance from others. This is a general measure that everyone should take even if they are well with no known exposure to COVID-19.''',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xff5E5D5C),
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.justify,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            title: Text(
              'Can children or adolescents catch COVID-19?',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            subtitle: Text(
              '''Research indicates that children and adolescents are just as likely to become infected as any other age group and can spread the disease.

Evidence to date suggests that children and young adults are less likely to get severe disease, but severe cases can still happen in these age groups.

Children and adults should follow the same guidance on self-quarantine and self-isolation if there is a risk they have been exposed or are showing symptoms. It is particularly important that children avoid contact with older people and others who are at risk of more severe disease.''',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xff5E5D5C),
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.justify,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            title: Text(
              'What can I do to protect myself and prevent the spread of the disease?',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            subtitle: Text(
              '''Stay aware of the latest information on the COVID-19 outbreak, available on the WHO website and through your national and local public health authority. Most countries around the world have seen cases of COVID-19 and many are experiencing outbreaks. Authorities in China and some other countries have succeeded in slowing their outbreaks. However, the situation is unpredictable so check regularly for the latest news.

You can reduce your chances of being infected or spreading COVID-19 by taking some simple precautions:

Regularly and thoroughly clean your hands with an alcohol-based hand rub or wash them with soap and water. Why? Washing your hands with soap and water or using alcohol-based hand rub kills viruses that may be on your hands.
Maintain at least 1 metre (3 feet) distance between yourself and others. Why? When someone coughs, sneezes, or speaks they spray small liquid droplets from their nose or mouth which may contain virus. If you are too close, you can breathe in the droplets, including the COVID-19 virus if the person has the disease.
Avoid going to crowded places. Why? Where people come together in crowds, you are more likely to come into close contact with someone that has COIVD-19 and it is more difficult to maintain physical distance of 1 metre (3 feet).
Avoid touching eyes, nose and mouth. Why? Hands touch many surfaces and can pick up viruses. Once contaminated, hands can transfer the virus to your eyes, nose or mouth. From there, the virus can enter your body and infect you.
Make sure you, and the people around you, follow good respiratory hygiene. This means covering your mouth and nose with your bent elbow or tissue when you cough or sneeze. Then dispose of the used tissue immediately and wash your hands. Why? Droplets spread virus. By following good respiratory hygiene, you protect the people around you from viruses such as cold, flu and COVID-19.
Stay home and self-isolate even with minor symptoms such as cough, headache, mild fever, until you recover. Have someone bring you supplies. If you need to leave your house, wear a mask to avoid infecting others. Why? Avoiding contact with others will protect them from possible COVID-19 and other viruses.
If you have a fever, cough and difficulty breathing, seek medical attention, but call by telephone in advance if possible and follow the directions of your local health authority. Why? National and local authorities will have the most up to date information on the situation in your area. Calling in advance will allow your health care provider to quickly direct you to the right health facility. This will also protect you and help prevent spread of viruses and other infections.
Keep up to date on the latest information from trusted sources, such as WHO or your local and national health authorities. Why? Local and national authorities are best placed to advise on what people in your area should be doing to protect themselves.''',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xff5E5D5C),
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.justify,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            title: Text(
              'is there a vaccine, drug or treatment for COVID-19?',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            subtitle: Text(
              '''Not yet. To date, there is no vaccine and no specific antiviral medicines against COVID-19. However, .people, particularly those with serious illness, may need to be hospitalized so that they can receive life-saving treatment for complications.. Most patients recover thanks to such care. 

Possible vaccines and some specific drug treatments are currently under investigation. They are being tested through clinical trials. WHO is coordinating efforts to develop vaccines and medicines to prevent and treat COVID-19. 

The most effective ways to protect yourself and others against COVID-19 are to:

Clean your hands frequently and thoroughly
Avoid touching your eyes, mouth and nose
Cover your cough with the bend of elbow or tissue. If a tissue is used, discard it immediately and wash your hands.
Maintain a distance of at least 1 metre (3 feet) from others. ''',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xff5E5D5C),
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.justify,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            title: Text(
              'How long does it take after exposure to COVID-19 to develop symptoms?',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            subtitle: Text(
              '''The time between exposure to COVID-19 and the moment when symptoms start is commonly around five to six days but can range from 1 – 14 days.''',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xff5E5D5C),
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.justify,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            title: Text(
              'What is the connection between COVID-19 and animals?',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            subtitle: Text(
              '''COVID-19 is spread through human-to-human transmission.

We already know a lot about other viruses in the coronavirus family and most of these types of viruses have an origin in animals. The COVID-19 virus (also called SARS-CoV-2) is a new virus in humans. The possible animal source of COVID-19 has not yet been confirmed but research is ongoing.

WHO continues to monitor the latest research on this and other COVID-19 topics and will update, as new findings are available.''',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xff5E5D5C),
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.justify,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            title: Text(
              'Can I catch COVID-19 from my pet?',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            subtitle: Text(
              '''Several dogs and cats (domestic cats and a tiger) in contact with infected humans have tested positive for COVID-19. In addition, ferrets appear to be susceptible to the infection. In experimental conditions, both cats and ferrets were able to transmit infection to other animals of the same species, but there is no evidence that these animals can transmit the disease to human and play a role in spreading COVID-19. COVID-19 is mainly spread through droplets produced when an infected person coughs, sneezes, or speaks.

It is still recommended that people who are sick with COVID-19 and people who are at risk limit contact with companion and other animals. When handling and caring for animals, basic hygiene measures should always be implemented. This includes hand washing after handling animals, their food, or supplies, as well as avoiding kissing, licking or sharing food.

More recommendations are available on the OIE website : https://www.oie.int/en/scientific-expertise/specific-information-and-recommendations/questions-and-answers-on-2019novel-coronavirus/

WHO continues to monitor the latest research on this and other COVID-19 topics and will update as new findings are available''',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xff5E5D5C),
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.justify,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            title: Text(
              'How long does the virus survive on surfaces?',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            subtitle: Text(
              '''The most important thing to know about coronavirus on surfaces is that they can easily be cleaned with common household disinfectants that will kill the virus. Studies have shown that the COVID-19 virus can survive for up to 72 hours on plastic and stainless steel, less than 4 hours on copper and less than 24 hours on cardboard.

As, always clean your hands with an alcohol-based hand rub or wash them with soap and water. Avoid touching your eyes, mouth, or nose.''',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xff5E5D5C),
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.justify,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            title: Text(
              'How to grocery shop safely?',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            subtitle: Text(
              '''When grocery shopping, keep at least 1-metre distance from others and avoid touching your eyes, mouth and nose. If possible, sanitize the handles of shopping trolleys or baskets before shopping. Once home, wash your hands thoroughly and also after handling and storing your purchased products.

There is currently no confirmed case of COVID-19 transmitted through food or food packaging.''',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xff5E5D5C),
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.justify,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            title: Text(
              'How to wash fruit and vegetables?',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            subtitle: Text(
              '''Fruits and vegetables are important components of a healthy diet. Wash them the same way you should do under any circumstance: before handling them, wash your hands with soap and water. Then, wash fruits and vegetables thoroughly with clean water, especially if you eat them raw.''',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xff5E5D5C),
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.justify,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            title: Text(
              'Are antibiotics effective in preventing or treating COVID-19?',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            subtitle: Text(
              '''No. Antibiotics do not work against viruses; they only work on bacterial infections. COVID-19 is caused by a virus, so antibiotics do not work. Antibiotics should not be used as a means of prevention or treatment of COVID-19. In hospitals physicians will sometimes use antibiotics to prevent or treat secondary bacterial infections which can be a complication of COVID-19 in severely ill patients. They should only be used as directed by a physician to treat a bacterial infection.''',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xff5E5D5C),
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.justify,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            title: Text(
              'Can I catch COVID-19 from the faeces of someone with the disease?',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            subtitle: Text(
              '''While initial investigations suggest the virus may be present in faeces in some cases, to date, there have not been reports of faecal-oral transmission of COVID-19. Additionally, there is no evidence to date on the survival of the COVID-19 virus in water or sewage.

WHO is assessing ongoing research on the ways COVID-19 is spread and will continue to share new findings on this topic.''',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xff5E5D5C),
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.justify,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            title: Text(
              'Source:',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            subtitle: Text(
              '''World Health Organisation (WHO)
              https://www.who.int/news-room/q-a-detail/q-a-coronaviruses''',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xff5E5D5C),
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      )),
    );
  }
}
