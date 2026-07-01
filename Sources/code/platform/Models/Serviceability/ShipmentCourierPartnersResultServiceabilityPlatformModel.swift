

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ShipmentCourierPartnersResult
        Used By: Serviceability
    */

    class ShipmentCourierPartnersResult: Codable {
        
        
        public var extensionId: String
        
        public var schemeId: String
        
        public var areaCode: AreaCode
        
        public var tat: TAT
        
        public var displayName: String
        
        public var isQcEnabled: Bool
        
        public var isSelfShip: Bool
        
        public var isOwnAccount: Bool?
        
        public var ndrAttempts: Int?
        
        public var forwardPickupCutoff: String?
        
        public var reversePickupCutoff: String?
        
        public var qcShipmentItemQuantity: Int?
        
        public var nonQcShipmentItemQuantity: Int?
        
        public var dangerousGoods: Bool?
        
        public var restrictedGoods: Bool?
        
        public var fragileGoods: Bool?
        
        public var coldStorageGoods: Bool?
        
        public var deliveryType: String?
        
        public var isCod: Bool?
        
        public var transportType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case extensionId = "extension_id"
            
            case schemeId = "scheme_id"
            
            case areaCode = "area_code"
            
            case tat = "tat"
            
            case displayName = "display_name"
            
            case isQcEnabled = "is_qc_enabled"
            
            case isSelfShip = "is_self_ship"
            
            case isOwnAccount = "is_own_account"
            
            case ndrAttempts = "ndr_attempts"
            
            case forwardPickupCutoff = "forward_pickup_cutoff"
            
            case reversePickupCutoff = "reverse_pickup_cutoff"
            
            case qcShipmentItemQuantity = "qc_shipment_item_quantity"
            
            case nonQcShipmentItemQuantity = "non_qc_shipment_item_quantity"
            
            case dangerousGoods = "dangerous_goods"
            
            case restrictedGoods = "restricted_goods"
            
            case fragileGoods = "fragile_goods"
            
            case coldStorageGoods = "cold_storage_goods"
            
            case deliveryType = "delivery_type"
            
            case isCod = "is_cod"
            
            case transportType = "transport_type"
            
        }

        public init(areaCode: AreaCode, coldStorageGoods: Bool? = nil, dangerousGoods: Bool? = nil, deliveryType: String? = nil, displayName: String, extensionId: String, forwardPickupCutoff: String? = nil, fragileGoods: Bool? = nil, isCod: Bool? = nil, isOwnAccount: Bool? = nil, isQcEnabled: Bool, isSelfShip: Bool, ndrAttempts: Int? = nil, nonQcShipmentItemQuantity: Int? = nil, qcShipmentItemQuantity: Int? = nil, restrictedGoods: Bool? = nil, reversePickupCutoff: String? = nil, schemeId: String, tat: TAT, transportType: String? = nil) {
            
            self.extensionId = extensionId
            
            self.schemeId = schemeId
            
            self.areaCode = areaCode
            
            self.tat = tat
            
            self.displayName = displayName
            
            self.isQcEnabled = isQcEnabled
            
            self.isSelfShip = isSelfShip
            
            self.isOwnAccount = isOwnAccount
            
            self.ndrAttempts = ndrAttempts
            
            self.forwardPickupCutoff = forwardPickupCutoff
            
            self.reversePickupCutoff = reversePickupCutoff
            
            self.qcShipmentItemQuantity = qcShipmentItemQuantity
            
            self.nonQcShipmentItemQuantity = nonQcShipmentItemQuantity
            
            self.dangerousGoods = dangerousGoods
            
            self.restrictedGoods = restrictedGoods
            
            self.fragileGoods = fragileGoods
            
            self.coldStorageGoods = coldStorageGoods
            
            self.deliveryType = deliveryType
            
            self.isCod = isCod
            
            self.transportType = transportType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                extensionId = try container.decode(String.self, forKey: .extensionId)
                
            
            
            
                schemeId = try container.decode(String.self, forKey: .schemeId)
                
            
            
            
                areaCode = try container.decode(AreaCode.self, forKey: .areaCode)
                
            
            
            
                tat = try container.decode(TAT.self, forKey: .tat)
                
            
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                isQcEnabled = try container.decode(Bool.self, forKey: .isQcEnabled)
                
            
            
            
                isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
                
            
            
            
                do {
                    isOwnAccount = try container.decode(Bool.self, forKey: .isOwnAccount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ndrAttempts = try container.decode(Int.self, forKey: .ndrAttempts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    forwardPickupCutoff = try container.decode(String.self, forKey: .forwardPickupCutoff)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reversePickupCutoff = try container.decode(String.self, forKey: .reversePickupCutoff)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    qcShipmentItemQuantity = try container.decode(Int.self, forKey: .qcShipmentItemQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nonQcShipmentItemQuantity = try container.decode(Int.self, forKey: .nonQcShipmentItemQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dangerousGoods = try container.decode(Bool.self, forKey: .dangerousGoods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    restrictedGoods = try container.decode(Bool.self, forKey: .restrictedGoods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fragileGoods = try container.decode(Bool.self, forKey: .fragileGoods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    coldStorageGoods = try container.decode(Bool.self, forKey: .coldStorageGoods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryType = try container.decode(String.self, forKey: .deliveryType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isCod = try container.decode(Bool.self, forKey: .isCod)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transportType = try container.decode(String.self, forKey: .transportType)
                
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
            
            
            
            
            try? container.encodeIfPresent(tat, forKey: .tat)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(isQcEnabled, forKey: .isQcEnabled)
            
            
            
            
            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
            
            
            
            
            try? container.encodeIfPresent(isOwnAccount, forKey: .isOwnAccount)
            
            
            
            
            try? container.encodeIfPresent(ndrAttempts, forKey: .ndrAttempts)
            
            
            
            
            try? container.encodeIfPresent(forwardPickupCutoff, forKey: .forwardPickupCutoff)
            
            
            
            
            try? container.encodeIfPresent(reversePickupCutoff, forKey: .reversePickupCutoff)
            
            
            
            
            try? container.encodeIfPresent(qcShipmentItemQuantity, forKey: .qcShipmentItemQuantity)
            
            
            
            
            try? container.encodeIfPresent(nonQcShipmentItemQuantity, forKey: .nonQcShipmentItemQuantity)
            
            
            
            
            try? container.encodeIfPresent(dangerousGoods, forKey: .dangerousGoods)
            
            
            
            
            try? container.encodeIfPresent(restrictedGoods, forKey: .restrictedGoods)
            
            
            
            
            try? container.encodeIfPresent(fragileGoods, forKey: .fragileGoods)
            
            
            
            
            try? container.encodeIfPresent(coldStorageGoods, forKey: .coldStorageGoods)
            
            
            
            
            try? container.encodeIfPresent(deliveryType, forKey: .deliveryType)
            
            
            
            
            try? container.encodeIfPresent(isCod, forKey: .isCod)
            
            
            
            
            try? container.encodeIfPresent(transportType, forKey: .transportType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ShipmentCourierPartnersResult
        Used By: Serviceability
    */

    class ShipmentCourierPartnersResult: Codable {
        
        
        public var extensionId: String
        
        public var schemeId: String
        
        public var areaCode: AreaCode
        
        public var tat: TAT
        
        public var displayName: String
        
        public var isQcEnabled: Bool
        
        public var isSelfShip: Bool
        
        public var isOwnAccount: Bool?
        
        public var ndrAttempts: Int?
        
        public var forwardPickupCutoff: String?
        
        public var reversePickupCutoff: String?
        
        public var qcShipmentItemQuantity: Int?
        
        public var nonQcShipmentItemQuantity: Int?
        
        public var dangerousGoods: Bool?
        
        public var restrictedGoods: Bool?
        
        public var fragileGoods: Bool?
        
        public var coldStorageGoods: Bool?
        
        public var deliveryType: String?
        
        public var isCod: Bool?
        
        public var transportType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case extensionId = "extension_id"
            
            case schemeId = "scheme_id"
            
            case areaCode = "area_code"
            
            case tat = "tat"
            
            case displayName = "display_name"
            
            case isQcEnabled = "is_qc_enabled"
            
            case isSelfShip = "is_self_ship"
            
            case isOwnAccount = "is_own_account"
            
            case ndrAttempts = "ndr_attempts"
            
            case forwardPickupCutoff = "forward_pickup_cutoff"
            
            case reversePickupCutoff = "reverse_pickup_cutoff"
            
            case qcShipmentItemQuantity = "qc_shipment_item_quantity"
            
            case nonQcShipmentItemQuantity = "non_qc_shipment_item_quantity"
            
            case dangerousGoods = "dangerous_goods"
            
            case restrictedGoods = "restricted_goods"
            
            case fragileGoods = "fragile_goods"
            
            case coldStorageGoods = "cold_storage_goods"
            
            case deliveryType = "delivery_type"
            
            case isCod = "is_cod"
            
            case transportType = "transport_type"
            
        }

        public init(areaCode: AreaCode, coldStorageGoods: Bool? = nil, dangerousGoods: Bool? = nil, deliveryType: String? = nil, displayName: String, extensionId: String, forwardPickupCutoff: String? = nil, fragileGoods: Bool? = nil, isCod: Bool? = nil, isOwnAccount: Bool? = nil, isQcEnabled: Bool, isSelfShip: Bool, ndrAttempts: Int? = nil, nonQcShipmentItemQuantity: Int? = nil, qcShipmentItemQuantity: Int? = nil, restrictedGoods: Bool? = nil, reversePickupCutoff: String? = nil, schemeId: String, tat: TAT, transportType: String? = nil) {
            
            self.extensionId = extensionId
            
            self.schemeId = schemeId
            
            self.areaCode = areaCode
            
            self.tat = tat
            
            self.displayName = displayName
            
            self.isQcEnabled = isQcEnabled
            
            self.isSelfShip = isSelfShip
            
            self.isOwnAccount = isOwnAccount
            
            self.ndrAttempts = ndrAttempts
            
            self.forwardPickupCutoff = forwardPickupCutoff
            
            self.reversePickupCutoff = reversePickupCutoff
            
            self.qcShipmentItemQuantity = qcShipmentItemQuantity
            
            self.nonQcShipmentItemQuantity = nonQcShipmentItemQuantity
            
            self.dangerousGoods = dangerousGoods
            
            self.restrictedGoods = restrictedGoods
            
            self.fragileGoods = fragileGoods
            
            self.coldStorageGoods = coldStorageGoods
            
            self.deliveryType = deliveryType
            
            self.isCod = isCod
            
            self.transportType = transportType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                extensionId = try container.decode(String.self, forKey: .extensionId)
                
            
            
            
                schemeId = try container.decode(String.self, forKey: .schemeId)
                
            
            
            
                areaCode = try container.decode(AreaCode.self, forKey: .areaCode)
                
            
            
            
                tat = try container.decode(TAT.self, forKey: .tat)
                
            
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                isQcEnabled = try container.decode(Bool.self, forKey: .isQcEnabled)
                
            
            
            
                isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
                
            
            
            
                do {
                    isOwnAccount = try container.decode(Bool.self, forKey: .isOwnAccount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ndrAttempts = try container.decode(Int.self, forKey: .ndrAttempts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    forwardPickupCutoff = try container.decode(String.self, forKey: .forwardPickupCutoff)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reversePickupCutoff = try container.decode(String.self, forKey: .reversePickupCutoff)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    qcShipmentItemQuantity = try container.decode(Int.self, forKey: .qcShipmentItemQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nonQcShipmentItemQuantity = try container.decode(Int.self, forKey: .nonQcShipmentItemQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dangerousGoods = try container.decode(Bool.self, forKey: .dangerousGoods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    restrictedGoods = try container.decode(Bool.self, forKey: .restrictedGoods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fragileGoods = try container.decode(Bool.self, forKey: .fragileGoods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    coldStorageGoods = try container.decode(Bool.self, forKey: .coldStorageGoods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryType = try container.decode(String.self, forKey: .deliveryType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isCod = try container.decode(Bool.self, forKey: .isCod)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transportType = try container.decode(String.self, forKey: .transportType)
                
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
            
            
            
            
            try? container.encodeIfPresent(tat, forKey: .tat)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(isQcEnabled, forKey: .isQcEnabled)
            
            
            
            
            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
            
            
            
            
            try? container.encodeIfPresent(isOwnAccount, forKey: .isOwnAccount)
            
            
            
            
            try? container.encodeIfPresent(ndrAttempts, forKey: .ndrAttempts)
            
            
            
            
            try? container.encodeIfPresent(forwardPickupCutoff, forKey: .forwardPickupCutoff)
            
            
            
            
            try? container.encodeIfPresent(reversePickupCutoff, forKey: .reversePickupCutoff)
            
            
            
            
            try? container.encodeIfPresent(qcShipmentItemQuantity, forKey: .qcShipmentItemQuantity)
            
            
            
            
            try? container.encodeIfPresent(nonQcShipmentItemQuantity, forKey: .nonQcShipmentItemQuantity)
            
            
            
            
            try? container.encodeIfPresent(dangerousGoods, forKey: .dangerousGoods)
            
            
            
            
            try? container.encodeIfPresent(restrictedGoods, forKey: .restrictedGoods)
            
            
            
            
            try? container.encodeIfPresent(fragileGoods, forKey: .fragileGoods)
            
            
            
            
            try? container.encodeIfPresent(coldStorageGoods, forKey: .coldStorageGoods)
            
            
            
            
            try? container.encodeIfPresent(deliveryType, forKey: .deliveryType)
            
            
            
            
            try? container.encodeIfPresent(isCod, forKey: .isCod)
            
            
            
            
            try? container.encodeIfPresent(transportType, forKey: .transportType)
            
            
        }
        
    }
}


