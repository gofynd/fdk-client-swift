

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: SetCODLimitConfig
        Used By: Payment
    */

    class SetCODLimitConfig: Codable {
        
        
        public var isActive: Bool
        
        public var usages: Double?
        
        public var userId: Int?
        
        public var merchantUserId: String?
        
        public var limit: CODLimitConfig?
        
        public var remainingLimit: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case usages = "usages"
            
            case userId = "user_id"
            
            case merchantUserId = "merchant_user_id"
            
            case limit = "limit"
            
            case remainingLimit = "remaining_limit"
            
        }

        public init(isActive: Bool, limit: CODLimitConfig? = nil, merchantUserId: String? = nil, remainingLimit: Double? = nil, usages: Double? = nil, userId: Int? = nil) {
            
            self.isActive = isActive
            
            self.usages = usages
            
            self.userId = userId
            
            self.merchantUserId = merchantUserId
            
            self.limit = limit
            
            self.remainingLimit = remainingLimit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                do {
                    usages = try container.decode(Double.self, forKey: .usages)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userId = try container.decode(Int.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    merchantUserId = try container.decode(String.self, forKey: .merchantUserId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    limit = try container.decode(CODLimitConfig.self, forKey: .limit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    remainingLimit = try container.decode(Double.self, forKey: .remainingLimit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(usages, forKey: .usages)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(merchantUserId, forKey: .merchantUserId)
            
            
            
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            
            
            
            try? container.encodeIfPresent(remainingLimit, forKey: .remainingLimit)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: SetCODLimitConfig
        Used By: Payment
    */

    class SetCODLimitConfig: Codable {
        
        
        public var isActive: Bool
        
        public var usages: Double?
        
        public var userId: Int?
        
        public var merchantUserId: String?
        
        public var limit: CODLimitConfig?
        
        public var remainingLimit: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case usages = "usages"
            
            case userId = "user_id"
            
            case merchantUserId = "merchant_user_id"
            
            case limit = "limit"
            
            case remainingLimit = "remaining_limit"
            
        }

        public init(isActive: Bool, limit: CODLimitConfig? = nil, merchantUserId: String? = nil, remainingLimit: Double? = nil, usages: Double? = nil, userId: Int? = nil) {
            
            self.isActive = isActive
            
            self.usages = usages
            
            self.userId = userId
            
            self.merchantUserId = merchantUserId
            
            self.limit = limit
            
            self.remainingLimit = remainingLimit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                do {
                    usages = try container.decode(Double.self, forKey: .usages)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userId = try container.decode(Int.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    merchantUserId = try container.decode(String.self, forKey: .merchantUserId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    limit = try container.decode(CODLimitConfig.self, forKey: .limit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    remainingLimit = try container.decode(Double.self, forKey: .remainingLimit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(usages, forKey: .usages)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(merchantUserId, forKey: .merchantUserId)
            
            
            
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            
            
            
            try? container.encodeIfPresent(remainingLimit, forKey: .remainingLimit)
            
            
        }
        
    }
}


