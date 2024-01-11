

import Foundation


public extension PlatformClient.Order {
    /*
        Model: Currency
        Used By: Order
    */

    class Currency: Codable {
        
        
        public var currencyCode: String?
        
        public var currencySymbol: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case currencyCode = "currency_code"
            
            case currencySymbol = "currency_symbol"
            
        }

        public init(currencyCode: String? = nil, currencySymbol: String? = nil) {
            
            self.currencyCode = currencyCode
            
            self.currencySymbol = currencySymbol
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: Currency
        Used By: Order
    */

    class Currency: Codable {
        
        
        public var currencyCode: String?
        
        public var currencySymbol: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case currencyCode = "currency_code"
            
            case currencySymbol = "currency_symbol"
            
        }

        public init(currencyCode: String? = nil, currencySymbol: String? = nil) {
            
            self.currencyCode = currencyCode
            
            self.currencySymbol = currencySymbol
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
        }
        
    }
}


