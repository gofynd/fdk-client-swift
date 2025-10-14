

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CourierPartnerDetailsSchema
        Used By: Order
    */

    class CourierPartnerDetailsSchema: Codable {
        
        
        public var cpSortKey: String?
        
        public var cpOptions: [CPOptionsSchema]?
        
        public var schemeId: String
        
        public var name: String
        
        public var extensionId: String
        
        public var riderDetails: CPRiderDetailsSchema?
        
        public var qcSupported: Bool?
        
        public var usingOwnCreds: Bool
        
        public var maxReattemptsForDeliveryAllowed: Int?
        
        public var tatToDeliverTheShipment: CPTatToDeliverTheShipmentSchema?
        
        public var isSelfShip: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case cpSortKey = "cp_sort_key"
            
            case cpOptions = "cp_options"
            
            case schemeId = "scheme_id"
            
            case name = "name"
            
            case extensionId = "extension_id"
            
            case riderDetails = "rider_details"
            
            case qcSupported = "qc_supported"
            
            case usingOwnCreds = "using_own_creds"
            
            case maxReattemptsForDeliveryAllowed = "max_reattempts_for_delivery_allowed"
            
            case tatToDeliverTheShipment = "tat_to_deliver_the_shipment"
            
            case isSelfShip = "is_self_ship"
            
        }

        public init(cpOptions: [CPOptionsSchema]? = nil, cpSortKey: String? = nil, extensionId: String, isSelfShip: Bool? = nil, maxReattemptsForDeliveryAllowed: Int? = nil, name: String, qcSupported: Bool? = nil, riderDetails: CPRiderDetailsSchema? = nil, schemeId: String, tatToDeliverTheShipment: CPTatToDeliverTheShipmentSchema? = nil, usingOwnCreds: Bool) {
            
            self.cpSortKey = cpSortKey
            
            self.cpOptions = cpOptions
            
            self.schemeId = schemeId
            
            self.name = name
            
            self.extensionId = extensionId
            
            self.riderDetails = riderDetails
            
            self.qcSupported = qcSupported
            
            self.usingOwnCreds = usingOwnCreds
            
            self.maxReattemptsForDeliveryAllowed = maxReattemptsForDeliveryAllowed
            
            self.tatToDeliverTheShipment = tatToDeliverTheShipment
            
            self.isSelfShip = isSelfShip
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cpSortKey = try container.decode(String.self, forKey: .cpSortKey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cpOptions = try container.decode([CPOptionsSchema].self, forKey: .cpOptions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                schemeId = try container.decode(String.self, forKey: .schemeId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                extensionId = try container.decode(String.self, forKey: .extensionId)
                
            
            
            
                do {
                    riderDetails = try container.decode(CPRiderDetailsSchema.self, forKey: .riderDetails)
                
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
                
            
            
                usingOwnCreds = try container.decode(Bool.self, forKey: .usingOwnCreds)
                
            
            
            
                do {
                    maxReattemptsForDeliveryAllowed = try container.decode(Int.self, forKey: .maxReattemptsForDeliveryAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tatToDeliverTheShipment = try container.decode(CPTatToDeliverTheShipmentSchema.self, forKey: .tatToDeliverTheShipment)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cpSortKey, forKey: .cpSortKey)
            
            
            
            
            try? container.encodeIfPresent(cpOptions, forKey: .cpOptions)
            
            
            
            
            try? container.encodeIfPresent(schemeId, forKey: .schemeId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(riderDetails, forKey: .riderDetails)
            
            
            
            
            try? container.encodeIfPresent(qcSupported, forKey: .qcSupported)
            
            
            
            
            try? container.encodeIfPresent(usingOwnCreds, forKey: .usingOwnCreds)
            
            
            
            
            try? container.encodeIfPresent(maxReattemptsForDeliveryAllowed, forKey: .maxReattemptsForDeliveryAllowed)
            
            
            
            
            try? container.encodeIfPresent(tatToDeliverTheShipment, forKey: .tatToDeliverTheShipment)
            
            
            
            
            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CourierPartnerDetailsSchema
        Used By: Order
    */

    class CourierPartnerDetailsSchema: Codable {
        
        
        public var cpSortKey: String?
        
        public var cpOptions: [CPOptionsSchema]?
        
        public var schemeId: String
        
        public var name: String
        
        public var extensionId: String
        
        public var riderDetails: CPRiderDetailsSchema?
        
        public var qcSupported: Bool?
        
        public var usingOwnCreds: Bool
        
        public var maxReattemptsForDeliveryAllowed: Int?
        
        public var tatToDeliverTheShipment: CPTatToDeliverTheShipmentSchema?
        
        public var isSelfShip: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case cpSortKey = "cp_sort_key"
            
            case cpOptions = "cp_options"
            
            case schemeId = "scheme_id"
            
            case name = "name"
            
            case extensionId = "extension_id"
            
            case riderDetails = "rider_details"
            
            case qcSupported = "qc_supported"
            
            case usingOwnCreds = "using_own_creds"
            
            case maxReattemptsForDeliveryAllowed = "max_reattempts_for_delivery_allowed"
            
            case tatToDeliverTheShipment = "tat_to_deliver_the_shipment"
            
            case isSelfShip = "is_self_ship"
            
        }

        public init(cpOptions: [CPOptionsSchema]? = nil, cpSortKey: String? = nil, extensionId: String, isSelfShip: Bool? = nil, maxReattemptsForDeliveryAllowed: Int? = nil, name: String, qcSupported: Bool? = nil, riderDetails: CPRiderDetailsSchema? = nil, schemeId: String, tatToDeliverTheShipment: CPTatToDeliverTheShipmentSchema? = nil, usingOwnCreds: Bool) {
            
            self.cpSortKey = cpSortKey
            
            self.cpOptions = cpOptions
            
            self.schemeId = schemeId
            
            self.name = name
            
            self.extensionId = extensionId
            
            self.riderDetails = riderDetails
            
            self.qcSupported = qcSupported
            
            self.usingOwnCreds = usingOwnCreds
            
            self.maxReattemptsForDeliveryAllowed = maxReattemptsForDeliveryAllowed
            
            self.tatToDeliverTheShipment = tatToDeliverTheShipment
            
            self.isSelfShip = isSelfShip
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cpSortKey = try container.decode(String.self, forKey: .cpSortKey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cpOptions = try container.decode([CPOptionsSchema].self, forKey: .cpOptions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                schemeId = try container.decode(String.self, forKey: .schemeId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                extensionId = try container.decode(String.self, forKey: .extensionId)
                
            
            
            
                do {
                    riderDetails = try container.decode(CPRiderDetailsSchema.self, forKey: .riderDetails)
                
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
                
            
            
                usingOwnCreds = try container.decode(Bool.self, forKey: .usingOwnCreds)
                
            
            
            
                do {
                    maxReattemptsForDeliveryAllowed = try container.decode(Int.self, forKey: .maxReattemptsForDeliveryAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tatToDeliverTheShipment = try container.decode(CPTatToDeliverTheShipmentSchema.self, forKey: .tatToDeliverTheShipment)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cpSortKey, forKey: .cpSortKey)
            
            
            
            
            try? container.encodeIfPresent(cpOptions, forKey: .cpOptions)
            
            
            
            
            try? container.encodeIfPresent(schemeId, forKey: .schemeId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(riderDetails, forKey: .riderDetails)
            
            
            
            
            try? container.encodeIfPresent(qcSupported, forKey: .qcSupported)
            
            
            
            
            try? container.encodeIfPresent(usingOwnCreds, forKey: .usingOwnCreds)
            
            
            
            
            try? container.encodeIfPresent(maxReattemptsForDeliveryAllowed, forKey: .maxReattemptsForDeliveryAllowed)
            
            
            
            
            try? container.encodeIfPresent(tatToDeliverTheShipment, forKey: .tatToDeliverTheShipment)
            
            
            
            
            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
            
            
        }
        
    }
}


