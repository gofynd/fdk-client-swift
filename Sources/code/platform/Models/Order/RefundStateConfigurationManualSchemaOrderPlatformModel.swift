

import Foundation


public extension PlatformClient.Order {
    /*
        Model: RefundStateConfigurationManualSchema
        Used By: Order
    */

    class RefundStateConfigurationManualSchema: Codable {
        
        
        public var prepaid: RefundStateManualWithoutMessage?
        
        public var nonPrepaid: RefundStateManualWithoutMessage?
        
        public var mixMop: RefundStateManualWithoutMessage?
        

        public enum CodingKeys: String, CodingKey {
            
            case prepaid = "prepaid"
            
            case nonPrepaid = "non_prepaid"
            
            case mixMop = "mix_mop"
            
        }

        public init(mixMop: RefundStateManualWithoutMessage? = nil, nonPrepaid: RefundStateManualWithoutMessage? = nil, prepaid: RefundStateManualWithoutMessage? = nil) {
            
            self.prepaid = prepaid
            
            self.nonPrepaid = nonPrepaid
            
            self.mixMop = mixMop
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    prepaid = try container.decode(RefundStateManualWithoutMessage.self, forKey: .prepaid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nonPrepaid = try container.decode(RefundStateManualWithoutMessage.self, forKey: .nonPrepaid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mixMop = try container.decode(RefundStateManualWithoutMessage.self, forKey: .mixMop)
                
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
            
            
            
            
            try? container.encodeIfPresent(mixMop, forKey: .mixMop)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: RefundStateConfigurationManualSchema
        Used By: Order
    */

    class RefundStateConfigurationManualSchema: Codable {
        
        
        public var prepaid: RefundStateManualWithoutMessage?
        
        public var nonPrepaid: RefundStateManualWithoutMessage?
        
        public var mixMop: RefundStateManualWithoutMessage?
        

        public enum CodingKeys: String, CodingKey {
            
            case prepaid = "prepaid"
            
            case nonPrepaid = "non_prepaid"
            
            case mixMop = "mix_mop"
            
        }

        public init(mixMop: RefundStateManualWithoutMessage? = nil, nonPrepaid: RefundStateManualWithoutMessage? = nil, prepaid: RefundStateManualWithoutMessage? = nil) {
            
            self.prepaid = prepaid
            
            self.nonPrepaid = nonPrepaid
            
            self.mixMop = mixMop
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    prepaid = try container.decode(RefundStateManualWithoutMessage.self, forKey: .prepaid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nonPrepaid = try container.decode(RefundStateManualWithoutMessage.self, forKey: .nonPrepaid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mixMop = try container.decode(RefundStateManualWithoutMessage.self, forKey: .mixMop)
                
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
            
            
            
            
            try? container.encodeIfPresent(mixMop, forKey: .mixMop)
            
            
        }
        
    }
}


