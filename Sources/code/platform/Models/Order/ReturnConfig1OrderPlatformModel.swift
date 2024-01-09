

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ReturnConfig1
        Used By: Order
    */

    class ReturnConfig1: Codable {
        
        
        public var returnable: Bool?
        
        public var time: Double?
        
        public var unit: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case returnable = "returnable"
            
            case time = "time"
            
            case unit = "unit"
            
        }

        public init(returnable: Bool? = nil, time: Double? = nil, unit: String? = nil) {
            
            self.returnable = returnable
            
            self.time = time
            
            self.unit = unit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    returnable = try container.decode(Bool.self, forKey: .returnable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    time = try container.decode(Double.self, forKey: .time)
                
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
            
            
            
            try? container.encode(returnable, forKey: .returnable)
            
            
            
            
            try? container.encode(time, forKey: .time)
            
            
            
            
            try? container.encode(unit, forKey: .unit)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ReturnConfig1
        Used By: Order
    */

    class ReturnConfig1: Codable {
        
        
        public var returnable: Bool?
        
        public var time: Double?
        
        public var unit: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case returnable = "returnable"
            
            case time = "time"
            
            case unit = "unit"
            
        }

        public init(returnable: Bool? = nil, time: Double? = nil, unit: String? = nil) {
            
            self.returnable = returnable
            
            self.time = time
            
            self.unit = unit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    returnable = try container.decode(Bool.self, forKey: .returnable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    time = try container.decode(Double.self, forKey: .time)
                
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
            
            
            
            try? container.encode(returnable, forKey: .returnable)
            
            
            
            
            try? container.encode(time, forKey: .time)
            
            
            
            
            try? container.encode(unit, forKey: .unit)
            
            
        }
        
    }
}


