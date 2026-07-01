

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CPOptionsSchema
        Used By: Order
    */

    class CPOptionsSchema: Codable {
        
        
        public var extensionId: String?
        
        public var schemeId: String?
        
        public var areaCode: CPAreaCodeSchema?
        
        public var isSelfShip: Bool?
        
        public var maxReattemptsForDeliveryAllowed: Int?
        
        public var cpSortKey: String?
        
        public var name: String?
        
        public var riderDetails: CPRiderDetailsSchema?
        
        public var usingOwnCreds: Bool?
        
        public var qcSupported: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case extensionId = "extension_id"
            
            case schemeId = "scheme_id"
            
            case areaCode = "area_code"
            
            case isSelfShip = "is_self_ship"
            
            case maxReattemptsForDeliveryAllowed = "max_reattempts_for_delivery_allowed"
            
            case cpSortKey = "cp_sort_key"
            
            case name = "name"
            
            case riderDetails = "rider_details"
            
            case usingOwnCreds = "using_own_creds"
            
            case qcSupported = "qc_supported"
            
        }

        public init(areaCode: CPAreaCodeSchema? = nil, cpSortKey: String? = nil, extensionId: String? = nil, isSelfShip: Bool? = nil, maxReattemptsForDeliveryAllowed: Int? = nil, name: String? = nil, qcSupported: Bool? = nil, riderDetails: CPRiderDetailsSchema? = nil, schemeId: String? = nil, usingOwnCreds: Bool? = nil) {
            
            self.extensionId = extensionId
            
            self.schemeId = schemeId
            
            self.areaCode = areaCode
            
            self.isSelfShip = isSelfShip
            
            self.maxReattemptsForDeliveryAllowed = maxReattemptsForDeliveryAllowed
            
            self.cpSortKey = cpSortKey
            
            self.name = name
            
            self.riderDetails = riderDetails
            
            self.usingOwnCreds = usingOwnCreds
            
            self.qcSupported = qcSupported
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    extensionId = try container.decode(String.self, forKey: .extensionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    schemeId = try container.decode(String.self, forKey: .schemeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    areaCode = try container.decode(CPAreaCodeSchema.self, forKey: .areaCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxReattemptsForDeliveryAllowed = try container.decode(Int.self, forKey: .maxReattemptsForDeliveryAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cpSortKey = try container.decode(String.self, forKey: .cpSortKey)
                
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
                    riderDetails = try container.decode(CPRiderDetailsSchema.self, forKey: .riderDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    usingOwnCreds = try container.decode(Bool.self, forKey: .usingOwnCreds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    qcSupported = try container.decode(Bool.self, forKey: .qcSupported)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(schemeId, forKey: .schemeId)
            
            
            
            
            try? container.encodeIfPresent(areaCode, forKey: .areaCode)
            
            
            
            
            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
            
            
            
            
            try? container.encodeIfPresent(maxReattemptsForDeliveryAllowed, forKey: .maxReattemptsForDeliveryAllowed)
            
            
            
            
            try? container.encodeIfPresent(cpSortKey, forKey: .cpSortKey)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(riderDetails, forKey: .riderDetails)
            
            
            
            
            try? container.encodeIfPresent(usingOwnCreds, forKey: .usingOwnCreds)
            
            
            
            
            try? container.encodeIfPresent(qcSupported, forKey: .qcSupported)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CPOptionsSchema
        Used By: Order
    */

    class CPOptionsSchema: Codable {
        
        
        public var extensionId: String?
        
        public var schemeId: String?
        
        public var areaCode: CPAreaCodeSchema?
        
        public var isSelfShip: Bool?
        
        public var maxReattemptsForDeliveryAllowed: Int?
        
        public var cpSortKey: String?
        
        public var name: String?
        
        public var riderDetails: CPRiderDetailsSchema?
        
        public var usingOwnCreds: Bool?
        
        public var qcSupported: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case extensionId = "extension_id"
            
            case schemeId = "scheme_id"
            
            case areaCode = "area_code"
            
            case isSelfShip = "is_self_ship"
            
            case maxReattemptsForDeliveryAllowed = "max_reattempts_for_delivery_allowed"
            
            case cpSortKey = "cp_sort_key"
            
            case name = "name"
            
            case riderDetails = "rider_details"
            
            case usingOwnCreds = "using_own_creds"
            
            case qcSupported = "qc_supported"
            
        }

        public init(areaCode: CPAreaCodeSchema? = nil, cpSortKey: String? = nil, extensionId: String? = nil, isSelfShip: Bool? = nil, maxReattemptsForDeliveryAllowed: Int? = nil, name: String? = nil, qcSupported: Bool? = nil, riderDetails: CPRiderDetailsSchema? = nil, schemeId: String? = nil, usingOwnCreds: Bool? = nil) {
            
            self.extensionId = extensionId
            
            self.schemeId = schemeId
            
            self.areaCode = areaCode
            
            self.isSelfShip = isSelfShip
            
            self.maxReattemptsForDeliveryAllowed = maxReattemptsForDeliveryAllowed
            
            self.cpSortKey = cpSortKey
            
            self.name = name
            
            self.riderDetails = riderDetails
            
            self.usingOwnCreds = usingOwnCreds
            
            self.qcSupported = qcSupported
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    extensionId = try container.decode(String.self, forKey: .extensionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    schemeId = try container.decode(String.self, forKey: .schemeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    areaCode = try container.decode(CPAreaCodeSchema.self, forKey: .areaCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxReattemptsForDeliveryAllowed = try container.decode(Int.self, forKey: .maxReattemptsForDeliveryAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cpSortKey = try container.decode(String.self, forKey: .cpSortKey)
                
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
                    riderDetails = try container.decode(CPRiderDetailsSchema.self, forKey: .riderDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    usingOwnCreds = try container.decode(Bool.self, forKey: .usingOwnCreds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    qcSupported = try container.decode(Bool.self, forKey: .qcSupported)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(schemeId, forKey: .schemeId)
            
            
            
            
            try? container.encodeIfPresent(areaCode, forKey: .areaCode)
            
            
            
            
            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
            
            
            
            
            try? container.encodeIfPresent(maxReattemptsForDeliveryAllowed, forKey: .maxReattemptsForDeliveryAllowed)
            
            
            
            
            try? container.encodeIfPresent(cpSortKey, forKey: .cpSortKey)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(riderDetails, forKey: .riderDetails)
            
            
            
            
            try? container.encodeIfPresent(usingOwnCreds, forKey: .usingOwnCreds)
            
            
            
            
            try? container.encodeIfPresent(qcSupported, forKey: .qcSupported)
            
            
        }
        
    }
}


