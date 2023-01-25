-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 30, 2021 at 01:12 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoppingcart`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `question` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `email`, `question`) VALUES
(2, 'shionkim@icloud.com', 'Kürzlich habe ich einen OLED-Fernseher gekauft, aber er hat nicht richtig funktioniert, also wollte ich fragen, ob ich ihn zurückschicken kann?');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `question` varchar(200) NOT NULL,
  `desc` text NOT NULL,
  `img` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `desc`, `img`, `date_added`) VALUES
(1, 'Wie lange dauert die Lieferung?', '<p>In der Regel dauert es 2 bis 3 Tage, bis die Lieferung erfolgreich abgeschlossen ist. Bei Bestellungen von außerhalb Deutschlands kann es zwischen 5 und 30 Tagen dauern. Es ist auch möglich, dass Ihre Bestellung aufgrund des deutlich erhöhten Auftragsvolumens durch die Pandemie verspätet ausgeliefert wird.</p>', 'delivery.jpg', '2021-07-26 11:32:05'),
(2, 'Wann erhalte ich die Bestellbestätigung?', '<p>Wir senden Ihnen die Bestätigung zu, sobald wir Ihre Zahlung bestätigt haben. Dies dauert in der Regel nur 1-2 Tage. Es kann jedoch länger dauern, wenn wir viele Bestellungen haben.</p>', 'confirm.jpg', '2021-07-26 13:37:15'),
(3, 'Ich habe meine Bestellung immer noch nicht erhalten', '<p>Bitte wenden Sie sich an den Kundensupport, indem Sie auf den Kontakt-Button klicken. Sie können uns das Problem schildern, das Sie gerade haben.</p>', 'problem.jpg', '2021-07-26 13:40:15'),
(4, 'Das Produkt ist teilweise/vollständig defekt', '<p>Wir bieten eine Geld-zurück-Garantie für defekte Produkte, da wir die Zufriedenheit unserer Kunden über alles andere stellen. Bitte wenden Sie sich an unseren freundlichen Kundenservice.</p>', 'broken.jpg', '2021-07-26 13:43:15'),
(5, 'Kann ich meine Bestellung verfolgen?', '<p>Wir senden Ihnen innerhalb von 24 Stunden den Link zur Nachverfolgung Ihrer Bestellung zu.</p>', 'tracking.jpg', '2021-07-26 13:45:15'),
(6, 'Ich möchte das Produkt zurückgeben', '<p>Das Leben ist eine Reihe von unerwarteten Events, wir verstehen das. Natürlich können Sie das Produkt innerhalb von 100 Tagen zurückgeben.</p>', 'return.jpg', '2021-07-26 13:47:15');

-- --------------------------------------------------------

--
-- Table structure for table `ordersummary`
--

CREATE TABLE `ordersummary` (
  `id` int(10) NOT NULL,
  `username` varchar(100) CHARACTER SET latin1 NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `address` varchar(100) CHARACTER SET latin1 NOT NULL,
  `item` varchar(100) CHARACTER SET latin1 NOT NULL,
  `item_quantity` int(100) NOT NULL,
  `status` enum('Added to cart','Confirmed') CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordersummary`
--

INSERT INTO `ordersummary` (`id`, `username`, `email`, `address`, `item`, `item_quantity`, `status`) VALUES
(1, 'shion12', 'shion@gmail.com', 'Chicago Lane 7a', 'LG - OLED C1 Series - 55\"', 2, 'Confirmed'),
(2, 'shion12', 'shion@gmail.com', 'Chicago Lane 7a', 'Sony - PlayStation 5', 1, 'Confirmed'),
(3, 'shion12', 'shion@gmail.com', 'Chicago Lane 7a', 'LG - SIGNATURE Front-Load Washer and Electric Dryer', 1, 'Confirmed'),
(4, 'shion12', 'shion@gmail.com', 'Chicago Lane 7a', 'Sonos - Arc Soundbar', 3, 'Confirmed'),
(5, 'shion12', 'shion@gmail.com', 'Chicago Lane 7a', 'Apple - 12.9-Inch iPad Pro', 2, 'Confirmed'),
(6, 'shion12', 'shion@gmail.com', 'Chicago Lane 7a', 'LG - OLED C1 Series - 55\"', 2, 'Confirmed'),
(7, 'shion12', 'shion@gmail.com', 'Chicago Lane 7a', 'Apple - MacBook Pro - 16\"', 1, 'Confirmed'),
(8, 'shion12', 'shion@gmail.com', 'Chicago Lane 7a', 'Apple - 12.9-Inch iPad Pro', 1, 'Confirmed'),
(9, 'shion12', 'shion@gmail.com', 'Chicago Lane 7a', 'Samsung - Family Hub Refrigerator', 1, 'Confirmed'),
(10, 'MemoLoran', 'memotuku@hotmail.com', 'Windmuehlenstr.44', 'Apple - AirPods Pro', 1, 'Confirmed'),
(11, 'MemoLoran', 'memotuku@hotmail.com', 'Windmuehlenstr.44', 'Sony - PlayStation 5', 1, 'Confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `desc` text NOT NULL,
  `img` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `desc`, `img`, `date_added`) VALUES
