

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentCustomConfigCustomerSchema
        Used By: Payment
    */

    class PaymentCustomConfigCustomerSchema: Codable {
        
        
        public var restriction: String
        
        public var groups: [Int]?
        
        public var types: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case restriction = "restriction"
            
            case groups = "groups"
            
            case types = "types"
            
        }

        public init(groups: [Int]? = nil, restriction: String, types: [String]? = nil) {
            
            self.restriction = restriction
            
            self.groups = groups
            
            self.types = types
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                restriction = try container.decode(String.self, forKey: .restriction)
                
            
            
            
                do {
                    groups = try container.decode([Int].self, forKey: .groups)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    types = try container.decode([String].self, forKey: .types)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(restriction, forKey: .restriction)
            
            
            
            
            try? container.encodeIfPresent(groups, forKey: .groups)
            
            
            
            
            try? container.encodeIfPresent(types, forKey: .types)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentCustomConfigCustomerSchema
        Used By: Payment
    */

    class PaymentCustomConfigCustomerSchema: Codable {
        
        
        public var restriction: String
        
        public var groups: [Int]?
        
        public var types: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case restriction = "restriction"
            
            case groups = "groups"
            
            case types = "types"
            
        }

        public init(groups: [Int]? = nil, restriction: String, types: [String]? = nil) {
            
            self.restriction = restriction
            
            self.groups = groups
            
            self.types = types
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                restriction = try container.decode(String.self, forKey: .restriction)
                
            
            
            
                do {
                    groups = try container.decode([Int].self, forKey: .groups)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    types = try container.decode([String].self, forKey: .types)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(restriction, forKey: .restriction)
            
            
            
            
            try? container.encodeIfPresent(groups, forKey: .groups)
            
            
            
            
            try? container.encodeIfPresent(types, forKey: .types)
            
            
        }
        
    }
}


