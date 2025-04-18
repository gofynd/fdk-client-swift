

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: OfflinePaymentDetails
        Used By: Payment
    */

    class OfflinePaymentDetails: Codable {
        
        
        public var isActive: Bool?
        
        public var paymentModes: CODOffline?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case paymentModes = "payment_modes"
            
        }

        public init(isActive: Bool? = nil, paymentModes: CODOffline? = nil) {
            
            self.isActive = isActive
            
            self.paymentModes = paymentModes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentModes = try container.decode(CODOffline.self, forKey: .paymentModes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(paymentModes, forKey: .paymentModes)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: OfflinePaymentDetails
        Used By: Payment
    */

    class OfflinePaymentDetails: Codable {
        
        
        public var isActive: Bool?
        
        public var paymentModes: CODOffline?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case paymentModes = "payment_modes"
            
        }

        public init(isActive: Bool? = nil, paymentModes: CODOffline? = nil) {
            
            self.isActive = isActive
            
            self.paymentModes = paymentModes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentModes = try container.decode(CODOffline.self, forKey: .paymentModes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(paymentModes, forKey: .paymentModes)
            
            
        }
        
    }
}


