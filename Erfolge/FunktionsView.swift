//
//  FunktionsView.swift
//  Erfolge
//
//  Created by Jürgen Zimmer on 14.03.24.
//

import SwiftUI

struct FunktionsView: View {
    @State private var hue = 0.758
    @State private var saturation = 0.736
    @State private var brightness = 0.712
    @State private var schrift = "title3"
    
    var body: some View {
        ScrollView {
            VStack {
                Text("**LOS GEHTS!** SO _funktioniert_ DAS ERFOLGSMACHER JOURNAL").padding()
                    .font(.title)
                    .foregroundColor(Color(hue: hue, saturation: saturation, brightness: brightness))
                    .multilineTextAlignment(.leading)
                Divider()
                Text("Damit es Dir so leicht wie möglich fällt und Du noch heute Abend damit beginnen kannst, die ersten Seiten des Erfolgsmacher Journals auszufüllen, erkläre ich Dir kurz, was auf Dich zukommt.").padding().font(.title3)
                Text("Wer sich die **richtigen Fragen** stellt, richtet seinen Fokus aus und ist somit nicht nur produktiver und energiegeladener, sondern auch erfolgreicher. Aus diesem Grund besteht das Erfolgsmacher Journal aus einer kleinen Ansammlung von richtigen Fragen, die Du Dir jeden Abend stellen wirst. Indem Du Dir diese Fragen stellst, beeinflusst Du Dein Denken, Dein Fühlen, Dein Handeln und damit auch Deine Ergebnisse - und veränderst somit Schritt für Schritt Dein Leben. Die folgenden sieben Fragen erwarten Dich in unserem Journal").padding().font(.title3)
                Text("1. WAS HAST DU HEUTE GELERNT?").padding()
                    .font(.title)
                    .foregroundColor(Color(hue: hue, saturation: saturation, brightness: brightness))
                    .multilineTextAlignment(.leading)
                Text("Stell Dir einmal vor, Du würdest jeden Tag etwas **dazulernen**. Jeden Tag würdest Du Dir neues Wissen aneignen und täglich würde Dein Gefäß sich weiter und weiter mit neuen Informationen füllen. Wo würdest Du dann in einem halben Jahr stehen? Über was würdest Du Bescheid wissen? Wie gut würdest Du Dich in bestimmten Gebieten auskennen? Und was würde das mit Deinem Selbstvertrauen machen?").padding().font(.title3)
                Text("Keine Angst, Du musst ab heute nicht stundenlang in der Bibliothek über irgendwelche Bücher brüten. Es geht bei dieser Frage viel eher um die **Intention**, etwas dazuzulernen. Es reicht schon, wenn Du zehn Minuten in einem guten Buch liest, Dir ein paar Vokabeln einer neuen Sprache aneignest oder ein Gespräch mit jemandem führst, der Dir in bestimmten Bereichen voraus ist.").padding().font(.title3)
                Text("Wichtig ist, dass Du Abends den Tag noch einmal Revue passieren lässt und Dir bewusst machst, was Du an diesem Tag gelernt hast. Denn wenn Du das tust, wirst Du sehr schnell merken, dass Du Dich mit Leichtigkeit weiterentwickelst und schon in wenigen Wochen **viel mehr Wissen** hast, als heute.").padding().font(.title3)
                Text("2. WORIN HABE ICH MICH HEUTE VERBESSERT?").padding()
                    .font(.title)
                    .foregroundColor(Color(hue: hue, saturation: saturation, brightness: brightness))
                    .multilineTextAlignment(.leading)
                Text("In meinem Buch 'GO! - Der Startschuss in Dein neues Leben' schreibe ich über den Begriff '**KUNEV**'. KUNEV ist ein Synonym für **K**onstante **U**nd **N**iemals **E**ndende **V**erbesserung. Wer KUNEV lebt, der befindet sich auf der Überholspur des Lebens und wer sich jeden Tag die Frage stelle, worin er sich an diesem Tag **verbessert** hat, wird schnell erkennen, dass er sich ständig weiterentwickelt.").padding().font(.title3)
                Text("Mein Vater hat mir damals immer gesage: _'Wer aufgehört hat besser zu werden, hat aufgehört gut zu sein'_ und er hat recht damit gehabt. Viele Menschen wollen es nicht wahrhaben, doch alles, was nicht wächst, stirbt ab. Diejenigen, die sich nicht weiterentwickeln, werden nach einiger Zeit feststellen, dass das Leben anhnen vorbei zieht. Träume, Ziele und Visionen werden nicht gelebt. Doch all jene, die ihr Handeln reflektieren, ihr Denken hinterfragen und mit liebevoller Hartnäckigkeit an sich arbeiten, werden zu sich selbst und damit zur wahren Quelle des Erfolgs finden. Ein glückliches Leben ist die logische Konsequenz.").padding().font(.title3)
                Text("3. WORÜBER HABE ICH MICH HEUTE GEFREUT?").padding()
                    .font(.title)
                    .foregroundColor(Color(hue: hue, saturation: saturation, brightness: brightness))
                    .multilineTextAlignment(.leading)
                Text("Dein Leben ist dazu da, um es zu **leben**. Ganz egal, wie viel in Deinem Lebe passiert, wie stressig der Alltag ist oder was für Herausforderungen Du gend zu meistern hast. Dein Leben ist viel zu großartig und zu wertvoll, um den Spaß und die Freude daran zu verlieren.").padding().font(.title3)
                Text("Frage Dich also jeden Abend, worüber Du Dich an diesem Tag gefreut hast. Falls Du bemerkst, dass Du Dich mit der Beantwortung dieser Frage schwer tust, ist das ein Signal dafür, dass Du Dich in Deinem Alltag öfter fragen solltest, wie Du Dir selbst eine Freude bereiten kannst. Denn **Du bist der wichtigste Mensch in Deinem Leben** und nur wenn Du glücklich bist, können es de Menschen in Deinem Umfeld ebenfalls sein.").padding().font(.title3)
                Text("4. ICH BIN HEUTE EIN GLÜCKSKIND, WEIL...").padding()
                    .font(.title)
                    .foregroundColor(Color(hue: hue, saturation: saturation, brightness: brightness))
                    .multilineTextAlignment(.leading)
                Text("Ein Glückskind zu sein bedeutet, dass Du Dir bewusst wirst, wie gesegner und gebenedeit Du bist. Jeder von uns könnte täglich mehrere hundert Gründe finden, warum er oder sie ein Glückskind ist. Doch die wenigsten tun es. Doch warum ist das so?").padding().font(.title3)
                Text("Die wenigsten Menschen finden die Magie in den kleinen Dingen im Leben. Die wenigsten erkennen voller Dankbarkeit und Demut all das Glück, das sie bereits in ihrem Leben haben und die wenigsten machen sich selbst bewust, wie reich an Glücksmomenten sie heute schon sind.?").padding().font(.title3)
                Text("Doch ab heute gehörst Du zu denen, die sich jederzeit ihres Glücks bewusst sind, denn ab jetzt arbeitest Du aktiv mit Deinem Erfolgsmacher Journal und kannst Deinen Fokus auf das Glückskind-Dasein ideal trainieren! Die Tatsache, dass Du Dich in Deiner Freizeit mit einem Erfolgsmacher Journal beschäftigen kannst, zeigt, dass Du bereits jetzt ein echtes Glückskind bist. Vielen anderen Menschen auf dieser Welt geht es weitaus schlechter als Dir, wahr oder wahr?").padding().font(.title3)
                Text("5. MEINE HEUTIGEN ERFOLGE:").padding()
                    .font(.title)
                    .foregroundColor(Color(hue: hue, saturation: saturation, brightness: brightness))
                    .multilineTextAlignment(.leading)
                Text("Jeder Mensch erzielt jeden Tag **zahlreiche Erfolge**. Wer sich am Abend an keinen Erfolg des jeweiligen Tages erinnern kann, ist schlicht und einfach **zu streng** zu sich selbst. Was ich damit meine? Ganz einfach: Wir haben verlernt, auch die kleinen Erfolge in unserem Leben zu feiern! Denn ein Erfolg kann schon sein, dass Du morgens nicht verschlafen hast, erfolgreich aus dem Bett gestiegen bist und Deine Zähne geputzt hast.").padding().font(.title3)
                Text("Viele Menschen haben eine sehr spezielle Definition von Erfolg. Sie fühlen sich erst dann wirklich erfolgreich, wenn sie eine Gehaltserhöhung bekommen, ein eigenes Haus besitzen oder den Sportwagen fahren, von dem sie schon seit Jahren träumen. Kein Wunder, dass die meisten von uns mit diesem Mindset jeden Tag traurig und unzufrieden einschlafen.").padding().font(.title3)
                Text("Doch damit ist jetzt jetzt Schluss! Denn ab heute ist es Deine Aufabe, selbst in den kleinsten Dingen einen großen Erfolg zu finden. Je mehr Du Dir Deiner Erfolge im Leben bewusst wirst und diese auch als solche anerkennst, wirst Du auch **das Gefühl von Erfolg** in Deinem Leben integrieren und mehr und mehr die Identität eines echten Erfolgmachers annehmen können.").padding().font(.title3)
                Text("6. WOFÜR BIN ICH HEUTE DANKBAR?").padding()
                    .font(.title)
                    .foregroundColor(Color(hue: hue, saturation: saturation, brightness: brightness))
                    .multilineTextAlignment(.leading)
                Text("Dankbarkeit ist das ultimative **Wundermittel** für ein **glückliches** und **erfülltes Leben**. Du kannst entweder traurig sein, oder dankbar. Du kannst entweder wütend sein, oder dankbar. Du kannst entweder genervt, schlecht drauf, missmutig, neidisch oder kraftlos sein, oder Du bist dankbar.").padding().font(.title3)
                Text("Dankbarkeit **neutralisiert** jedes destruktive Gefühl. Wer wahrhaftig dankbar ist, der schläft am Abend mit einem Lächeln im Gesicht ein - vollkommen egal, was tagsüber passiert ist. Aus genau diesem Grund fokussieren wir uns auch im Rahmen des Erfolgsmacher Journals jeden Tag erneut auf unsere Dankbarkeit.").padding().font(.title3)
                Text("FÜR DANKBARE _Menschen_ MACHT DAS **GLÜCK** GERNE ÜBERSTUNDEN. \n_Ernst Ferstl_").padding().font(.title3)
                    .frame(width: 400)
                    .multilineTextAlignment(.center)
                Text("7. WAS WAR DEIN HEUTIGER GO-MOMENT?").padding()
                    .font(.title)
                    .foregroundColor(Color(hue: hue, saturation: saturation, brightness: brightness))
                    .multilineTextAlignment(.leading)
                Text("Ein Go-Moment ist ein Moment, in dem Du es einfach **tust**. Es ist ein Moment, in dem Du Deine Angst überwunden hast und trotz Angst gehandelt hast. Du hast Neues ausprobiert, alte Konventionen missachtet und Deine Komfortzone erweitert, indem Du die Barriere der Angst durchbrochen hast. Finde einen solchen Moment an jedem Tag und richte Dein Handeln stets nach der verflixten siebten letzten Frage aus - denn nur so kannst Du dauerhaft und beständig weiter wachsen und Deine Ziele erreichen.").padding().font(.title3)
                Text("**Kleiner Hinweis:** Dein heutiger Go-Moment könnte der Moment sein, in dem Du den ersten Tag Deines Erfolgsmacher Journals ausgefüllt hast... Worauf wartest Du also noch? Leg los!").padding().font(.title3)
                    .frame(width: 400)
                Text("Wir sind das, was wir wiederholt tun. Daher lass Dein Erfolgsmacher Journal ab heute nicht mehr los und nutze es JEDEN TAG! Mach es zu einem festen Bestandteil Deines Lebens und sieh Dir selbst beim Wachsen zu. Freue Dich schon jetzt auf den Moment, an dem Du voller Selbstvertrauen, Selbstliebe und Selbstbewusstsein und mit all Deinen Erfolgen im Gepäck, auf den Tag zurück schaust, an dem Du den ersten Satz in dieses Erfolgsjournal geschrieben hast!").padding().font(.title3)
                Text("Ab heute beginnt eine ganz besondere Reise für Dich - und es ist mir eine Ehre, Dich auf dieser Reise des Erfolgsmacher Journals begleiten zu dürfen. Und jetzt: **GO!**").padding().font(.title3)
                Text("Machs einfach, denn Du bist größer als Du denkst!").padding().font(.title3)
                Link("Hier kannst du dir dir das physische ERFOLGSMACHER-JOURNAL bestellen", destination: URL(string: "https://WWW.DAMIAN-RICHTER.COM/ERFOLGSMACHER-JOURNAL")!).padding().font(.title3)
            }
            }
            
            }
    }

#Preview {
    FunktionsView()
}
