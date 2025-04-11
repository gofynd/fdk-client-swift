

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentGatewayConfigCreation
        Used By: Payment
    */

    class PaymentGatewayConfigCreation: Codable {
        
        
        public var appId: String
        
        public var isActive: Bool?
        
        public var ccavenue: PaymentGatewayConfig?
        
        public var razorpay: PaymentGatewayConfig?
        
        public var juspay: PaymentGatewayConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case appId = "app_id"
            
            case isActive = "is_active"
            
            case ccavenue = "ccavenue"
            
            case razorpay = "razorpay"
            
            case juspay = "juspay"
            
        }

        public init(appId: String, ccavenue: PaymentGatewayConfig? = nil, isActive: Bool? = nil, juspay: PaymentGatewayConfig? = nil, razorpay: PaymentGatewayConfig? = nil) {
            
            self.appId = appId
            
            self.isActive = isActive
            
            self.ccavenue = ccavenue
            
            self.razorpay = razorpay
            
            self.juspay = juspay
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ccavenue = try container.decode(PaymentGatewayConfig.self, forKey: .ccavenue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    razorpay = try container.decode(PaymentGatewayConfig.self, forKey: .razorpay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    juspay = try container.decode(PaymentGatewayConfig.self, forKey: .juspay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(ccavenue, forKey: .ccavenue)
            
            
            
            
            try? container.encodeIfPresent(razorpay, forKey: .razorpay)
            
            
            
            
            try? container.encodeIfPresent(juspay, forKey: .juspay)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentGatewayConfigCreation
        Used By: Payment
    */

    class PaymentGatewayConfigCreation: Codable {
        
        
        public var appId: String
        
        public var isActive: Bool?
        
        public var ccavenue: PaymentGatewayConfig?
        
        public var razorpay: PaymentGatewayConfig?
        
        public var juspay: PaymentGatewayConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case appId = "app_id"
            
            case isActive = "is_active"
            
            case ccavenue = "ccavenue"
            
            case razorpay = "razorpay"
            
            case juspay = "juspay"
            
        }

        public init(appId: String, ccavenue: PaymentGatewayConfig? = nil, isActive: Bool? = nil, juspay: PaymentGatewayConfig? = nil, razorpay: PaymentGatewayConfig? = nil) {
            
            self.appId = appId
            
            self.isActive = isActive
            
            self.ccavenue = ccavenue
            
            self.razorpay = razorpay
            
            self.juspay = juspay
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ccavenue = try container.decode(PaymentGatewayConfig.self, forKey: .ccavenue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    razorpay = try container.decode(PaymentGatewayConfig.self, forKey: .razorpay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    juspay = try container.decode(PaymentGatewayConfig.self, forKey: .juspay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(ccavenue, forKey: .ccavenue)
            
            
            
            
            try? container.encodeIfPresent(razorpay, forKey: .razorpay)
            
            
            
            
            try? container.encodeIfPresent(juspay, forKey: .juspay)
            
            
        }
        
    }
}


