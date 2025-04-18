

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: BusinessDetails
        Used By: Payment
    */
    class BusinessDetails: Codable {
        
        public var businessOwnershipType: String?
        
        public var vintage: String?
        
        public var gstin: String?
        
        public var pan: String?
        
        public var entityType: String?
        
        public var shopAndEstablishment: [String: Any]?
        
        public var fssai: String?
        
        public var fda: String?
        
        public var businessType: String?
        
        public var name: String?
        
        public var address: KYCAddress?
        
        public var state: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case businessOwnershipType = "business_ownership_type"
            
            case vintage = "vintage"
            
            case gstin = "gstin"
            
            case pan = "pan"
            
            case entityType = "entity_type"
            
            case shopAndEstablishment = "shop_and_establishment"
            
            case fssai = "fssai"
            
            case fda = "fda"
            
            case businessType = "business_type"
            
            case name = "name"
            
            case address = "address"
            
            case state = "state"
            
        }

        public init(address: KYCAddress? = nil, businessOwnershipType: String? = nil, businessType: String? = nil, entityType: String? = nil, fda: String? = nil, fssai: String? = nil, gstin: String? = nil, name: String? = nil, pan: String? = nil, shopAndEstablishment: [String: Any]? = nil, state: String? = nil, vintage: String? = nil) {
            
            self.businessOwnershipType = businessOwnershipType
            
            self.vintage = vintage
            
            self.gstin = gstin
            
            self.pan = pan
            
            self.entityType = entityType
            
            self.shopAndEstablishment = shopAndEstablishment
            
            self.fssai = fssai
            
            self.fda = fda
            
            self.businessType = businessType
            
            self.name = name
            
            self.address = address
            
            self.state = state
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                businessOwnershipType = try container.decode(String.self, forKey: .businessOwnershipType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                vintage = try container.decode(String.self, forKey: .vintage)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                gstin = try container.decode(String.self, forKey: .gstin)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                pan = try container.decode(String.self, forKey: .pan)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                entityType = try container.decode(String.self, forKey: .entityType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                shopAndEstablishment = try container.decode([String: Any].self, forKey: .shopAndEstablishment)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                fssai = try container.decode(String.self, forKey: .fssai)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                fda = try container.decode(String.self, forKey: .fda)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                businessType = try container.decode(String.self, forKey: .businessType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                name = try container.decode(String.self, forKey: .name)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                address = try container.decode(KYCAddress.self, forKey: .address)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                state = try container.decode(String.self, forKey: .state)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(businessOwnershipType, forKey: .businessOwnershipType)
            
            
            
            try? container.encodeIfPresent(vintage, forKey: .vintage)
            
            
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            
            
            try? container.encodeIfPresent(pan, forKey: .pan)
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            try? container.encodeIfPresent(shopAndEstablishment, forKey: .shopAndEstablishment)
            
            
            
            try? container.encodeIfPresent(fssai, forKey: .fssai)
            
            
            
            try? container.encodeIfPresent(fda, forKey: .fda)
            
            
            
            try? container.encodeIfPresent(businessType, forKey: .businessType)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
        }
        
    }
}
