

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: MobileNo
        Used By: Catalog
    */

    class MobileNo: Codable {
        
        
        public var countryCode: Int?
        
        public var number: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case countryCode = "country_code"
            
            case number = "number"
            
        }

        public init(countryCode: Int? = nil, number: String? = nil) {
            
            self.countryCode = countryCode
            
            self.number = number
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    countryCode = try container.decode(Int.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    number = try container.decode(String.self, forKey: .number)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(number, forKey: .number)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: MobileNo
        Used By: Catalog
    */

    class MobileNo: Codable {
        
        
        public var countryCode: Int?
        
        public var number: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case countryCode = "country_code"
            
            case number = "number"
            
        }

        public init(countryCode: Int? = nil, number: String? = nil) {
            
            self.countryCode = countryCode
            
            self.number = number
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    countryCode = try container.decode(Int.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    number = try container.decode(String.self, forKey: .number)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(number, forKey: .number)
            
            
        }
        
    }
}


