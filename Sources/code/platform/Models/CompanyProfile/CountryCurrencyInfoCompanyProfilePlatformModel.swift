

import Foundation


public extension PlatformClient.CompanyProfile {
    /*
        Model: CountryCurrencyInfo
        Used By: CompanyProfile
    */

    class CountryCurrencyInfo: Codable {
        
        
        public var code: String
        
        public var symbol: String
        
        public var name: String
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case symbol = "symbol"
            
            case name = "name"
            
        }

        public init(code: String, name: String, symbol: String) {
            
            self.code = code
            
            self.symbol = symbol
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                symbol = try container.decode(String.self, forKey: .symbol)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(symbol, forKey: .symbol)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}




