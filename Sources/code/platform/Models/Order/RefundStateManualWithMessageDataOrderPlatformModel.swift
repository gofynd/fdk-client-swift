

import Foundation


public extension PlatformClient.Order {
    /*
        Model: RefundStateManualWithMessageData
        Used By: Order
    */

    class RefundStateManualWithMessageData: Codable {
        
        
        public var prepaid: RefundStateManualWithMessage?
        
        public var nonPrepaid: RefundStateManualWithMessage?
        

        public enum CodingKeys: String, CodingKey {
            
            case prepaid = "prepaid"
            
            case nonPrepaid = "non_prepaid"
            
        }

        public init(nonPrepaid: RefundStateManualWithMessage? = nil, prepaid: RefundStateManualWithMessage? = nil) {
            
            self.prepaid = prepaid
            
            self.nonPrepaid = nonPrepaid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    prepaid = try container.decode(RefundStateManualWithMessage.self, forKey: .prepaid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nonPrepaid = try container.decode(RefundStateManualWithMessage.self, forKey: .nonPrepaid)
                
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
        Model: RefundStateManualWithMessageData
        Used By: Order
    */

    class RefundStateManualWithMessageData: Codable {
        
        
        public var prepaid: RefundStateManualWithMessage?
        
        public var nonPrepaid: RefundStateManualWithMessage?
        

        public enum CodingKeys: String, CodingKey {
            
            case prepaid = "prepaid"
            
            case nonPrepaid = "non_prepaid"
            
        }

        public init(nonPrepaid: RefundStateManualWithMessage? = nil, prepaid: RefundStateManualWithMessage? = nil) {
            
            self.prepaid = prepaid
            
            self.nonPrepaid = nonPrepaid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    prepaid = try container.decode(RefundStateManualWithMessage.self, forKey: .prepaid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nonPrepaid = try container.decode(RefundStateManualWithMessage.self, forKey: .nonPrepaid)
                
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

