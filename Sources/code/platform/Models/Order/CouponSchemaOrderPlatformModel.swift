

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CouponSchema
        Used By: Order
    */

    class CouponSchema: Codable {
        
        
        public var code: String
        
        public var id: String
        
        public var ownership: CouponOwnershipSchema
        
        public var isReturnAllowed: Bool
        
        public var isCancellationAllowed: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case id = "id"
            
            case ownership = "ownership"
            
            case isReturnAllowed = "is_return_allowed"
            
            case isCancellationAllowed = "is_cancellation_allowed"
            
        }

        public init(code: String, id: String, isCancellationAllowed: Bool, isReturnAllowed: Bool, ownership: CouponOwnershipSchema) {
            
            self.code = code
            
            self.id = id
            
            self.ownership = ownership
            
            self.isReturnAllowed = isReturnAllowed
            
            self.isCancellationAllowed = isCancellationAllowed
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                ownership = try container.decode(CouponOwnershipSchema.self, forKey: .ownership)
                
            
            
            
                isReturnAllowed = try container.decode(Bool.self, forKey: .isReturnAllowed)
                
            
            
            
                isCancellationAllowed = try container.decode(Bool.self, forKey: .isCancellationAllowed)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(ownership, forKey: .ownership)
            
            
            
            
            try? container.encodeIfPresent(isReturnAllowed, forKey: .isReturnAllowed)
            
            
            
            
            try? container.encodeIfPresent(isCancellationAllowed, forKey: .isCancellationAllowed)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CouponSchema
        Used By: Order
    */

    class CouponSchema: Codable {
        
        
        public var code: String
        
        public var id: String
        
        public var ownership: CouponOwnershipSchema
        
        public var isReturnAllowed: Bool
        
        public var isCancellationAllowed: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case id = "id"
            
            case ownership = "ownership"
            
            case isReturnAllowed = "is_return_allowed"
            
            case isCancellationAllowed = "is_cancellation_allowed"
            
        }

        public init(code: String, id: String, isCancellationAllowed: Bool, isReturnAllowed: Bool, ownership: CouponOwnershipSchema) {
            
            self.code = code
            
            self.id = id
            
            self.ownership = ownership
            
            self.isReturnAllowed = isReturnAllowed
            
            self.isCancellationAllowed = isCancellationAllowed
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                ownership = try container.decode(CouponOwnershipSchema.self, forKey: .ownership)
                
            
            
            
                isReturnAllowed = try container.decode(Bool.self, forKey: .isReturnAllowed)
                
            
            
            
                isCancellationAllowed = try container.decode(Bool.self, forKey: .isCancellationAllowed)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(ownership, forKey: .ownership)
            
            
            
            
            try? container.encodeIfPresent(isReturnAllowed, forKey: .isReturnAllowed)
            
            
            
            
            try? container.encodeIfPresent(isCancellationAllowed, forKey: .isCancellationAllowed)
            
            
        }
        
    }
}