(1, 'OLED vs. LED: Sind OLED-Fernseher wirklich besser?', '<p>Wenn Sie auf dem Markt für einen Fernseher sind, haben Sie wahrscheinlich schon den Hype um OLED-Modelle gehört. Sie sind dünn, leicht und bieten einen unglaublichen Kontrast und Farben, die unübertroffen sind. OLED unterscheidet sich nur durch einen einzigen Buchstaben von der gebräuchlicheren LED-Anzeige, also was ist der Unterschied? Können sie wirklich so unterschiedlich sein? Mit einem Wort: Ja. Das zusätzliche \"O\" macht einen großen Unterschied, aber es bedeutet nicht automatisch, dass ein OLED-Fernseher einen LED-Fernseher in jedem Anwendungsfall schlagen wird.</p>\r\n\r\n<p>Als OLED-Fernseher 2013 auf den Markt kamen, wurden sie für ihren perfekten Schwarzwert und ihre exzellenten Farben gelobt, aber sie mussten aufgrund ihrer Helligkeit, die nicht mit der von LED-Fernsehern mithalten konnte, einen kleinen Dämpfer hinnehmen. Außerdem klaffte eine große Preislücke zwischen OLED-Fernsehern (nicht zu verwechseln mit QLED) und ihren hochwertigen LED-Gegenstücken. Die Legende besagt, dass sich früher nur Anwälte, Führungskräfte und Ärzte OLED-Fernseher leisten konnten. Zum Glück ist das nicht mehr der Fall.</p>\r\n\r\n<p>OLED-Fernseher sind viel heller als früher, und die Preise sind gesunken, vor allem, weil Marken wie Sony im Jahr 2021 wettbewerbsfähige Optionen einführen. Auch auf dem LED-Markt wird es bald eine kleine Umwälzung geben. Im Moment ist es jedoch an der Zeit, einen Blick auf die Unterschiede zwischen diesen beiden Technologien zu werfen und die Stärken und Schwächen der beiden zu untersuchen.</p>\r\n\r\n<h2>Was bedeutet LED-TV?</h2>\r\n\r\n<p>Nicht-OLED-Fernseher bestehen aus zwei Hauptbestandteilen: Einem LCD-Panel und einer Hintergrundbeleuchtung. Das LCD-Panel enthält die Pixel, die kleinen farbigen Punkte, aus denen das Bild eines Fernsehers besteht. Die Pixel selbst können nicht gesehen werden; sie benötigen eine Hintergrundbeleuchtung. Wenn das Licht der Hintergrundbeleuchtung durch ein LCD-Pixel scheint, kann man seine Farbe sehen.</p>\r\n\r\n<p>Das \"LED\" in LED-Fernseher bezieht sich einfach auf die Art der Hintergrundbeleuchtung. In der Vergangenheit wurde eine dickere und weniger effiziente Technologie namens CCFL (Kaltkathoden-Leuchtstoffröhren) verwendet. Heutzutage verwendet jedoch praktisch jeder Flachbildfernseher LEDs als Quelle für die Hintergrundbeleuchtung. Daher bezieht sich der Begriff \"LED-Fernseher\" einfach auf einen LCD-Fernseher mit LED-Hintergrundbeleuchtung.</p>\r\n\r\n<p>Allerdings sind nicht alle LED-Fernseher gleich. Es kann Unterschiede bei der Anzahl und der Qualität der verwendeten LEDs geben, was zu Unterschieden bei Dingen wie Helligkeit und Schwarzwert führt. Vielleicht haben Sie auch schon einmal einen sogenannten \"QLED-Fernseher\" gesehen. Dabei handelt es sich um eine Art von LED-Fernsehern, die Quantenpunkte verwenden, um eine bessere Helligkeit und Farbe zu erzielen. Auf QLED gehen wir weiter unten ein, aber hier finden Sie einen guten Überblick über die Unterschiede zwischen QLED- und OLED-Fernsehern.</p>\r\n\r\n<h2>Was bedeutet OLED-TV?</h2>\r\n\r\n<p>Das \"OLED\" in OLED-TV steht für \"organische Leuchtdiode\". OLEDs haben die ungewöhnliche Eigenschaft, dass sie sowohl Licht als auch Farbe aus einer einzigen Diode erzeugen können, wenn sie mit Strom versorgt werden. Aus diesem Grund benötigen OLED-Fernseher keine separate Hintergrundbeleuchtung. Jedes Pixel, das Sie sehen, ist eine in sich geschlossene Farb- und Lichtquelle.</p>\r\n\r\n<p>Zu den Vorteilen von OLED-Bildschirmen gehört, dass sie extrem dünn, flexibel und sogar rollbar sein können. Der größte Vorteil im Vergleich zu LED-Fernsehern besteht jedoch darin, dass jedes einzelne Pixel seine eigene Leuchtdichte und Energie erhält (im Gegensatz zu LED-Fernsehern, deren Pixel eine externe Lichtquelle benötigen, um zu sehen). Wenn es eingeschaltet ist, kann man es sehen. Wenn es ausgeschaltet ist, gibt es überhaupt kein Licht ab - es ist komplett schwarz. Wie sich das auf den Schwarzwert auswirkt, werden wir gleich besprechen.</p>\r\n\r\n<p>Zurzeit ist LG Display der einzige Hersteller von OLED-Panels für Fernsehgeräte, der für Spitzenmodelle wie den CX bekannt ist. Sony und LG haben eine Vereinbarung getroffen, die es Sony erlaubt, LG OLED-Panels in Sony-Fernsehern - wie dem hellen X95OH - zu verbauen, aber ansonsten werden Sie OLED nicht in vielen anderen in den USA verkauften TV-Displays finden.</p>\r\n\r\n<h2>Ist QLED das Gleiche wie OLED?</h2>\r\n\r\n<p>Auch wenn die beiden Akronyme sehr ähnlich klingen, ist ein OLED-Fernseher nicht dasselbe wie ein QLED-Fernseher. Letztere basieren zwar auf der LED-Technologie, verwenden aber eine Technik, bei der selbstemittierende Quantenpunkte über die Pixel gelegt werden, die für eine bessere Helligkeit, Lebendigkeit und Farbgenauigkeit sorgen. QLED ist eher ein iterativer Schritt als ein Generationssprung, und obwohl wir den Kauf eines solchen Geräts auf jeden Fall empfehlen würden, wenn OLED für Sie unerreichbar ist, sollten Sie sich darauf einstellen, dass es irgendwann veraltet sein wird, da sich Technologien wie Quantenpunkt-OLED (QD-OLED) und microLED durchsetzen werden.</p>\r\n\r\n<h2>Wie sieht das im Vergleich zu microLED aus?</h2>\r\n\r\n<p>Als ob die Dinge nicht schon verwirrend genug wären, gibt es auch noch einen neuen Akteur namens microLED, der nach jahrelanger Erwartung langsam auftaucht.</p>\r\n\r\n<p>Trotz des Namens hat microLED mehr mit OLED als mit LED zu tun. Mit dieser von Samsung entwickelten und geförderten Technologie werden winzige, modulare LED-Panels hergestellt, die Lichtemission und Farbe wie OLED-Bildschirme kombinieren, allerdings ohne den \"organischen\" Teil. Derzeit wird die Technologie vor allem für extragroße Wandfernseher verwendet, bei denen Farben, Schwarzwerte und Blickwinkel hervorragend sind, die aber ein größeres Potenzial für größere Helligkeit und Haltbarkeit als OLED-Fernseher haben.</p>\r\n\r\n<p>Für den Durchschnittsverbraucher ist microLED noch nichts, was man in Betracht ziehen könnte. Es ist nach wie vor schwierig, es auf weniger als riesige Fernseher zu skalieren, und es ist unwahrscheinlich, dass es in den nächsten Jahren in die Haushalte kommt, wenn es immer noch sehr teuer sein wird. Das galt natürlich auch für OLED, weshalb es sich lohnt, diese Technologie als zukünftigen TV-Ersatz im Auge zu behalten.</p>\r\n\r\n<h2>Was ist besser, OLED-TV oder LED-TV?</h2>\r\n\r\n<p>Nun ist es an der Zeit, diese beiden Technologien gegeneinander auszuspielen und zu sehen, wie sie sich in Bezug auf Eigenschaften wie Kontrast, Betrachtungswinkel, Helligkeit und andere Leistungsaspekte schlagen.</p>\r\n\r\n<h3>Schwarzwert</h3>\r\n\r\n<p>Die Fähigkeit eines Bildschirms, tiefe, dunkle Schwarztöne zu erzeugen, ist wohl der wichtigste Faktor für eine hervorragende Bildqualität. Tiefere Schwarztöne ermöglichen u. a. einen höheren Kontrast und sattere Farben und damit ein realistischeres und schillernderes Bild. Wenn es um Schwarzwerte geht, ist OLED der unangefochtene Champion.</p>\r\n\r\n<p>LED-Fernseher basieren auf einer LED-Hintergrundbeleuchtung, die hinter einem LCD-Panel leuchtet. Selbst mit fortschrittlicher Dimmtechnologie, die LEDs selektiv dimmt, die nicht auf voller Leistung laufen müssen, haben LED-Fernseher in der Vergangenheit Probleme gehabt, dunkle Schwarztöne zu erzeugen und können unter einem Effekt leiden, der als \"Light Bleed\" bezeichnet wird und bei dem hellere Abschnitte des Bildschirms in angrenzenden dunkleren Bereichen einen Schleier oder Ausbleichung erzeugen.</p>\r\n\r\n<p>OLED-Fernseher haben keines der Schwarzwertprobleme herkömmlicher LED-Fernseher. Wenn ein OLED-Pixel nicht mit Strom versorgt wird, erzeugt es kein Licht und ist daher völlig schwarz. Für uns klingt das nach einer offensichtlichen Wahl.</p>\r\n\r\n<p><strong>Gewinner:</strong>OLED</p>\r\n\r\n\r\n', 'oledlcd.jpg', '2021-07-23 11:44:33'),
(2, 'Warum das iPhone besser ist als Android', '<p>Beachte, dass ich nicht gesagt habe \"iOS über Android\". Der Grund, sich mit dem iPhone XR, iPhone XS und iPhone XS Max für Apple zu entscheiden, ist nicht nur die Plattform, sondern auch die Art und Weise, wie sich die Software und die Hardware gegenseitig ergänzen. Das iPhone arbeitet auch nahtlos mit anderen Apple-Geräten zusammen, darunter Macs, die Apple Watch und Apple TV - hier ist ein Ökosystemfaktor im Spiel.</p>\r\n\r\n<p>Hier sind Gründe, warum das iPhone Android schlägt.\r\n</p>\r\n\r\n<h2>1. iPhones sind schneller</h2>\r\n\r\n<p>Wenn du darüber nachdenkst, ein neueres iPhone zu kaufen, solltest du wissen, dass der A12 Bionic Chip im Inneren alles aus dem Android-Lager schlägt. So schlug das iPhone XS beispielsweise den Snapdragon 855-Chip des Galaxy S10 Plus im Geekbench 4, der die Gesamtleistung misst. Der Abstand ist kleiner als in der Vergangenheit, dank des Snapdragon 855-Prozessors, der die führenden Android-Telefone in diesem Jahr antreibt, aber das iPhone XS erzielte mit 11.420 Punkten mehr als das Galaxy S10 Plus mit 855-Prozessor mit 10.732 Punkten.</p>\r\n\r\n<p>Wir haben auch festgestellt, dass die neuesten iPhones Videos in unserem Bearbeitungstest schneller transkodieren können, wobei das iPhone XS nur 39 Sekunden benötigt, während das Galaxy S10 fast 2,5 Minuten benötigt. Dieser Geschwindigkeitsunterschied macht auch den Genuss von anspruchsvollen Augmented-Reality-Apps zu einem reibungsloseren Erlebnis.</p>\r\n\r\n<h2>2. Bessere Hardware- und Software-Integration</h2>\r\n\r\n<p>Im Laufe der Jahre gab es viele Beispiele dafür, dass Apple den Vorteil hat, das gesamte Widget zu besitzen, was bedeutet, dass es bestimmte Dinge gibt, die nur es schaffen kann. Oder zumindest weit vor allen anderen.</p>\r\n\r\n<p>Das jüngste Beispiel ist Face ID, das die sichere Anmeldung beim iPhone durch einen 3D-Scan des Gesichts über einen TrueDepth-Sensor ermöglicht. Andere Unternehmen haben versucht, Face ID zu kopieren, aber keines war erfolgreich.</p>\r\n\r\n<p>Animoji und Memoji sind weitere Beispiele dafür, dass Apple-Hardware und -Software nahtlos zusammenarbeiten. Samsungs Äquivalent, AR Emoji, wirkt im Vergleich dazu wie ein halbgarer Versuch.</p>\r\n\r\n<h2>3. das einfachste Telefon</h2>\r\n\r\n<p>Trotz aller Versprechungen der Hersteller von Android-Telefonen, ihre Oberflächen zu optimieren, bleibt das iPhone das bei weitem am einfachsten zu bedienende Telefon. Manche mögen beklagen, dass sich das Aussehen und die Bedienung von iOS im Laufe der Jahre kaum verändert haben, aber ich betrachte es als Vorteil, dass es noch genauso funktioniert wie im Jahr 2007. Nehmen Sie es in die Hand, schalten Sie es ein, berühren Sie die App, um sie zu öffnen.</p>\r\n\r\n<p>Natürlich hat Apple im Laufe der Jahre Verbesserungen eingebaut, wie Siri und Control Center. Mit iOS 11 fügte Apple die Möglichkeit hinzu, Live-Fotos zu bearbeiten, Zahlungen an Freunde in der Nachrichten-App zu senden und Dateien über eine richtige Dateien-App zu organisieren (was längst überfällig ist, wenn man bedenkt, dass Android von Anfang an Zugriff auf Dateien hatte). Und in iOS 12 erhielten die Nutzer Siri Shortcuts und Vorschläge, eine schnellere Leistung, Gruppen-Facetime und andere Verbesserungen. Erwarten Sie, dass die Verbesserungen mit iOS 13 in diesem Herbst fortgesetzt werden.</p>\r\n\r\n<h2>4. Betriebssystem-Updates, wenn du sie willst</h2>\r\n\r\n<p>Das wird ein bisschen wehtun, liebe Android-Fans. Im Februar 2019 nutzten laut Apple satte 83 Prozent aller iOS-Geräte, die in den letzten vier Jahren eingeführt wurden, iOS 12. Google hat noch nicht einmal Zahlen zur Adoptionsrate für das neueste Android Pie (Stand: April 2019) veröffentlicht. Und es dauerte etwa ein Jahr, bis das ältere Android Oreo eine Verbreitung von nur 19 Prozent erreichte.</p>\r\n\r\n<p>Das Problem ist folgendes: Mit Ausnahme von reinen Android-Telefonen wie dem Pixel 3 müssen die Samsng\'s und LG\'s der Welt durch mehr Reifen springen, um Ihnen die neueste Version von Googles OS zu bringen. Außerdem ziehen die Telefonhersteller in der Regel ihre Füße bei der Aktualisierung älterer Telefone ein. Die Situation wird besser, aber nicht schnell genug.</p>\r\n\r\n<h2>5. Die besten Apps zuerst</h2>\r\n\r\n<p>Nun, da sowohl iOS als auch Android Millionen von Apps in ihren Stores haben, ist das Wettrüsten vorbei, oder? Nicht ganz. Das iPhone wird von Entwicklern immer noch als Startplattform für die heißesten neuen Apps bevorzugt.</p>\r\n\r\n<p>Der Google Play Store ist so etwas wie das Netflix unter den App-Stores: Hier landen die Hits, aber in der Regel erst, nachdem sie auf iOS ihren ersten Durchlauf erlebt haben. Ein Paradebeispiel ist Fortnite, das mehrere Monate brauchte, um den Sprung von iOS auf Android zu schaffen, und selbst dann war es ein Samsung-Exklusivtitel. Andere Apps wie Super Mario Run und HQ Trivia brauchten ebenfalls Monate, um auf Android zu gelangen. Zu den Apps, die das iPhone früher als Android erreicht haben, gehören Monument Valley 2, Affinity Photo und Snapchat.</p>\r\n\r\n<h2>6. Keine Bloatware!</h2>\r\n\r\n<p>Samsung und andere haben es geschafft, den Schmerz für die Nutzer zu minimieren, indem sie alle Bloatware des Anbieters in einen einzigen Ordner gepackt haben, aber es ist immer noch einfach nur Mist, der Platz auf deinem Handy wegnimmt.</p>\r\n\r\n<p>Auf dem iPhone ist kein einziges Stück Software eines Anbieters vorinstalliert, so dass das Gerät sofort einsatzbereit ist. Apple legt zwar einige Apps bei, die du vielleicht nicht brauchst oder willst, wie z. B. die Apple Watch, aber das Unternehmen ist viel zurückhaltender als andere Hersteller, wenn es darum geht, seine eigenen Produkte zu bündeln. Und unter iOS 12 kannst du zumindest die integrierten Apps deaktivieren, die du nicht brauchst.</p>', 'iphone23.jpg', '2021-07-23 11:45:33'),
(3, 'Warum sind PS5s immer noch ausverkauft?', '<p>Seitdem Sonys neueste Konsole, die PlayStation 5, im November 2020 auf den Markt kam, haben sich Gamer darum gerissen, eine Chance zu bekommen, eine zu ergattern. Die Konsole ist seit langem vergriffen, und eine Zeit lang bestand die einzige Möglichkeit, sie auf Nachfrage zu erwerben, darin, auf Wiederverkaufsseiten die Preise von Schwarzhändlern zu zahlen.</p>\r\n\r\n<p>Mehr als sechs Monate nach der Veröffentlichung der Konsole ist die PS5 immer noch so gut wie unmöglich zu bekommen, und viele Spieler sind nicht in der Lage, eine Bestellung aufzugeben. Warum sind PS5s immer noch überall ausverkauft?</p>\r\n\r\n<h2>Warum ist die PS5 so schwer zu finden?</h2>\r\n\r\n<p>Spieler, die schon lange auf der Jagd nach der schwer fassbaren Konsole sind, stellen oft fest, dass die Vorräte innerhalb von Minuten ausverkauft sind, und selbst diejenigen, die mit den besten Methoden auf Verkäufe aufmerksam gemacht wurden, stehen mit leeren Händen da. Dies ist vor allem auf die anhaltende Halbleiterknappheit zurückzuführen. Dieser Chip wird bei der Herstellung der PS5 verwendet, und es gibt eine weltweite Knappheit, von der Branchen wie Videospiele und medizinische Geräte betroffen sind.</p>\r\n\r\n<p>Leider sieht es nicht so aus, als würde sich diese Knappheit in nächster Zeit verbessern, und laut Tom\'s Guide wird es bis weit ins Jahr 2022 hinein schwierig sein, eine PS5 zu finden.</p>\r\n\r\n<p>\"Ich glaube nicht, dass sich die Nachfrage in diesem Jahr beruhigen wird, und selbst wenn wir im nächsten Jahr viel mehr Geräte sichern und viel mehr Einheiten der PlayStation 5 produzieren würden, wäre unser Angebot nicht in der Lage, mit der Nachfrage Schritt zu halten\", soll Hiroki Totoki, CFO der Sony-Gruppe, laut Bloomberg während eines privaten Briefings gesagt haben.</p>\r\n\r\n<p>Tom\'s Guide berichtet, dass Sony in Erwägung gezogen hat, das Design der PS5 zu ändern, um der Knappheit Rechnung zu tragen, obwohl es derzeit unklar ist, ob das Unternehmen sich für ein anderes Design entscheiden wird.</p>\r\n\r\n<p>\"Wir streben ein höheres Verkaufsvolumen als bei der PS4 [im zweiten Jahr] an. Aber können wir das Angebot drastisch erhöhen? Nein, das ist unwahrscheinlich\", sagte Hiroki über die Verkaufszahlen der PS5 im zweiten Jahr, laut VGC. \"Der Mangel an Halbleitern ist ein Faktor, aber es gibt noch andere Faktoren, die sich auf das Produktionsvolumen auswirken werden.\r\n\r\n<h2>Wann wird die PS5 im Handel erhältlich sein?\r\n</h2>\r\n\r\n<p>Zurzeit gibt es keine Einzelhandelsgeschäfte, die die PS5 in ihren Läden verkaufen, da alle Nachbestellungen derzeit über Online-Händler abgewickelt werden. Da Sony erklärt hat, dass es wahrscheinlich bis weit in das Jahr 2022 dauern wird, bis die aktuelle Knappheit behoben werden kann, ist es wahrscheinlich, dass die Spieler die Konsole frühestens Mitte 2022 in den Läden finden werden.</p> <p>\r\n\r\n<p>Natürlich kann sich das ändern, aber zum jetzigen Zeitpunkt hat Sony noch keine Pläne bekannt gegeben, dass die PS5 im Handel erhältlich sein wird.</p>\r\n\r\n<p>Wenn Sie sich eine PS5 sichern wollen, gibt es andere Methoden, die Sie anwenden können, um sich eine PS5 zu sichern. Der Twitter-Account @Wario64 hat oft einige der aktuellsten Informationen über PS5-Neuzugänge, und das Einschalten von Twitter-Benachrichtigungen für den Account hat sich für viele als erfolgreich erwiesen.</p>\r\n\r\n<p>Es gibt auch eine Reihe von Google Chrome-Erweiterungen, die Sie über einen Neuzugang benachrichtigen, sobald er eintritt. Einige Händler informieren ihre Kunden auch per E-Mail über einen bevorstehenden Neukauf. Viele, die derzeit eine PS5 besitzen, haben eine Kombination dieser Methoden genutzt.</p>', 'ps5stock.png', '2021-07-23 11:46:33'),
(4, 'Apple M1 Chip: Alles, was Sie wissen müssen', '<p>Im November 2020 stellte Apple die ersten Macs mit einem Arm-basierten M1-Chip vor und präsentierte 2020 neue 13-Zoll MacBook Pro, MacBook Air und Mac mini Modelle. Im Jahr 2021 fügte Apple den M1 iMac und das M1 iPad Pro hinzu. Der M1-Chip hat für seine unglaubliche Leistung und Effizienz begeisterte Kritiken erhalten und ist der Höhepunkt von mehr als einem Jahrzehnt Arbeit von Apple an Chips, die für das iPhone und das iPad entwickelt wurden.</p>\r\n\r\n<p>In diesem Leitfaden erfahren Sie alles, was Sie über den M1-Chip wissen müssen und wie er sich von den Intel-Chips unterscheidet, die vor ihm entwickelt wurden.</p>\r\n\r\n<h2>Apple\'s M1 Chip erklärt</h2>\r\n\r\n<p>Der M1 ist das erste von Apple entworfene System on a Chip (SoC), das für den Einsatz in Macs entwickelt wurde. Er markiert Apples Abkehr von den Intel-Chips, die das Unternehmen aus Cupertino seit 2006 in Macs einsetzt.</p>\r\n\r\n<p>Als \"System on a Chip\" integriert der M1 verschiedene Komponenten wie CPU, GPU, Unified Memory Architecture (RAM), Neural Engine, Secure Enclave, SSD-Controller, Bildsignalprozessor, Kodier-/Dekodier-Engines, Thunderbolt-Controller mit USB-4-Unterstützung und mehr, die alle die verschiedenen Funktionen des Macs antreiben.</p>\r\n\r\n<p>Bisher haben Macs mehrere Chips für CPU, E/A und Sicherheit verwendet, aber Apples Bemühungen, diese Chips zu integrieren, ist der Grund, warum der M1 so viel schneller und effizienter ist als frühere Intel-Chips. Die einheitliche Speicherarchitektur, die Apple integriert hat, ist ebenfalls ein wichtiger Faktor, da alle Technologien im M1 auf dieselben Daten zugreifen können, ohne zwischen mehreren Speicherpools wechseln zu müssen.</p>\r\n\r\n<p>Die in den M1-Chip integrierte einheitliche Speicherarchitektur sorgt dafür, dass CPU, GPU und andere Prozessorkomponenten keine Daten untereinander kopieren müssen, sondern auf denselben Datenpool zugreifen können. Dies bringt dem M1 bemerkenswerte Geschwindigkeits- und Effizienzsteigerungen. Diese Speicherarchitektur bedeutet, dass der Arbeitsspeicher nicht vom Benutzer aufgerüstet werden kann, was nicht weiter verwunderlich ist, da nur wenige Macs über einen vom Benutzer zugänglichen Arbeitsspeicher verfügen. Die M1-Macs haben maximal 16 GB RAM, aber selbst die Basisversion mit 8 GB reicht für alltägliche Aufgaben aus.</p>\r\n\r\n<p>Der M1 verfügt über 16 Milliarden Transistoren, so viele wie Apple noch nie in einem Chip verbaut hat, um den schnellsten CPU-Kern in stromsparendem Silizium und eine unvergleichliche CPU-Leistung pro Watt zu erreichen. Das Chipdesign von Apple hat es ermöglicht, Macs zu entwickeln, die schneller und energieeffizienter sind als die von Intel entwickelten Chips, und weitere Verbesserungen sind durch die neue, engere Integration eines von Apple entwickelten Chips mit von Apple entwickelter Software möglich.</p>\r\n\r\n<h2>Was ist anders am M1</h2>\r\n\r\n<p>Im Gegensatz zu Intel-Chips, die auf der x86-Architektur basieren, verwendet der Apple Silicon M1 eine Arm-basierte Architektur, ähnlich wie die Chips der A-Serie, die Apple seit Jahren für iPhones und iPads entwickelt.</p>\r\n\r\n<img src=\"imgs/m1-chip-slide.jpg\" alt=\"M1 Chip desc\">\r\n\r\n<p>Der M1-Chip ist der leistungsstärkste Chip, den Apple bisher entwickelt hat. Er ähnelt dem A14-Chip in den neuesten iPhone- und iPad Air-Modellen und wird in einem 5-Nanometer-Prozess von der Taiwan Semiconductor Manufacturing Company (TSMC) hergestellt. TSMC stellt alle Chips von Apple her, und das schon seit vielen Jahren.</p>\r\n\r\n<h2>Macs mit M1-Chip</h2>\r\n\r\n<p>Apple hat das MacBook Air 2020, das 13-Zoll MacBook Pro und den Mac mini mit M1-Chips auf den Markt gebracht und damit die Low-End-Geräte in diesen Produktreihen ersetzt. Apple hat auch M1-Versionen des iMac und des iPad Pro eingeführt.</p>>\r\n\r\n<h2>CPU, GPU und Neural Engine</h2>\r\n\r\n<h3>CPU</h3>\r\n\r\n<p>Der M1-Chip enthält eine 8-Kern-CPU mit vier Hochleistungskernen und vier Hocheffizienzkernen. Die High-Performance-Cores sind so ausgelegt, dass sie die beste Leistung für stromintensive Single-Thread-Aufgaben bieten.</p>\r\n\r\n<p>Die vier Hochleistungskerne können zusammenarbeiten, um eine beeindruckende Multithreading-Leistung zu bieten, mit der die M1 Macs sogar die besten 16-Zoll MacBook Pro Modelle in den Schatten stellen.</p>\r\n\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xNNTXd85VXo\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n\r\n<p>Für Aufgaben, die weniger intensiv sind und nicht die gleiche Leistung erfordern, wie z.B. das Surfen im Internet, gibt es vier hocheffiziente Kerne, die nur ein Zehntel der Leistung verbrauchen, um die Batterie zu schonen.</p>\r\n\r\n<p>Apple sagt, dass diese Kerne eine ähnliche Leistung wie das MacBook Air der vorherigen Generation mit zwei Kernen bieten, aber mit einem viel geringeren Stromverbrauch. Diese Kerne können alleine arbeiten, wenn keine große Leistung benötigt wird, aber für anspruchsvolle Aufgaben können alle acht Kerne gleichzeitig aktiviert werden.</p>\r\n\r\n<p>Benchmark-Tests mit dem MacBook Air, MacBook Pro und Mac mini haben die beeindruckende Leistung des M1-Chips bestätigt. Es gibt einige thermische Unterschiede zwischen den Modellen, aber alle haben die höchste Single-Core-Leistung aller Macs und eine Multi-Core-Leistung, die mit Apples Desktops vergleichbar ist.</p>\r\n\r\n\r\n<p>Der leistungsstärkste Mac der Gruppe, der Mac mini, erreichte im Geekbench 5 einen Single-Core-Wert von 1702 und einen Multi-Core-Wert von 7380, während das MacBook Air und das MacBook Pro knapp dahinter lagen.</p>\r\n\r\n<h3>GPU</h3>\r\n\r\n<p>Der Apple Silicon Chip verfügt über einen 8-Kern-Grafikprozessor, aber es gibt auch eine Version, die in den Einsteigermodellen des MacBook Air verwendet wird und bei der einer der Kerne für einen 7-Kern-Grafikprozessor deaktiviert ist.</p>\r\n\r\n<p>Die GPUs im Mac mini, MacBook Pro und den höherwertigen M1 MacBook Air Modellen sind alle 8-Kern-GPUs, die fast 25.000 Threads gleichzeitig ausführen können und einen Durchsatz von 2,6 Teraflops haben. Laut Apple verfügt das M1 über den schnellsten integrierten Grafikprozessor in einem Personal Computer.</p>\r\n\r\n\r\n<p>Grafikleistungstests haben ergeben, dass der M1-Chip eine Leistung bietet, die die der GeForce GTX 1050 Ti und der Radeon RX 560 übertrifft. Außerdem erreichte er einen OpenCL-Score von 19305, ähnlich wie die Radeon RX 560X und die Radeon Pro WX 4100.</p>\r\n\r\n<h3>Neurale Engine</h3>\r\n\r\n<p>Der M1-Chip verfügt über eine eingebaute Neural Engine, eine Komponente, die Apple bereits vor einigen Jahren in seine Chips der A-Serie eingebaut hat. Die Neural Engine wurde entwickelt, um maschinelle Lernaufgaben auf dem Mac zu beschleunigen, z.B. für Videoanalyse, Spracherkennung, Bildverarbeitung und mehr.</p>\r\n\r\n<p>Die Neural Engine mit 16 Kernen ist in der Lage, 11 Billionen Operationen pro Sekunde auszuführen und bietet damit eine bis zu 15-mal schnellere Leistung beim maschinellen Lernen im Vergleich zu den Vorgängermodellen, die auf den M1 umgezogen sind.</p>\r\n\r\n<h2>Apple M1 Geschwindigkeit</h2>\r\n\r\n<p>Der M1-Chip bietet eine bis zu 3,5 Mal schnellere CPU-Leistung, eine bis zu 6 Mal schnellere GPU-Leistung und bis zu 15 Mal schnellere maschinelle Lernfähigkeiten im Vergleich zu den Intel-Chips, die in den Geräten der vorherigen Generation verwendet wurden.</p>\r\n\r\n<p>Im Vergleich zu den neuesten PC-Laptop-Chips bietet der M1 eine 2x schnellere CPU-Leistung und verbraucht dabei nur 25 Prozent des Stroms.</p>\r\n\r\n<h2>Batterielebensdauer</h2>\r\n\r\n<p>Selbst bei den unglaublichen Geschwindigkeitsverbesserungen, die der M1-Chip mit sich bringt, ist er batterieeffizienter als jeder andere Mac-Chip, den Apple bisher veröffentlicht hat.</p>\r\n\r\n<p>Die Batterielaufzeit eines M1-Macs ist bis zu zweimal länger als bei Macs der vorherigen Generation. Der Mac mit der längsten Batterielaufzeit ist das 13-Zoll MacBook Pro, das bis zu 20 Stunden durchhält. Das ist doppelt so lang wie die Batterielaufzeit des Vorgängermodells.</p>\r\n\r\n<h2>Intel-Vergleiche</h2>\r\n\r\n<p>Apple hat den M1-Chip in Macs der unteren Leistungsklasse eingesetzt, und wenn es um die CPU-Leistung geht, übertrifft der M1 sogar die Spitzenchips, die in Apples Notebook-Reihe von Intel verwendet werden. Der M1-Chip hat die schnellste Single-Core-Leistung aller Macs, und die Multi-Core-Leistung ist nicht weit von der vieler Apple-Desktop-Maschinen entfernt.</p>\r\n\r\n<p>Apple verkauft nach wie vor 13-Zoll-MacBook Pro- und Mac mini-Modelle mit Intel-Chip, und die M1-Versionen dieser Macs bieten deutlich höhere CPU-Geschwindigkeiten. Es ist keine gute Idee, eine Nicht-M1-Version des 13-Zoll-MacBook Pro oder Mac mini zu kaufen, da die Leistung geringer ist, es sei denn, die Kompatibilität mit x86-Anwendungen und die Möglichkeit, Windows auszuführen, ist ein Anliegen.</p>\r\n\r\n<p>Andere Macs in Apples Produktpalette werden in Zukunft auf Apple Silicon Chips umgestellt, was man bei der Kaufentscheidung im Hinterkopf behalten sollte. Derzeit bieten die höherwertigen Notebooks und Desktops von Apple noch eine bessere GPU-Leistung, aber das könnte sich in Zukunft ändern, wenn neue Versionen von Apple Silicon Chips auf den Markt kommen.</p>\r\n\r\n<h2>M1 Sicherheitsmerkmale</h2>\r\n\r\n<p>Intel-Macs hatten einen eingebauten T2-Chip, der für die Sicherheit und andere Funktionen der Macs zuständig war, aber bei den M1-Chips ist diese Funktionalität direkt eingebaut und ein zweiter Chip ist nicht erforderlich.</p>\r\n\r\n<p>Der M1 hat eine integrierte Secure Enclave, die Touch ID verwaltet, und einen Speichercontroller mit AES-Verschlüsselungshardware für eine schnellere und sicherere SSD-Leistung.</p>\r\n\r\n<h2>Ausführen von Apps auf M1-Macs</h2>\r\n\r\n<p>Da der M1-Chip eine andere Architektur verwendet, hat Apple Werkzeuge entwickelt, die es Entwicklern ermöglichen, Universal App-Binaries zu erstellen, die sowohl auf Apple Silicon als auch auf Intel Chips einwandfrei laufen. Außerdem wurde die Rosetta 2 Übersetzungsschicht entwickelt, die es ermöglicht, x86-Apps auf dem M1-Chip laufen zu lassen.</p>\r\n\r\n<p>Rosetta 2 ist eine Neuinterpretation von Rosetta, der Funktion, die es PowerPC-Anwendungen ermöglichte, auf Intel-basierten Macs zu laufen, als Apple 2006 von PowerPC auf Intel umstieg.</p>\r\n\r\n<p>Mit Rosetta 2 können Anwendungen, die für Intel-Maschinen entwickelt wurden, weiterhin auf M1-Macs ausgeführt werden, allerdings mit einigen begrenzten Leistungseinbußen. Im Großen und Ganzen laufen Anwendungen auf Intel- und M1-Macs aufgrund der Leistungsverbesserungen, die mit dem M1 eingeführt wurden, auf ähnliche Weise.</p>\r\n\r\n<p>Bei der Umstellung auf M1-Macs sollte alles wie gewohnt funktionieren, und im Laufe der nächsten Jahre werden die meisten beliebten Mac-Anwendungen wahrscheinlich so entwickelt, dass sie nativ auf M1-Macs laufen. Im Moment gibt es einen großen Kompromiss bei der Wahl eines M1-Macs, und das ist die Windows-Unterstützung.</p>\r\n\r\n<p>Es gibt kein Boot Camp für M1-Macs und M1-Macs sind offiziell nicht in der Lage, Windows auszuführen, obwohl einige Benutzer Wege finden, dies zu bewerkstelligen. Offizielle Unterstützung könnte in Zukunft kommen, aber das hängt größtenteils davon ab, dass Microsoft seine Arm-basierte Version von Windows für Verbraucher lizenziert, und das ist bisher nicht geschehen.</p>\r\n\r\n<p>M1 Macs können sowohl iPhone- und iPad-Apps als auch Mac-Apps ausführen, sofern die App-Entwickler sie auf dem Mac verfügbar machen. Früher gab es eine Möglichkeit, jede iOS-App auf einen M1-Mac zu laden, aber diese Funktion wurde im Januar 2021 entfernt.</p>\r\n', 'm1.jpg', '2021-07-23 11:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `desc` text NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `rrp` decimal(7,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) NOT NULL,
  `img` text NOT NULL,
  `product_keywords` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `desc`, `price`, `rrp`, `quantity`, `img`, `product_keywords`, `date_added`) VALUES
