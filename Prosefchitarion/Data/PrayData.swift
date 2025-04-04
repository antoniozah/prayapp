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
        setPrayCategories()
        setPrays()
    }
    
    private mutating func setPrayCategories() {
        prayCategories = [
            PrayCategory(id: 1, name: "Προσευχές"),
            PrayCategory(id: 2, name: "Ακολουθίες"),
            PrayCategory(id: 3, name: "Απολυτίκια Αγίων"),
            PrayCategory(id: 4, name: "Ευχές")
        ]
    }
    
    private mutating func setPrays() {
        prays = [
            Pray(name: "Πρωϊνή Προσευχή", categoryName: "Προσευχές", categoryId: 1, type: .pray, time: 5, period: [.daily], sections: [
                PraySection(sectionTitle: ""
                            , sectionColor: .red, prayElement: [
                                PrayElement(prayKind: "", prayActor: "", prayHeading: "", prayPrefix: [], praySuffix: [], prayText: "Δι' ευχών των Αγίων Πατέρων ημών, Κύριε Ιησού Χριστέ ο Θεός ημών, ελέησον ημάς. Αμήν."),
                                PrayElement(prayKind: "", prayActor: "", prayHeading: "", prayPrefix: [], praySuffix: [], prayText: "Δόξα Σοι, ο Θεός ημών, δόξα Σοι."),
                                PrayElement(prayKind: "", prayActor: "", prayHeading: "", prayPrefix: [], praySuffix: [], prayText: "Βασιλεύ Ουράνιε, Παράκλητε, το Πνεύμα της Αληθείας, ο πανταχού παρών και τα πάντα πληρών, ο θησαυρός των αγαθών και ζωής χορηγός, ελθέ και σκήνωσον εν ημίν, και καθάρισον ημάς από πάσης κηλίδος, και σώσον, Αγαθέ, τας ψυχάς ημών."),
                                PrayElement(prayKind: "", prayActor: "", prayHeading: "(Το Τρισάγιον)", prayPrefix: [], praySuffix: ["(Τρις)"], prayText: "Αγιος ο Θεός, Αγιος Ισχυρός, Αγιος Αθάνατος, ελέησον ημάς."),
                                PrayElement(prayKind: "", prayActor: "", prayHeading: "", prayPrefix: [], praySuffix: [], prayText: "Δόξα Πατρί και Υιώ και Αγίω Πνεύματι, και νυν, και αεί, και εις τους αιώνας των αιώνων. Αμήν."),
                                PrayElement(prayKind: "", prayActor: "", prayHeading: "", prayPrefix: [], praySuffix: [], prayText: "Παναγία Τριάς, ελέησον ημάς. Κύριε ιλάσθητι ταις αμαρτίαις ημών, Δέσποτα, συγχώρησον τας ανομίας ημίν, Αγιε επίσκεψαι και ίασαι τας ασθαινείας ημών, ένεκεν του ονόματός Σου. Κύριε, ελέησον. Κύριε, ελέησον. Κύριε, ελέησον."),
                                PrayElement(prayKind: "", prayActor: "", prayHeading: "", prayPrefix: [], praySuffix: [], prayText: "Δόξα Πατρί και Υιώ και Αγίω Πνεύματι, και νυν, και αεί, και εις τους αιώνας των αιώνων. Αμήν."),
                                PrayElement(prayKind: "", prayActor: "", prayHeading: "", prayPrefix: [], praySuffix: [], prayText: "Πάτερ ημών ο εν τοις ουρανοίς, αγιασθήτω το όνομά Σου, ελθέτω η Βασιλεία Σου, γεννηθήτω το θέλημά Σου ως εν ουρανώ και επί της γης. Τον άρτον ημών τον επιούσιον δος ημίν σήμερον, και άφες ημίν τα οφειλήματα ημών, ως και ημείς αφίεμεν τοις οφειλέταις ημών. Και μη εισενέγκης ημάς εις πειρασμόν, αλλά ρύσαι ημάς από του πονηρού."),
                                PrayElement(prayKind: "", prayActor: "", prayHeading: "(Μετά τα παρόντα τριαδικά)", prayPrefix: [], praySuffix: [], prayText: "Εξεγερθέντες του ύπνου προσπίπτομέν Σοι, Αγαθέ, και τον Αγγέλων τον ύμνον βοώμεν Σοι, Δυνατέ. Αγιος, Αγιος, Αγιος ει ο Θεός, δια της Θεοτόκου ελέησον ημάς."),
                                PrayElement(prayKind: "", prayActor: "", prayHeading: "", prayPrefix: [], praySuffix: [], prayText: "Δόξα Πατρί και Υιώ και Αγίω Πνεύματι."),
                                PrayElement(prayKind: "", prayActor: "", prayHeading: "", prayPrefix: [], praySuffix: [], prayText: "Της κλίνης και του ύπνου εξεγείρας με, Κύριε, τον νουν μου φώτισον, και την καρδίαν και τα χείλη μου άνοιξον, εις το υμνείν Σε, Αγία Τριάς. Αγιος, Αγιος, Αγιος ει ο Θεός, δια της Θεοτόκου ελέησον ημάς."),
                                PrayElement(prayKind: "", prayActor: "", prayHeading: "", prayPrefix: [], praySuffix: [], prayText: "Και νυν, και αεί, και εις τους αιώνας των αιώνων. Αμήν."),
                                PrayElement(prayKind: "", prayActor: "", prayHeading: "", prayPrefix: [], praySuffix: [], prayText: "Αθρόον ο Κριτής επελεύσεται, και εκάστου αι πράξεις γυμνωθήσονται. Αλλά φόβω κράξομεν εν τω μέσω της νυκτός. Αγιος, Αγιος, Αγιος ει ο Θεός, δια της Θεοτόκου ελέησον ημάς."),
                                PrayElement(prayKind: "", prayActor: "", prayHeading: "", prayPrefix: [], praySuffix: [], prayText: "Κύριε, ελέησον ιβ' (12)."),
                                PrayElement(prayKind: "(Ευχαριστήριες ευχές)", prayActor: "", prayHeading: "", prayPrefix: [], praySuffix: [], prayText: "Εκ του ύπνου εξανιστάμενος, ευχαριστώ Σοι, Αγία Τριάς, ότι δια την πολλήν Σου αγαθότητα και μακροθυμίαν, ουκ ωργίσθης εμοί τω ραθύμω και αμαρτωλώ, ουδέ συναπώλεσάς με ταις ανομίαις μου, αλλ' εφιλανθρωπεύσω συνήθως και προς απόγνωσιν κείμενον ήγειράς με, εις το ορθρίσαι και δοξολογήσαι το κράτος Σου. Και νυν φώτισόν μου τα όμματα της διανοίας, άνοιξόν μου το στόμα, του μελετάν τα λόγιά Σου, και συνιέναι ταις εντολαίς Σου, και ποιείν το θέλημά Σου, και ψάλλειν Σοι εν εξομολογήσει καρδίας, και ανυμνείν το πανάγιον όνομά Σου, του Πατρός και του Υιού και του Αγίου Πνεύματος, νυν, και αεί, και εις τους αιώνας των αιώνων. Αμήν."),
                                PrayElement(prayKind: "", prayActor: "", prayHeading: "", prayPrefix: [], praySuffix: [], prayText: "Δόξα Σοι, Βασιλεύ, Θεέ Παντοκράτορ, ότι τη θεία Σου και φιλανρώπω προνοία ηξίωσάς με τον αμαρτωλόν και ανάξιον εξ ύπνου αναστήναι και τυχείν της εισόδου του αγίου Σου οίκου. Δέξαι Κύριε, και την φωνήν της δεήσεώς μου, ως των Αγίων και νοερών Σου δυνάμεων, και ευδόκησον εν καρδία καθαρά και πνεύματι ταπεινώσεως, προσενεχθήναι Σοι την εκ των ρυπαρών χειλέων μου αίνεσιν. Όπως καγώ κοινωνός γένωμαι των φρονίμων παρθένων, εν φαιδρά λαμπηδόνι της ψυχής μου, και δοξάζω Σε, τον εν Πατρί και Πνεύματι δοξαζόμενον Θεόν Λόγον. Αμήν."),
                                PrayElement(prayKind: "", prayActor: "", prayHeading: "", prayPrefix: [], praySuffix: [], prayText: "Δι' ευχών των Αγίων Πατέρων ημών, Κύριε Ιησού Χριστέ ο Θεός ημών, ελέησον ημάς. Αμήν."),
                            ]),
                
            ])
        ]
        
    }
}
