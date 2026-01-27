

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: CurrenciesSchema
        Used By: Catalog
    */
    class CurrenciesSchema: Codable {
        
        public var code: String?
        
        public var name: String?
        
        public var symbol: String?
        
        public var isDefault: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case name = "name"
            
            case symbol = "symbol"
            
            case isDefault = "is_default"
            
        }

        public init(code: String? = nil, isDefault: Bool? = nil, name: String? = nil, symbol: String? = nil) {
            
            self.code = code
            
            self.name = name
            
            self.symbol = symbol
            
            self.isDefault = isDefault
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                code = try container.decode(String.self, forKey: .code)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                name = try container.decode(String.self, forKey: .name)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                symbol = try container.decode(String.self, forKey: .symbol)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(symbol, forKey: .symbol)
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
        }
        
    }
}
