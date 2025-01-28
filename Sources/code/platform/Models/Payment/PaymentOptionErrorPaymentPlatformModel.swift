

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentOptionError
        Used By: Payment
    */

    class PaymentOptionError: Codable {
        
        
        public var optionType: [String]?
        
        public var orderType: [String]?
        
        public var checksum: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case optionType = "option_type"
            
            case orderType = "order_type"
            
            case checksum = "checksum"
            
        }

        public init(checksum: [String]? = nil, optionType: [String]? = nil, orderType: [String]? = nil) {
            
            self.optionType = optionType
            
            self.orderType = orderType
            
            self.checksum = checksum
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    optionType = try container.decode([String].self, forKey: .optionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderType = try container.decode([String].self, forKey: .orderType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    checksum = try container.decode([String].self, forKey: .checksum)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(optionType, forKey: .optionType)
            
            
            
            
            try? container.encodeIfPresent(orderType, forKey: .orderType)
            
            
            
            
            try? container.encodeIfPresent(checksum, forKey: .checksum)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentOptionError
        Used By: Payment
    */

    class PaymentOptionError: Codable {
        
        
        public var optionType: [String]?
        
        public var orderType: [String]?
        
        public var checksum: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case optionType = "option_type"
            
            case orderType = "order_type"
            
            case checksum = "checksum"
            
        }

        public init(checksum: [String]? = nil, optionType: [String]? = nil, orderType: [String]? = nil) {
            
            self.optionType = optionType
            
            self.orderType = orderType
            
            self.checksum = checksum
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    optionType = try container.decode([String].self, forKey: .optionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderType = try container.decode([String].self, forKey: .orderType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    checksum = try container.decode([String].self, forKey: .checksum)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(optionType, forKey: .optionType)
            
            
            
            
            try? container.encodeIfPresent(orderType, forKey: .orderType)
            
            
            
            
            try? container.encodeIfPresent(checksum, forKey: .checksum)
            
            
        }
        
    }
}


