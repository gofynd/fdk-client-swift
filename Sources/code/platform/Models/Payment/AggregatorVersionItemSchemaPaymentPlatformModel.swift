

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: AggregatorVersionItemSchema
        Used By: Payment
    */

    class AggregatorVersionItemSchema: Codable {
        
        
        public var isEqualTo: String?
        
        public var isLessThan: String?
        
        public var isGreaterThan: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isEqualTo = "is_equal_to"
            
            case isLessThan = "is_less_than"
            
            case isGreaterThan = "is_greater_than"
            
        }

        public init(isEqualTo: String? = nil, isGreaterThan: String? = nil, isLessThan: String? = nil) {
            
            self.isEqualTo = isEqualTo
            
            self.isLessThan = isLessThan
            
            self.isGreaterThan = isGreaterThan
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isEqualTo = try container.decode(String.self, forKey: .isEqualTo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isLessThan = try container.decode(String.self, forKey: .isLessThan)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isGreaterThan = try container.decode(String.self, forKey: .isGreaterThan)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isEqualTo, forKey: .isEqualTo)
            
            
            
            
            try? container.encodeIfPresent(isLessThan, forKey: .isLessThan)
            
            
            
            
            try? container.encodeIfPresent(isGreaterThan, forKey: .isGreaterThan)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: AggregatorVersionItemSchema
        Used By: Payment
    */

    class AggregatorVersionItemSchema: Codable {
        
        
        public var isEqualTo: String?
        
        public var isLessThan: String?
        
        public var isGreaterThan: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isEqualTo = "is_equal_to"
            
            case isLessThan = "is_less_than"
            
            case isGreaterThan = "is_greater_than"
            
        }

        public init(isEqualTo: String? = nil, isGreaterThan: String? = nil, isLessThan: String? = nil) {
            
            self.isEqualTo = isEqualTo
            
            self.isLessThan = isLessThan
            
            self.isGreaterThan = isGreaterThan
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isEqualTo = try container.decode(String.self, forKey: .isEqualTo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isLessThan = try container.decode(String.self, forKey: .isLessThan)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isGreaterThan = try container.decode(String.self, forKey: .isGreaterThan)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isEqualTo, forKey: .isEqualTo)
            
            
            
            
            try? container.encodeIfPresent(isLessThan, forKey: .isLessThan)
            
            
            
            
            try? container.encodeIfPresent(isGreaterThan, forKey: .isGreaterThan)
            
            
        }
        
    }
}


