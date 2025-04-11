

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: AggregatorCredentialReq
        Used By: Payment
    */

    class AggregatorCredentialReq: Codable {
        
        
        public var success: Bool?
        
        public var ccavenue: AggregatorCredential?
        
        public var juspay: AggregatorCredential?
        
        public var razorpay: AggregatorCredential?
        
        public var potlee: AggregatorCredential?
        
        public var jio: AggregatorCredential?
        
        public var isActive: Bool?
        
        public var appId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case ccavenue = "ccavenue"
            
            case juspay = "juspay"
            
            case razorpay = "razorpay"
            
            case potlee = "potlee"
            
            case jio = "jio"
            
            case isActive = "is_active"
            
            case appId = "app_id"
            
        }

        public init(appId: String? = nil, ccavenue: AggregatorCredential? = nil, isActive: Bool? = nil, jio: AggregatorCredential? = nil, juspay: AggregatorCredential? = nil, potlee: AggregatorCredential? = nil, razorpay: AggregatorCredential? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.ccavenue = ccavenue
            
            self.juspay = juspay
            
            self.razorpay = razorpay
            
            self.potlee = potlee
            
            self.jio = jio
            
            self.isActive = isActive
            
            self.appId = appId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ccavenue = try container.decode(AggregatorCredential.self, forKey: .ccavenue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    juspay = try container.decode(AggregatorCredential.self, forKey: .juspay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    razorpay = try container.decode(AggregatorCredential.self, forKey: .razorpay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    potlee = try container.decode(AggregatorCredential.self, forKey: .potlee)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    jio = try container.decode(AggregatorCredential.self, forKey: .jio)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(ccavenue, forKey: .ccavenue)
            
            
            
            
            try? container.encodeIfPresent(juspay, forKey: .juspay)
            
            
            
            
            try? container.encodeIfPresent(razorpay, forKey: .razorpay)
            
            
            
            
            try? container.encodeIfPresent(potlee, forKey: .potlee)
            
            
            
            
            try? container.encodeIfPresent(jio, forKey: .jio)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: AggregatorCredentialReq
        Used By: Payment
    */

    class AggregatorCredentialReq: Codable {
        
        
        public var success: Bool?
        
        public var ccavenue: AggregatorCredential?
        
        public var juspay: AggregatorCredential?
        
        public var razorpay: AggregatorCredential?
        
        public var potlee: AggregatorCredential?
        
        public var jio: AggregatorCredential?
        
        public var isActive: Bool?
        
        public var appId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case ccavenue = "ccavenue"
            
            case juspay = "juspay"
            
            case razorpay = "razorpay"
            
            case potlee = "potlee"
            
            case jio = "jio"
            
            case isActive = "is_active"
            
            case appId = "app_id"
            
        }

        public init(appId: String? = nil, ccavenue: AggregatorCredential? = nil, isActive: Bool? = nil, jio: AggregatorCredential? = nil, juspay: AggregatorCredential? = nil, potlee: AggregatorCredential? = nil, razorpay: AggregatorCredential? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.ccavenue = ccavenue
            
            self.juspay = juspay
            
            self.razorpay = razorpay
            
            self.potlee = potlee
            
            self.jio = jio
            
            self.isActive = isActive
            
            self.appId = appId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ccavenue = try container.decode(AggregatorCredential.self, forKey: .ccavenue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    juspay = try container.decode(AggregatorCredential.self, forKey: .juspay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    razorpay = try container.decode(AggregatorCredential.self, forKey: .razorpay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    potlee = try container.decode(AggregatorCredential.self, forKey: .potlee)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    jio = try container.decode(AggregatorCredential.self, forKey: .jio)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(ccavenue, forKey: .ccavenue)
            
            
            
            
            try? container.encodeIfPresent(juspay, forKey: .juspay)
            
            
            
            
            try? container.encodeIfPresent(razorpay, forKey: .razorpay)
            
            
            
            
            try? container.encodeIfPresent(potlee, forKey: .potlee)
            
            
            
            
            try? container.encodeIfPresent(jio, forKey: .jio)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
        }
        
    }
}


