

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: CurrencyExchangeItem
        Used By: Configuration
    */

    class CurrencyExchangeItem: Codable {
        
        
        public var currencyCode: String
        
        public var name: String
        
        public var rate: Double
        
        public var countryCode: String
        
        public var countryName: String
        
        public var subunit: String
        
        public var decimalDigits: Int
        
        public var symbol: String
        

        public enum CodingKeys: String, CodingKey {
            
            case currencyCode = "currency_code"
            
            case name = "name"
            
            case rate = "rate"
            
            case countryCode = "country_code"
            
            case countryName = "country_name"
            
            case subunit = "subunit"
            
            case decimalDigits = "decimal_digits"
            
            case symbol = "symbol"
            
        }

        public init(countryCode: String, countryName: String, currencyCode: String, decimalDigits: Int, name: String, rate: Double, subunit: String, symbol: String) {
            
            self.currencyCode = currencyCode
            
            self.name = name
            
            self.rate = rate
            
            self.countryCode = countryCode
            
            self.countryName = countryName
            
            self.subunit = subunit
            
            self.decimalDigits = decimalDigits
            
            self.symbol = symbol
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                rate = try container.decode(Double.self, forKey: .rate)
                
            
            
            
                countryCode = try container.decode(String.self, forKey: .countryCode)
                
            
            
            
                countryName = try container.decode(String.self, forKey: .countryName)
                
            
            
            
                subunit = try container.decode(String.self, forKey: .subunit)
                
            
            
            
                decimalDigits = try container.decode(Int.self, forKey: .decimalDigits)
                
            
            
            
                symbol = try container.decode(String.self, forKey: .symbol)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(rate, forKey: .rate)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(countryName, forKey: .countryName)
            
            
            
            
            try? container.encodeIfPresent(subunit, forKey: .subunit)
            
            
            
            
            try? container.encodeIfPresent(decimalDigits, forKey: .decimalDigits)
            
            
            
            
            try? container.encodeIfPresent(symbol, forKey: .symbol)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: CurrencyExchangeItem
        Used By: Configuration
    */

    class CurrencyExchangeItem: Codable {
        
        
        public var currencyCode: String
        
        public var name: String
        
        public var rate: Double
        
        public var countryCode: String
        
        public var countryName: String
        
        public var subunit: String
        
        public var decimalDigits: Int
        
        public var symbol: String
        

        public enum CodingKeys: String, CodingKey {
            
            case currencyCode = "currency_code"
            
            case name = "name"
            
            case rate = "rate"
            
            case countryCode = "country_code"
            
            case countryName = "country_name"
            
            case subunit = "subunit"
            
            case decimalDigits = "decimal_digits"
            
            case symbol = "symbol"
            
        }

        public init(countryCode: String, countryName: String, currencyCode: String, decimalDigits: Int, name: String, rate: Double, subunit: String, symbol: String) {
            
            self.currencyCode = currencyCode
            
            self.name = name
            
            self.rate = rate
            
            self.countryCode = countryCode
            
            self.countryName = countryName
            
            self.subunit = subunit
            
            self.decimalDigits = decimalDigits
            
            self.symbol = symbol
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                rate = try container.decode(Double.self, forKey: .rate)
                
            
            
            
                countryCode = try container.decode(String.self, forKey: .countryCode)
                
            
            
            
                countryName = try container.decode(String.self, forKey: .countryName)
                
            
            
            
                subunit = try container.decode(String.self, forKey: .subunit)
                
            
            
            
                decimalDigits = try container.decode(Int.self, forKey: .decimalDigits)
                
            
            
            
                symbol = try container.decode(String.self, forKey: .symbol)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(rate, forKey: .rate)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(countryName, forKey: .countryName)
            
            
            
            
            try? container.encodeIfPresent(subunit, forKey: .subunit)
            
            
            
            
            try? container.encodeIfPresent(decimalDigits, forKey: .decimalDigits)
            
            
            
            
            try? container.encodeIfPresent(symbol, forKey: .symbol)
            
            
        }
        
    }
}


