

import Foundation


public extension PlatformClient.Order {
    /*
        Model: PostRefundStateConfiguration
        Used By: Order
    */

    class PostRefundStateConfiguration: Codable {
        
        
        public var prepaid: RefundStateConfigurationByPaymentType?
        
        public var nonPrepaid: RefundStateConfigurationByPaymentType?
        

        public enum CodingKeys: String, CodingKey {
            
            case prepaid = "prepaid"
            
            case nonPrepaid = "non_prepaid"
            
        }

        public init(nonPrepaid: RefundStateConfigurationByPaymentType? = nil, prepaid: RefundStateConfigurationByPaymentType? = nil) {
            
            self.prepaid = prepaid
            
            self.nonPrepaid = nonPrepaid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    prepaid = try container.decode(RefundStateConfigurationByPaymentType.self, forKey: .prepaid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nonPrepaid = try container.decode(RefundStateConfigurationByPaymentType.self, forKey: .nonPrepaid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(prepaid, forKey: .prepaid)
            
            
            
            
            try? container.encodeIfPresent(nonPrepaid, forKey: .nonPrepaid)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: PostRefundStateConfiguration
        Used By: Order
    */

    class PostRefundStateConfiguration: Codable {
        
        
        public var prepaid: RefundStateConfigurationByPaymentType?
        
        public var nonPrepaid: RefundStateConfigurationByPaymentType?
        

        public enum CodingKeys: String, CodingKey {
            
            case prepaid = "prepaid"
            
            case nonPrepaid = "non_prepaid"
            
        }

        public init(nonPrepaid: RefundStateConfigurationByPaymentType? = nil, prepaid: RefundStateConfigurationByPaymentType? = nil) {
            
            self.prepaid = prepaid
            
            self.nonPrepaid = nonPrepaid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    prepaid = try container.decode(RefundStateConfigurationByPaymentType.self, forKey: .prepaid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nonPrepaid = try container.decode(RefundStateConfigurationByPaymentType.self, forKey: .nonPrepaid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(prepaid, forKey: .prepaid)
            
            
            
            
            try? container.encodeIfPresent(nonPrepaid, forKey: .nonPrepaid)
            
            
        }
        
    }
}


