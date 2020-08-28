import UIKit

enum CurrencyUnit {
    case rouble
    case euro
}
var RubleUnit = CurrencyUnit.euro
var OtherUnit: CurrencyUnit = .euro

enum AdvancedCurrencyUnit {
    enum DollarCountries {
        case usa
        case canada
        case australia
    }
    case rouble(countries:[String], shortName:String)
    case euro(countries:[String], shortName:String)
    case dollar(nation:DollarCountries, shortName:String)
}

var euroCurrency: AdvancedCurrencyUnit = .euro(countries:["German","France"], shortName:"EUR")
var dollarCurrency: AdvancedCurrencyUnit = .dollar(nation: .usa, shortName:"USD")
var australia: AdvancedCurrencyUnit.DollarCountries = .australia

switch dollarCurrency {
case .rouble:
        print("Рубль")
case let .euro(countries, shortName):
    print("Евро.Страны:\(countries). Краткое наименование:\(shortName)")
case .dollar(nation: let nation, shortName: let shortName):
    print("Доллар \(nation). Краткое наименование:\(shortName)")
}

enum Smile: String {
    case joy = ":)"
    case laugh = ":D"
    case sorrow = ":("
    case surprise = "o_O"
    var description: String{return self.rawValue}
    func about(){
        print("Перечисление содержит список смайлов")
    }
}

var iAmHappy = Smile.joy
iAmHappy.rawValue

var mySmile: Smile = .sorrow
mySmile.description

var otherSmile: Smile = .joy
otherSmile.about()


