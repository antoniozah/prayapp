//
//  PrayData.swift
//  Prosefchitarion
//
//  Created by antonioszachos on 2/4/25.
//

struct PrayData {
    var prays: [Pray] = []
    var prayCategories: [PrayCategory] = []
    
    init() {
        setPrays()
    }
    
    private mutating func setPrayCategories() {
        prayCategories = [
            PrayCategory(name: "Προσευχές", type: .pray),
            PrayCategory(name: "Ακολουθίες", type: .service),
            PrayCategory(name: "Απολυτήκια", type: .hymn)
        ]
    }
    
    private mutating func setPrays() {
        prays = [
            Pray(name: "Πρωϊνή Προσευχή", category: .pray, time: 5, period: [.daily], sections: [
                PraySection(sectionTitle: ""
                            , sectionColor: .red, prayElement: [
                                PrayElement(prayKind: "", prayActor: "", prayHeading: "", prayPrefix: [], praySuffix: [], prayText: "Δι' ευχών των Αγίων Πατέρων ημών, Κύριε Ιησού Χριστέ ο Θεός ημών, ελέησον ημάς. Αμήν."),
                                PrayElement(prayKind: "", prayActor: "", prayHeading: "", prayPrefix: [], praySuffix: [], prayText: "Δόξα Σοι, ο Θεός ημών, δόξα Σοι."),
                                PrayElement(prayKind: "", prayActor: "", prayHeading: "", prayPrefix: [], praySuffix: [], prayText: "Βασιλεύ Ουράνιε, Παράκλητε, το Πνεύμα της Αληθείας, ο πανταχού παρών και τα πάντα πληρών, ο θησαυρός των αγαθών και ζωής χορηγός, ελθέ και σκήνωσον εν ημίν, και καθάρισον ημάς από πάσης κηλίδος, και σώσον, Αγαθέ, τας ψυχάς ημών."),
                                PrayElement(prayKind: "", prayActor: "", prayHeading: "(Το Τρισάγιον)", prayPrefix: [], praySuffix: ["(Τρις)"], prayText: "Αγιος ο Θεός, Αγιος Ισχυρός, Αγιος Αθάνατος, ελέησον ημάς."),
                                PrayElement(prayKind: "", prayActor: "", prayHeading: "", prayPrefix: [], praySuffix: [], prayText: "Δόξα Πατρί και Υιώ και Αγίω Πνεύματι, και νυν, και αεί, και εις τους αιώνας των αιώνων. Αμήν."),
                                PrayElement(prayKind: "", prayActor: "", prayHeading: "", prayPrefix: [], praySuffix: [], prayText: "Παναγία Τριάς, ελέησον ημάς. Κύριε ιλάσθητι ταις αμαρτίαις ημών, Δέσποτα, συγχώρησον τας ανομίας ημίν, Αγιε επίσκεψαι και ίασαι τας ασθαινείας ημών, ένεκεν του ονόματός Σου. Κύριε, ελέησον. Κύριε, ελέησον. Κύριε, ελέησον."),
                                PrayElement(prayKind: "", prayActor: "", prayHeading: "", prayPrefix: [], praySuffix: [], prayText: "Δόξα Πατρί και Υιώ και Αγίω Πνεύματι, και νυν, και αεί, και εις τους αιώνας των αιώνων. Αμήν."),
                                PrayElement(prayKind: "", prayActor: "", prayHeading: "", prayPrefix: [], praySuffix: [], prayText: "Πάτερ ημών ο εν τοις ουρανοίς, αγιασθήτω το όνομά Σου, ελθέτω η Βασιλεία Σου, γεννηθήτω το θέλημά Σου ως εν ουρανώ και επί της γης. Τον άρτον ημών τον επιούσιον δος ημίν σήμερον, και άφες ημίν τα οφειλήματα ημών, ως και ημείς αφίεμεν τοις οφειλέταις ημών. Και μη εισενέγκης ημάς εις πειρασμόν, αλλά ρύσαι ημάς από του πονηρού.")]),
            ])
        ]
        
    }
}
