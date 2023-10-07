

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: Inr
        Used By: FileStorage
    */

    class Inr: Codable {
        
        
        public var name: String?
        
        public var value: Double?
        
        public var symbol: String?
        
        public var subUnit: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case value = "value"
            
            case symbol = "symbol"
            
            case subUnit = "sub_unit"
            
        }

        public init(name: String? = nil, subUnit: String? = nil, symbol: String? = nil, value: Double? = nil) {
            
            self.name = name
            
            self.value = value
            
            self.symbol = symbol
            
            self.subUnit = subUnit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(Double.self, forKey: .value)
                
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
                    subUnit = try container.decode(String.self, forKey: .subUnit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(symbol, forKey: .symbol)
            
            
            
            
            try? container.encodeIfPresent(subUnit, forKey: .subUnit)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: Inr
        Used By: FileStorage
    */

    class Inr: Codable {
        
        
        public var name: String?
        
        public var value: Double?
        
        public var symbol: String?
        
        public var subUnit: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case value = "value"
            
            case symbol = "symbol"
            
            case subUnit = "sub_unit"
            
        }

        public init(name: String? = nil, subUnit: String? = nil, symbol: String? = nil, value: Double? = nil) {
            
            self.name = name
            
            self.value = value
            
            self.symbol = symbol
            
            self.subUnit = subUnit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(Double.self, forKey: .value)
                
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
                    subUnit = try container.decode(String.self, forKey: .subUnit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(symbol, forKey: .symbol)
            
            
            
            
            try? container.encodeIfPresent(subUnit, forKey: .subUnit)
            
            
        }
        
    }
}


