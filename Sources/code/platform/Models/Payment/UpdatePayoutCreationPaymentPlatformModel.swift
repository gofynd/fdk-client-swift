

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: UpdatePayoutCreation
        Used By: Payment
    */

    class UpdatePayoutCreation: Codable {
        
        
        public var isDefault: Bool?
        
        public var isActive: Bool
        
        public var uniqueExternalId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case isDefault = "is_default"
            
            case isActive = "is_active"
            
            case uniqueExternalId = "unique_external_id"
            
        }

        public init(isActive: Bool, isDefault: Bool? = nil, uniqueExternalId: String) {
            
            self.isDefault = isDefault
            
            self.isActive = isActive
            
            self.uniqueExternalId = uniqueExternalId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: UpdatePayoutCreation
        Used By: Payment
    */

    class UpdatePayoutCreation: Codable {
        
        
        public var isDefault: Bool?
        
        public var isActive: Bool
        
        public var uniqueExternalId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case isDefault = "is_default"
            
            case isActive = "is_active"
            
            case uniqueExternalId = "unique_external_id"
            
        }

        public init(isActive: Bool, isDefault: Bool? = nil, uniqueExternalId: String) {
            
            self.isDefault = isDefault
            
            self.isActive = isActive
            
            self.uniqueExternalId = uniqueExternalId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)
            
            
        }
        
    }
}