(1, 'LG - SIGNATURE Frontlader-Waschmaschine und elektrischer Trockner', '<p>Vereinfachen Sie den Wäschetag mit dieser 24-Zoll-Wasch-Trockner-Kombination von LG. Die TurboWash-Funktion verkürzt die Reinigungszeit um 20 Minuten, und die ventilationslose Technologie nutzt eine Wärmepumpe zum Trocknen der Wäsche und verbraucht dabei 50 % weniger Energie. Diese Kombination aus LG-Waschmaschine und -Trockner ist Wi-Fi-fähig, sodass Sie sie mit Ihrem Smartphone steuern können.\r\n</p>\r\n\r\n<h3>Features</h3>\r\n\r\n<ul>\r\n<li>SmartThinQ Technologie</li>\r\n<p>\r\nVerwenden Sie die LG SmartThinQ®-App, um wichtige Funktionen von überall aus zu steuern. Oder nutzen Sie die sprachgesteuerten Funktionen von Google Assistant.</p>\r\n<li>Quick Circle Benutzeroberfläche</li>\r\n<p>\r\nDie einzigartige kreisförmige LCD-Anzeige verfolgt das Nutzungsverhalten und zeigt die häufig genutzten Zyklen an.\r\n</p>\r\n<li>Großes Fassungsvermögen von 2,8 cu. ft.</li>\r\n<p>\r\nMehr Wäsche in weniger Zeit waschen. Diese Größe ist eine gute Wahl für wachsende Familien und zum Waschen sperriger Wäsche.\r\n</p>\r\n<li>17 Waschgänge</li>\r\n<p>\r\nMit 5 wählbaren Wassertemperaturkombinationen bieten sie vielseitige Reinigungsoptionen für Ihre Wäscheanforderungen.\r\n</p>\r\n<li>Fünf Schleuderdrehzahlen</li>\r\n<p>\r\nEinschließlich Extra High (max. 1.600), High, Medium, Low, No Spin, für verschiedene Arten von Waschprogrammen.\r\n</p>\r\n<li>Wählen Sie die richtige Wassertemperatur für Ihre Kleidung</li>\r\n<p>\r\nMit 5 Temperatureinstellungen können Sie sicherstellen, dass das Wasser nicht zu heiß für Ihre Textilien oder zu kalt für Ihr Waschmittel ist, um richtig zu wirken.\r\n</p>\r\n</ul>', '2999.99', '3999.99', 10, 'lgwasher.jpg', 'LG Signature Washing Machine Waschmaschine', '2019-03-13 17:55:22'),
(2, 'Samsung - Family Hub Refrigerator', '<p>\r\nDieser Samsung Family Hub Kühlschrank macht es einfacher, sich mit dem zu verbinden, was Ihnen am wichtigsten ist: Ihre Familie und Ihr Zuhause, wann und wo immer Sie wollen. Mit Family Hub können Sie die Kalender Ihrer Familie verwalten, Musik auf Spotify abspielen, Bilder teilen und direkt auf Ihrem Kühlschrank in Verbindung bleiben. Mit Family Board, einer digitalen Pinnwand, können Sie Bilder anpassen, Aufkleber hinzufügen und handschriftliche Notizen für Ihre Familie hinterlassen.\r\n</p>\r\n\r\n<h3>Funktionen</h3>\r\n\r\n<ul>\r\n<li>FlexZone-Schublade</li>\r\n<p>\r\nEine flexible Aufbewahrungsschublade mit vier verschiedenen Temperatureinstellungen und einem verstellbaren Smart Divider, um Ordnung zu halten.\r\n</p>\r\n<li>Metallkühlung</li>\r\n<p>\r\nDie Edelstahlverkleidung sorgt für eine gleichmäßige Temperatur im gesamten Kühlschrank.\r\n</p>\r\n<li>Twin Cooling Plus&#174;</li>\r\n<p>\r\nNahezu handelsübliche Luftfeuchtigkeit, verhindert Verderben und Gefrierbrand.\r\n</p>\r\n<li>Eis Max</li>\r\n<p>\r\nGroßes Fassungsvermögen, speichert bis zu 2,7 lbs. an Eis.\r\n</p>\r\n<li>Thekentiefe</li>\r\n<p>\r\nBietet ein hochwertiges, eingebautes Aussehen.\r\n</p>\r\n<li>Fingerabdruckbeständige Oberfläche</li>\r\n<p>\r\nEin spezielles Finish, das Flecken reduziert und die Reinigung minimiert.\r\n</p>\r\n</ul>', '3509.99', '0.00', 2, 'samsungfridge.jpg', 'Samsung Family Hub Fridge Refrigerator Kühlschrank', '2021-04-01 12:00:00'),
(3, 'Sonos - Arc Soundbar', '<p>Verwandeln Sie Ihr Musik- oder Fernseherlebnis mit dieser Sonos Arc Premium Smart Soundbar. Der 3D-Sound in Verbindung mit Dolby Atmos sorgt für eine beeindruckende Audioausgabe, während sich die Trueplay-Tuning-Technologie für eine präzise Lokalisierung an die Raumakustik anpasst. Diese flache Sonos Arc Premium Smart Soundbar verfügt über 11 Hochleistungstreiber und elliptische Tieftöner für kraftvolle, satte Bässe, und die Sprachsteuerungsunterstützung bietet eine mühelose Steuerung.\r\n</p>\r\n\r\n<h3>Merkmale</h3>\r\n\r\n<ul>\r\n<li>Eintauchen in die Musik</li>\r\n<p>\r\nTauchen Sie ein in die Musik\r\nStreamen Sie Musik, Radio, Podcasts und mehr von Ihren Lieblingsdiensten mit der Sonos App oder Apple AirPlay 2, wenn der Fernseher ausgeschaltet ist.\r\n</p>\r\n<li>Sprachsteuerung</li>\r\n<p>\r\nDer Google Assistant und Amazon Alexa sind bereits integriert, sodass Sie Musik abspielen, Nachrichten abrufen, Wecker stellen, Fragen beantworten lassen und vieles mehr können - ganz ohne Hände.\r\n</p>\r\n<li>Stummschalten für mehr Privatsphäre</li>\r\n<p>\r\nSchalte das Mikrofon mit einem Fingertipp aus. Die LED-Leuchte ist fest verdrahtet und schaltet sich ebenfalls aus, damit du weißt, dass dein Sprachassistent nicht zuhört.\r\n</p>\r\n<li>Erweitern Sie Ihr Soundsystem</li>\r\n<p>\r\nWenn du bereit bist, kannst du weitere Sonos-Lautsprecher kabellos anschließen und in mehreren Räumen hören.\r\n</p>\r\n<li>Baue dein Heimkino aus</li>\r\n<p>\r\nVerbinde drahtlos den Sonos Sub und ein Paar One SL Rear-Lautsprecher (separat erhältlich) für ein noch intensiveres Hörerlebnis.\r\n</p>\r\n<li>Wi-Fi</li>\r\n<p>\r\nStreamen Sie über Ihr Wi-Fi-Netzwerk, und schließen Sie weitere Sonos-Lautsprecher drahtlos an, um Ihr Soundsystem zu erweitern.\r\n</p>\r\n</ul>', '799.99', '950.00', 23, 'sonosarc.jpg', 'Sonos Arc Soundbar', '2021-05-14 18:47:56'),
(4, 'Apple - MacBook Pro - 16\"', '<p>Erweitern Sie Ihre Sicht auf alles auf dem MacBook Pro dank des größeren 16\" Retina Displays mit schärferer Pixelauflösung und Unterstützung für Millionen von Farben. Nutzen Sie die Leistung von 8-Kern-Prozessoren und AMD Radeon Pro 5000M-Grafikprozessoren mit 4 GB GDDR6-Speicher und einer optimierten thermischen Architektur für eine bahnbrechende Leistung. Ausgestattet mit 16 GB Arbeitsspeicher und 1 TB Speicherplatz. Touch ID und die Touch Bar. Und eine ganztägige Akkulaufzeit. Das MacBook Pro wurde für Profis entwickelt, die Leistung über alles stellen, und gibt Ihnen die Power, alles zu erreichen - überall.\r\n</p>\r\n\r\n<h3>Features</h3>\r\n<ul>\r\n<li>\r\n8-Kern Intel Core i9 Prozessor der neunten Generation</li>\r\n<p>\r\nIntel Core i9-9900K Prozessor (bis zu 5,00 GHz mit Intel Turbo Boost Technology 2.0, 16 MB Intel Cache).\r\nDie 9. Generation der Intel Core Prozessoren setzt neue Maßstäbe für die Leistung von Mainstream-Desktop-PCs. An der Spitze der Produktlinie steht unser Mainstream-Topmodell i9-9900K, der erste Intel Core i9-Desktop-Prozessor für die große Mehrheit der Computernutzer.\r\n</p>\r\n<li>Atemberaubendes 16\" Retina Display mit True Tone Technologie\r\n</li>\r\n<p>\r\nFür eine naturgetreue Bilddarstellung müssen extrem helle Bereiche des Bildschirms direkt neben extrem dunklen Bereichen liegen. Ohne eine präzise Steuerung der Hintergrundbeleuchtung kann dies zu einem unbeabsichtigten Glühen führen, das als Blooming bezeichnet wird. Ratina Display ist in der Lage, Blooming durch fortschrittliche LED-Technologie, Lichtformung und intelligente Bildverarbeitung drastisch zu reduzieren.\r\n</p>\r\n<li>Touch Bar und Touch ID</li>\r\n<p>\r\nDie Touch Bar stellt leistungsstarke Shortcuts in den Vordergrund, und Touch ID sorgt für eine schnelle Authentifizierung. Eine spezielle Escape-Taste ermöglicht den schnellen Wechsel zwischen Modi und Ansichten. Und die Pfeiltasten mit umgekehrtem T ermöglichen eine flüssige Navigation, egal ob du durch Codezeilen fliegst, in Tabellenkalkulationen navigierst oder spielst.\r\n</p>\r\n<li>AMD Radeon Pro 5500M Grafik mit GDDR6 Speicher</li>\r\n<p>\r\nDie AMD Radeon Pro 5000M Serie bietet die größte Grafikleistung, die je in einem MacBook Pro verbaut wurde. Das 16-Zoll MacBook Pro Basismodell ist mehr als doppelt so schnell wie das Basismodell der vorherigen Generation und ermöglicht so eine nahtlose Wiedergabe und ein schnelleres Rendering von Ultra-High-Definition Videos.\r\n</p>\r\n<li>Ultraschnelle SSD</li>\r\n<p>\r\nDas 16\" MacBook Pro hat bis zu 8 TB SSD-Speicher - den größten, der in einem Notebook verfügbar ist. So können Sie Ihre Foto- und Videobibliotheken überallhin mitnehmen, egal wohin Sie gehen. Und dank der superschnellen Geschwindigkeit werden große Dateien im Handumdrehen geladen und Profi-Apps blitzschnell gestartet.\r\n</p>\r\n<li>Vier Thunderbolt 3 (USB-C) Anschlüsse</li>\r\n<p>\r\nThunderbolt 3 kombiniert eine extrem hohe Bandbreite mit der extremen Vielseitigkeit des USB-C-Industriestandards und schafft so einen hochmodernen Universalanschluss. Er integriert Datenübertragung, Aufladen und Videoausgabe in einem einzigen Anschluss und liefert einen Durchsatz von bis zu 40 Gb/s, was der doppelten Bandbreite von Thunderbolt 2 entspricht.\r\n</p>\r\n</ul>', '2799.99', '3999.99', 7, 'macbook.jpg', 'Apple MacBook Pro 16 16Inch 16Zoll', '2021-06-23 17:42:04'),
(6, 'LG - OLED C1 Serie - 55\"', '<p>OLED auf höchstem Niveau. Vom großen Spiel bis zur Teilnahme am Spiel - kein Detail bleibt unbemerkt. Mit fortschrittlicher Gaming-Technologie wie NVIDIA G-SYNC kannst du die Konkurrenz ausstechen. Selbstleuchtende Pixel emittieren ihr eigenes Licht für perfektes Schwarz, intensive Farben und atemberaubende Bilder - gepaart mit unserem besten Prozessor für noch bessere Bildqualität. Nur bei OLED.\r\n</p>\r\n<h3>Merkmale</h3>\r\n<ul>\r\n<li>Selbstleuchtende Pixel</li>\r\n<p>\r\n\r\nSehen Sie, wie Ihre Inhalte in über 8 Millionen Pixeln zum Leben erwachen. Jedes Pixel schaltet sich unabhängig ein und aus, so dass Sie Ihre Inhalte mit perfektem Schwarz, über einer Milliarde satter Farben und unendlichem Kontrast sehen können - ein unvergleichliches Seherlebnis.\r\n</p>\r\n<li> Perfektes Schwarz</li>\r\n<p>\r\nPerfektes Schwarz ist ein Hintergrund, der Farben zum Strahlen bringt und für abgedunkelte Details sorgt - von nächtlichen Kampfszenen bis hin zu dramatischen Dialogen bei Kerzenlicht. Perfektes Schwarz, nuancierte Schatten, extreme Details - das kann kein LED/LCD-Fernseher leisten.\r\n</p>\r\n<li>Unendlicher Kontrast</li>\r\n<p>\r\nSo einen unendlichen Kontrast haben Sie noch nie gesehen. Perfektes Schwarz macht es möglich. Die Szenen wirken natürlicher. Alles, was Sie sehen, wird klar und deutlich. Es ist ein kleines Detail, das bei Filmen, Serien, Sport und Spielen einen großen Unterschied macht.\r\n</p>\r\n<li>Einwandfreies Gameplay</li>\r\n<p>\r\nKompatibel mit NVIDIA G-SYNC und FreeSync Premium für Echtzeit-Action und praktisch kein Tearing. Der Game Optimizer erleichtert den Zugriff auf Ihre Spieleinstellungen, der neueste HDMI-Anschluss ermöglicht schnelle Spielgeschwindigkeiten. Mit Auto Low-Latency Mode und HGiG erhalten Sie einen geringen Input Lag und schnelle Reaktionszeiten.\r\n</p>\r\n<li>HDMI 2.1 Technologie</li>\r\n<p>\r\nLG OLED-Fernseher ermöglichen ein lebensechteres Spielerlebnis mit schnell bewegten Inhalten in höherer Auflösung und flüssiger, synchronisierter Grafik dank der neuesten HDMI 2.1-Technologie.\r\n</p>\r\n<li>Google Assistant & Alexa integriert</li>\r\n<p>\r\nLG OLED-Fernseher verfügen über einen integrierten Google Assistant und Alexa. Sie brauchen kein zusätzliches Gerät - fragen Sie einfach Ihren Fernseher nach Musik, Wetter, Nachrichten und mehr. Außerdem können Sie Ihr vernetztes Zuhause und Ihre intelligenten Geräte bequem steuern.\r\n</p>\r\n</ul>', '1399.99', '1999.99', 10, 'lgtv.jpg', 'LG OLED C1 55 55-Inch 55-Zoll TV Fernseher', '2021-06-23 17:55:22'),
(7, 'Sony - PlayStation 5', '<p>\r\nErforsche unbekannte virtuelle Territorien und töte Drachen mit dieser eleganten Sony PlayStation 5 Spielekonsole. Die 825-GB-SSD ermöglicht ultraschnelle Ladezeiten, während die 3D-Audioausgabe für eine klare Akustik sorgt. Diese Sony PlayStation 5 Spielekonsole unterstützt haptisches Feedback für mühelose Kommunikation in Multiplayer-Konfigurationen, und adaptive Trigger ermöglichen immersives Gameplay.\r\n</p>\r\n<h3>Features</h3>\r\n<ul>\r\n<li>Integrierte E/A</li>\r\n<p>Die maßgeschneiderte Integration der Systeme der PS5-Konsole ermöglicht es Entwicklern, Daten so schnell von der SSD abzurufen, dass sie Spiele auf eine Weise entwickeln können, die nie zuvor möglich war.</p>\r\n<li>Atemberaubende Spiele</li>\r\n<p>Bewundern Sie unglaubliche Grafiken und erleben Sie neue PS5-Funktionen.</p>\r\n<li>Ultra-Hochgeschwindigkeits-SSD</li>\r\n<p>Maximieren Sie Ihre Spielsitzungen mit nahezu sofortigen Ladezeiten für installierte PS5-Spiele.\r\n</p>\r\n<li>HDR-Technologie</li>\r\n<p>Mit einem HDR-Fernseher zeigen unterstützte PS5-Spiele eine unglaublich lebendige und lebensechte Farbpalette an.</p>\r\n</ul>', '499.99', '0.00', 10, 'ps5.jpg', 'SONY PlayStation 5', '2021-06-23 17:55:22'),
(8, 'Apple - AirPods Pro', '<p>\r\nAktive Geräuschunterdrückung für immersiven Klang. Transparenzmodus zum Hören und Verbinden mit der Welt um Sie herum. Besser anpassbare Passform für ganztägigen Komfort. Schweiß- und wasserabweisend. Und das alles in einem superleichten In-Ear-Kopfhörer, der sich ganz einfach mit all deinen Apple-Geräten einrichten lässt.\r\n</p>\r\n\r\n<h3>Merkmale</h3>\r\n\r\n<ul>\r\n<li>Aktive Geräuschunterdrückung</li>\r\n<p>\r\nDie AirPods Pro sind die einzigen In-Ear-Kopfhörer mit aktiver Geräuschunterdrückung, die sich kontinuierlich an die Geometrie deines Ohrs und den Sitz der Ohrstöpsel anpasst - und so die Welt ausblendet, damit du dich auf das konzentrieren kannst, was du gerade hörst.\r\n</p>\r\n<li>Audioqualität</li>\r\n<p>\r\nGenieße überragende Klangqualität mit Adaptive EQ, der die Musik automatisch auf die Form deines Ohrs abstimmt und so für ein sattes, konsistentes Hörerlebnis sorgt.\r\n</p>\r\n<li>H1-Chip</li>\r\n<p>\r\nDer von Apple entwickelte H1-Chip verfügt über 10 Audiokerne, die für eine unglaublich niedrige Latenz bei der Audioverarbeitung sorgen und eine Rauschunterdrückung in Echtzeit ermöglichen.\r\n</p>\r\n<li>Kabellos aufladen</li>\r\n<p>\r\nDas Wireless Charging Case bietet mehr als 24 Stunden Akkulaufzeit und ist mit Qi-zertifizierten Ladegeräten kompatibel. Wenn die Batterie leer ist, senden die AirPods Pro eine Benachrichtigung an das iPhone, dass es Zeit ist, sie aufzuladen.\r\n</p>\r\n<li>Entworfen, um mit dir Schritt zu halten</li>\r\n<p>\r\nDie AirPods Pro sind schweiß- und wasserabweisend und verfügen über einen erweiterten Mesh-Mikrofonanschluss, der die Verständlichkeit von Anrufen in windigen Situationen verbessert.\r\n</p>\r\n</ul>', '239.99', '289.99', 23, 'airpods.jpg', 'Apple AirPods Pro', '2021-05-14 18:47:56'),
(9, 'Apple - 12.9-Inch iPad Pro', '<p>\r\nDas iPad Pro ist mit dem leistungsstarken Apple M1 Chip ausgestattet, der für erstklassige Leistung und eine ganztägige Batterielaufzeit sorgt. Ein beeindruckendes 12,9\" Liquid Retina XDR Display zum Betrachten und Bearbeiten von HDR-Fotos und Videos. Die Frontkamera mit Center Stage hält dich bei Videogesprächen automatisch im Bild. Das iPad Pro hat Profikameras und einen LiDAR-Scanner für beeindruckende Fotos, Videos und immersive AR. Thunderbolt für die Verbindung mit leistungsstarkem Zubehör. Außerdem kannst du den Apple Pencil zum Notieren, Zeichnen und Markieren von Dokumenten und das Magic Keyboard für ein reaktionsschnelles Tipperlebnis und Trackpad hinzufügen.\r\n</p>\r\n\r\n<h3>Features</h3>\r\n<ul>\r\n<li>M1-Chip</li>\r\n<p>\r\nMit M1 ist das iPad Pro das schnellste Gerät seiner Art. Es ist so konzipiert, dass es die Leistung der nächsten Generation und maßgeschneiderte Technologien wie den fortschrittlichen Bildsignalprozessor und die einheitliche Speicherarchitektur von M1 voll ausnutzt. Und dank der unglaublichen Energieeffizienz von M1 ist das iPad Pro immer noch dünn und leicht und hat eine ganztägige Batterielaufzeit, so dass es ebenso tragbar wie leistungsstark ist.\r\n</p>\r\n<li>Liquid Retina XDR-Display</li>\r\n<p>\r\nDas Liquid Retina XDR Display liefert lebensechte Details mit einem Kontrastverhältnis von 1.000.000:1 - ideal zum Betrachten und Bearbeiten von HDR-Fotos und -Videos oder zum Genießen deiner Lieblingsfilme und Fernsehsendungen. Außerdem bietet es eine atemberaubende Helligkeit von 1000 nits im Vollbildmodus und 1600 nits in der Spitzenhelligkeit. Und fortschrittliche Display-Technologien wie P3 Wide Color, True Tone und ProMotion.\r\n</p>\r\n<li>5G und Wi-Fi</li>\r\n<p>\r\nDas iPad war schon immer einzigartig mobil mit superschnellen Wi-Fi- und Mobilfunkoptionen. Mit den 5G-Funktionen kannst du dich jetzt mit den schnellsten Funknetzwerken verbinden, wenn du unterwegs Dateien herunterladen, Filme streamen, mit Kollegen zusammenarbeiten und Inhalte hochladen willst. Und das iPad Pro hat die meisten 5G-Bänder aller Geräte seiner Art - so kann es 5G an mehr Orten nutzen.\r\n</p>\r\n<li>Ultraweitwinkelkamera</li>\r\n<p>\r\nDas iPad Pro hat eine neue Ultra-Weitwinkel-Kamera mit einem 12-MP-Sensor und einem Sichtfeld von 122 Grad, die perfekt für FaceTime und die neue Center Stage Funktion ist. Sie ist auch ideal für epische Selfies im Porträtmodus. Und sie arbeitet mit der TrueDepth Kamera zusammen, um das iPad Pro mit Face ID sicher zu entsperren.\r\n</p>\r\n<li>Thunderbolt</li>\r\n<p>\r\nMit Thunderbolt ist dies der schnellste und vielseitigste Anschluss, den es je am iPad gab. Er funktioniert mit bestehenden USB-C-Anschlüssen und eröffnet ein umfangreiches Ökosystem an Hochleistungszubehör für das iPad Pro - wie schnelle externe Speicher, Displays und Docks. Übertrage große Datenmengen oder betreibe das Pro Display XDR mit voller 6K-Auflösung.\r\n</p>\r\n<li>Pro-Zubehör</li>\r\n<p>\r\nApple Pencil, Magic Keyboard und das Smart Keyboard Folio eröffnen dir noch mehr Möglichkeiten, das iPad Pro zu nutzen. Zeichne ein Meisterwerk, mach dir Notizen oder schreibe einen Geschäftsplan. Dieses vielseitige Zubehör bringt deine Arbeit und Kreativität auf die nächste Stufe.\r\n</p>\r\n</ul>', '1099.99', '1399.99', 7, 'ipadpro.jpg', 'Apple iPad Pro 12.9 12.9-Inch 12.9-Zoll', '2021-06-23 17:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `address`) VALUES
(7, 'shion12', 'shion@gmail.com', '7db6c189ad14a873d668bd402205e8f7', 'Chicago Lane 7a'),
(14, 'MemoLoran', 'memotuku@hotmail.com', 'd0aabe9a362cb2712ee90e04810902f3', 'Windmuehlenstr.44');

-- --------------------------------------------------------

--
-- Table structure for table `users_items`
--

CREATE TABLE `users_items` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `item_quantity` int(100) NOT NULL,
  `status` enum('Added to cart','Confirmed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_items`
--

INSERT INTO `users_items` (`id`, `user_id`, `item`, `item_quantity`, `status`) VALUES
(111, 'shion12', 'Sony - PlayStation 5', 1, 'Confirmed'),
(112, 'shion12', 'Apple - 12.9-Inch iPad Pro', 1, 'Confirmed'),
(113, 'shion12', 'Sonos - Arc Soundbar', 3, 'Confirmed'),
(114, 'shion12', 'LG - OLED C1 Series - 55\"', 2, 'Confirmed'),
(117, 'shion12', 'Apple - MacBook Pro - 16\"', 1, 'Confirmed'),
(120, 'MemoLoran', 'Sony - PlayStation 5', 1, 'Confirmed'),
(121, 'MemoLoran', 'Apple - AirPods Pro', 1, 'Confirmed'),
(123, 'shion12', 'LG - OLED C1 Series - 55\"', 2, 'Confirmed'),
(146, 'shion12', 'LG - SIGNATURE Front-Load Washer and Electric Dryer', 1, 'Confirmed'),
(189, 'shion12', 'Samsung - Family Hub Refrigerator', 1, 'Confirmed'),
(190, 'shion12', 'Apple - 12.9-Inch iPad Pro', 2, 'Confirmed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordersummary`
--
ALTER TABLE `ordersummary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_items`
--
ALTER TABLE `users_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`item`),
  ADD KEY `item_id` (`item`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ordersummary`
--
ALTER TABLE `ordersummary`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users_items`
--
ALTER TABLE `users_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
