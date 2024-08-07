

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: LinkStatus
        Used By: Payment
    */

    class LinkStatus: Codable {
        
        
        public var status: String
        
        public var message: String
        
        public var isPaymentDone: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case message = "message"
            
            case isPaymentDone = "is_payment_done"
            
        }

        public init(isPaymentDone: Bool? = nil, message: String, status: String) {
            
            self.status = status
            
            self.message = message
            
            self.isPaymentDone = isPaymentDone
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                do {
                    isPaymentDone = try container.decode(Bool.self, forKey: .isPaymentDone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(isPaymentDone, forKey: .isPaymentDone)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: LinkStatus
        Used By: Payment
    */

    class LinkStatus: Codable {
        
        
        public var status: String
        
        public var message: String
        
        public var isPaymentDone: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case message = "message"
            
            case isPaymentDone = "is_payment_done"
            
        }

        public init(isPaymentDone: Bool? = nil, message: String, status: String) {
            
            self.status = status
            
            self.message = message
            
            self.isPaymentDone = isPaymentDone
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                do {
                    isPaymentDone = try container.decode(Bool.self, forKey: .isPaymentDone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(isPaymentDone, forKey: .isPaymentDone)
            
            
        }
        
    }
}


