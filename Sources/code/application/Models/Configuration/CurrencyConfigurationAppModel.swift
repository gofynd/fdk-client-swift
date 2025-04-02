

import Foundation
public extension ApplicationClient.Configuration {
    /*
        Model: Currency
        Used By: Configuration
    */
    class Currency: Codable {
        
        public var id: String?
        
        public var isActive: Bool?
        
        public var name: String?
        
        public var code: String?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        
        public var decimalDigits: Int?
        
        public var symbol: String?
        
        public var countryName: String?
        
        public var countryCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case isActive = "is_active"
            
            case name = "name"
            
            case code = "code"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
            case decimalDigits = "decimal_digits"
            
            case symbol = "symbol"
            
            case countryName = "country_name"
            
            case countryCode = "country_code"
            
        }

        public init(code: String? = nil, countryCode: String? = nil, countryName: String? = nil, createdAt: String? = nil, decimalDigits: Int? = nil, isActive: Bool? = nil, modifiedAt: String? = nil, name: String? = nil, symbol: String? = nil, id: String? = nil) {
            
            self.id = id
            
            self.isActive = isActive
            
            self.name = name
            
            self.code = code
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
            self.decimalDigits = decimalDigits
            
            self.symbol = symbol
            
            self.countryName = countryName
            
            self.countryCode = countryCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                id = try container.decode(String.self, forKey: .id)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)
            
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
                code = try container.decode(String.self, forKey: .code)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                modifiedAt = try container.decode(String.self, forKey: .modifiedAt)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                decimalDigits = try container.decode(Int.self, forKey: .decimalDigits)
            
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
                countryName = try container.decode(String.self, forKey: .countryName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            try? container.encodeIfPresent(decimalDigits, forKey: .decimalDigits)
            
            
            
            try? container.encodeIfPresent(symbol, forKey: .symbol)
            
            
            
            try? container.encodeIfPresent(countryName, forKey: .countryName)
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
        }
        
    }
}
