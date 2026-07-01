

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ShipmentsCourierPartner
        Used By: Serviceability
    */

    class ShipmentsCourierPartner: Codable {
        
        
        public var extensionId: String?
        
        public var schemeId: String?
        
        public var areaCode: AreaCode?
        
        public var tat: TAT?
        
        public var displayName: String?
        
        public var isQcEnabled: Bool?
        
        public var isSelfShip: Bool?
        
        public var isOwnAccount: Bool?
        
        public var ndrAttempts: Int?
        
        public var forwardPickupCutoff: String?
        
        public var reversePickupCutoff: String?
        
        public var qcShipmentItemQuantity: Int?
        
        public var nonQcShipmentItemQuantity: Int?
        

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
            
        }

        public init(areaCode: AreaCode? = nil, displayName: String? = nil, extensionId: String? = nil, forwardPickupCutoff: String? = nil, isOwnAccount: Bool? = nil, isQcEnabled: Bool? = nil, isSelfShip: Bool? = nil, ndrAttempts: Int? = nil, nonQcShipmentItemQuantity: Int? = nil, qcShipmentItemQuantity: Int? = nil, reversePickupCutoff: String? = nil, schemeId: String? = nil, tat: TAT? = nil) {
            
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
                    areaCode = try container.decode(AreaCode.self, forKey: .areaCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tat = try container.decode(TAT.self, forKey: .tat)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isQcEnabled = try container.decode(Bool.self, forKey: .isQcEnabled)
                
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
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ShipmentsCourierPartner
        Used By: Serviceability
    */

    class ShipmentsCourierPartner: Codable {
        
        
        public var extensionId: String?
        
        public var schemeId: String?
        
        public var areaCode: AreaCode?
        
        public var tat: TAT?
        
        public var displayName: String?
        
        public var isQcEnabled: Bool?
        
        public var isSelfShip: Bool?
        
        public var isOwnAccount: Bool?
        
        public var ndrAttempts: Int?
        
        public var forwardPickupCutoff: String?
        
        public var reversePickupCutoff: String?
        
        public var qcShipmentItemQuantity: Int?
        
        public var nonQcShipmentItemQuantity: Int?
        

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
            
        }

        public init(areaCode: AreaCode? = nil, displayName: String? = nil, extensionId: String? = nil, forwardPickupCutoff: String? = nil, isOwnAccount: Bool? = nil, isQcEnabled: Bool? = nil, isSelfShip: Bool? = nil, ndrAttempts: Int? = nil, nonQcShipmentItemQuantity: Int? = nil, qcShipmentItemQuantity: Int? = nil, reversePickupCutoff: String? = nil, schemeId: String? = nil, tat: TAT? = nil) {
            
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
                    areaCode = try container.decode(AreaCode.self, forKey: .areaCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tat = try container.decode(TAT.self, forKey: .tat)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isQcEnabled = try container.decode(Bool.self, forKey: .isQcEnabled)
                
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
            
            
        }
        
    }
}


