//
//  EinleitungsView.swift
//  Erfolge
//
//  Created by Jürgen Zimmer on 14.03.24.
//

import SwiftUI


struct EinleitungsView: View {
    @State private var hue = 0.758
    @State private var saturation = 0.736
    @State private var brightness = 0.712
    var body: some View {
     
        ScrollView {
        VStack {
        Text("WILLKOMMEN IN DEINEM ERFOLGSMACHER JOURNAL!").padding()
                .font(.title)
            .foregroundColor(Color(hue: hue, saturation: saturation, brightness: brightness))
            .multilineTextAlignment(.leading)
            Divider()
            Text("Ich freue mich sehr, dass Du gerade diese Zeilen liest und Dich dazu entschieden hast, mit dem Erfolgsmacher Journal eine neue Ära in Deinem Leben einzuläuten. Gemeinsam werden wir in den nächsten **13 Wochen** eine Reise antreten, die Dich in Deine wahre Größe führen wird. Am Ende dieses Journals wenn Du also alle Seiten ausgefüllt hast - wirst Du die tiefe Gewissheit in Dir verspüren, dass auch in Dir **wahre Macher-Energie** steckt, dass Du eine Erfolgsperson bist und dass auch Du Dich zeigen kannst, weil Du größer bis, als Du bislang dachtest.").padding().font(.title3)
        
            Text("DAS INSTRUMENT FÜR EIN AUSSERGEWÖHNLICHES LEBEN")
            .font(.title)
            .foregroundColor(Color(hue: hue, saturation: saturation, brightness: brightness))
            .multilineTextAlignment(.leading)
            .padding()
        Text("Das, was Du gerade in Deinen Händen hältst, ist ein kompaktes und hoch effektives Werkzeug, das Dir dabei helfen wird, Dein Leben durch eine einzige Routine für immer zu verändern. Die Seiten in diesem Buch werden, sofern Du sie täglich ausfüllst und meinen Anweisungen zur Nutzung dieses Buches folgst, für Dich zum Fundament Deines außergewöhnlichen Traumlebens.").padding().font(.title3)
            
        Text("Das Erfolgsmacher Journal ist nämlich kein Tagebuch, sondern ein wirkungsvolles Werkzeug für mehr Glück, Erfolg und Erfüllung in Deinem Leben. Die Fragen mögen auf den ersten Blick simpel erscheinen, aber gerade diese Einfachheit macht dieses Journal so **extrem wirkungsvoll!**").padding().font(.title3)
        
            Text("KLEINES WERKZEUG, GROSSE WIRKUNG").padding()
            .font(.title)
            .foregroundColor(Color(hue: hue, saturation: saturation, brightness: brightness))
            .multilineTextAlignment(.leading)
        Text("Warum das Erfolgsmacher Journal so wirksam ist? Ganz einfach: Tausende Menschen da draußen reden und lesen tagtäglich über Dankbarkeit, Demut und Liebe, Doch _tun_ sie es auch? Sind sie _wirklich_ voller Liebe, Demut und Dankbarkeit? Schauen wir ehrlich auf uns selbst und unser Umfeld, bemerken wir: Die meisten Menschen sind es nicht. Viele wissen noch nicht einmal, wie sich wahre Dankbarkeit, wahre Erfüllung oder wahre Liebe anfühlt. Ganz zu schweigen von dem Gefühl des Erfolgs in unserem Leben.").padding().font(.title3)
        Text("Doch zwischen wissen und tun liegen bekanndlich Welten, Dieses Journal unterstützt Dich dabei, ein echter **Erfolgsmacher** zu sein. Du fragst Dich, was ein echter Erfolgsmacher ist? Ein Erfolgsmacher ist ein Mensch, der es einfach macht, der die Dinge, die er (oder sie) sich aus tiefsten Herzen wünscht, einfach umsetzt. Um Dir Deinen Weg in die Umsetzung zu erleichtern, gibt es dieses Journal.").padding().font(.title3)
        Text("Durch das tägliche Schreiben werden gelebte Dankbarkeit und wahrer Erfolg in Deiner Innenwelt zur Gewohnheit und werden sich in Folge dessen in Deiner Außenwelt manifestieren. Das bedeutet, das die Ergebnisse in Deinem Leben, (also Deine Beziehungen, Dein Kontostand, Deine Arbeit, Deine Gesundheit, Dein Gemütszustand usw.) sich in dem Maße **verbessern**, in dem es Dir gelingt, Dir Deiner Erfolge bewusst zu werden und sie in diesem Buch schriftlich festzuhalten.").padding().font(.title3)
        Text("DU GLAUBST MIR NICHT? DAS GLAUBE ICH DIR!").padding()
            .font(.title)
            .foregroundColor(Color(hue: hue, saturation: saturation, brightness: brightness))
            .multilineTextAlignment(.leading)
        Text("Laut Statistik sind wir alle wahre Meister des Scheiterns. 92% der Menschen, die jedes Jahr mit dem Rauchen aufhören wollen, scheitern. 95% der Menschen, die Gewicht verlieren wollen, erleben auf Dauer den Jo-Jo-Effekt und 88% aller Menschen, die sich zum Jahreswechsel Vorsätze machen, setzen diese niemals um. Ich bin mir allerdings vollkommen Sicher, das Du mit diesem Buch nicht scheitern kannst, sondern bis zum Ende durchziehen wirst. Woher ich wissen will, dass es für Dich ein Kinderspiel sein wird, dieses Erfolgsmacher Journal mit Inhalt zu befüllen - und das für die nächsten drei Monate?").padding().font(.title3)
        Text("Eine wunderbare Frage. Die Antwort lautet: Weil ich selbst am eigenen Körper erfahren habe, wie bestärkend das Erfolgsmacher Journal wirkt - und weil mir Tausende Seminarteilnehmer berichten, dass es ihnen genauso geht. Und wenn es bei so vielen anderen Menschen funktioniert hat, ist die Wahrscheinlichkeit enorm hoch, dass es auch bei Dir wunderbar funktionieren wird.").padding().font(.title3)
        Text("ÜBERNIMM DIE VERANTWORTUNG zu 100%").padding()
            .font(.title)
            .foregroundColor(Color(hue: hue, saturation: saturation, brightness: brightness))
            .multilineTextAlignment(.leading)
        Text("Im Gegensatz zum Abnehmen oder dem Rauchen erhältst Du durch das Ausfüllen des Erfolgsmacher Journals übrigens Tag für Tag **mehr Energie**. Du wirst glücklicher, energievoller und ausgeglichener. Dein Selbstvertrauen steigt und Du fühlst mehr und mehr, dass Erfolg auch für Dich machbar ist. Und ja, das ist auch für DICH möglich! Probier's also einfach aus und sei offen auf das, was sich in den kommenden Tagen in Deinem Leben verändern wird.").padding().font(.title3)
        Text("Verantwortlich ist man nicht nur für das, was man tut, sondern auch für das, was man nicht tut. \nLaotse").multilineTextAlignment(.center).italic().padding().font(.title3)
        Text("Damit Du erleben kannst, wie das Glück und der Erfolg in Deinem Leben Einzug halten, musst Du ab heute für die kommenden 13 Wochen die volle Verantwortung für Dein Erfolgsmacher Journal übernehmen. Mit jedem Tag, an dem Du die tägliche Seite des Journals ausfüllst, trainierst Du Deinen **Erfolgs-Biceps**. Mit jedem Tag, an dem Du das nicht tust, schwindet wieder etwas Erfolgs-Muskel-Kraft und Du arbeitest nicht mehr für, sondern gegen Dein Träume und Ziele. Du sabotierst Deinen eigenen Erfolg Ich erzähle Dir da weil ich in den letzten Jahren gesehen habe, dass enorm viele Menschen Ding machen, die ihnen gut run, doch viele nach einiger Zeit damit anfangen, si wider zu vernachlässigen und schließlich ganz zu lassen. Die Folge: Niederge schlagen und unzufrieden versinken sie im Trott des Alltags.").padding().font(.title3)
        Text("Lass nicht zu, dass Dich Deine alten Verhaltensmuster an Deinem aktuellen Punkt im Leben festhalten, sondern gehe aktiv auf das Leben zu, schreibe jeden Tag ins Journal und etabliere somit das Muster des Machens in Deinem Leben. So wird Erfolg auch für Dich zu einem **vorhersagbaren Ergebnis.**").padding().font(.title3)
        Text("ROUTINEN SIND DER SCHLÜSSEL FÜR EIN ERFOLGREICHES LEBEN").padding()
            .font(.title)
            .foregroundColor(Color(hue: hue, saturation: saturation, brightness: brightness))
            .multilineTextAlignment(.leading)
        Text("Es sind die **kleinen Dinge**, die wir ständig wiederholen, die in der Summe die Qualität Deines Lebens ausmachen. Ganz entscheidend in diesem Prozess ist dabei Dein Denken.").padding().font(.title3)
        Text("DENK LIEBER AN DAS, WAS DU **HAST**, ALS AN DAS, WAS DIR **_fehlt_** \n_Mark Aurel_").padding().font(.title3)
            .frame(width: 400)
            .multilineTextAlignment(.center)
        Text("Wer ein wahrer Erfolgsmacher sein will, muss sich eine ganz bestimmte Art und Weise des Denkens aneignen. Ein Denken, das Dich dabei unterstützt, jeden Tag aufs Neue in Deiner **Macher-Energie** zu sein, Deinen Fokus zu halten und einen Go-Moment nach dem anderen in Deinem Leben zu erschaffen. Diese Form des Denkens macht Dich zu einem wahren Gewinner. Du wandelst Dich zu einer Person, die sich nicht von der eigenen Angst dominieren lässt, jeden Tag über sich hinauswächst und die wahre Größe in sich täglich neu erkennt.").padding().font(.title3)
        Text("Und weißt Du, was das Beste ist? Nur **zehn Minuten** reichen aus, um genau diese Form des Denkens in Deinem Leben zu etablieren. Ja, Du hast richtig gelesen! Zehn Minuten Deiner Zeit an jedem Abend sind genug, um Dir eine neue Form des Denkens anzueignen und damit zu einem wahren Erfolgsmacht zu werden. Dabei wirkt das Erfolgsmacher Journal wie die **kleinste minimal Konstante**, die ausschlaggebend für den Erfolg in Deinem Leben ist.").padding().font(.title3)
        Text("ES IST EINFACH, ES EINFACH ZU MACHEN!").padding()
            .font(.title)
            .foregroundColor(Color(hue: hue, saturation: saturation, brightness: brightness))
            .multilineTextAlignment(.leading)
        Text("Ich weiß genau, dass nicht jeder die Zeit hat, um ewig lange Listen auszufüllen. Du hast Deinen Alltag, Deine täglichen To-Dos und von Zeit zu Zeit wird es bei jedem von uns hier und da mal ein bisschen turbulent. Das ist ganz normal. Daher habe darauf geachter, dass dieses Journal so aufgebaut ist, dass wicklich JEDER von uns es verwenden und damit erfolgreich werden kann. Ganz egal. wie stressig der Tag war. Zehn Minuten kann sich JEDER am Abend nehmen, wenn er es wirklich ernst meint - auch Du!").padding().font(.title3)
        Text("Stell Dir einmal vor, Du könntest jeden Abend mit dem Gefühl einschlafen, über Dich hinausgewachsen zu sein, etwas Neues gelernt zu haben, eine bessere. größere und stärkere Version Deines Selbst zu sein und vollkommen zielgerichtet auf Dein Ziel zuzugehen - wie würdest Du Dich dann fühlen? Ganz genau: **Du würdest Dich großartig fühlen.**").padding().font(.title3)
        Text("Und genau das passiert, wenn Du dieses Journal in Deinem Leben integriest. Warten wir also nicht länger und fangen direkt an!").padding().font(.title3)
        }
        }
    }
}

#Preview {
    EinleitungsView()
}
