

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ReturnConfig
        Used By: Catalog
    */

    class ReturnConfig: Codable {
        
        
        public var returnable: Bool
        
        public var time: Int?
        
        public var unit: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case returnable = "returnable"
            
            case time = "time"
            
            case unit = "unit"
            
        }

        public init(returnable: Bool, time: Int? = nil, unit: String? = nil) {
            
            self.returnable = returnable
            
            self.time = time
            
            self.unit = unit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                returnable = try container.decode(Bool.self, forKey: .returnable)
                
            
            
            
                do {
                    time = try container.decode(Int.self, forKey: .time)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    unit = try container.decode(String.self, forKey: .unit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(returnable, forKey: .returnable)
            
            
            
            
            try? container.encodeIfPresent(time, forKey: .time)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ReturnConfig
        Used By: Catalog
    */

    class ReturnConfig: Codable {
        
        
        public var returnable: Bool
        
        public var time: Int?
        
        public var unit: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case returnable = "returnable"
            
            case time = "time"
            
            case unit = "unit"
            
        }

        public init(returnable: Bool, time: Int? = nil, unit: String? = nil) {
            
            self.returnable = returnable
            
            self.time = time
            
            self.unit = unit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                returnable = try container.decode(Bool.self, forKey: .returnable)
                
            
            
            
                do {
                    time = try container.decode(Int.self, forKey: .time)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    unit = try container.decode(String.self, forKey: .unit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(returnable, forKey: .returnable)
            
            
            
            
            try? container.encodeIfPresent(time, forKey: .time)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
        }
        
    }
}


