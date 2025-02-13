

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: ShipmentLogisticsMetaAccount
        Used By: Cart
    */

    class ShipmentLogisticsMetaAccount: Codable {
        
        
        public var name: String?
        
        public var displayName: String?
        
        public var fmPriority: Double?
        
        public var lmPriority: Double?
        
        public var rvpPriority: Double?
        
        public var type: String?
        
        public var subType: String?
        
        public var parentId: String?
        
        public var isActive: Bool?
        
        public var paymentMode: String?
        
        public var assignDpFromSb: String?
        
        public var internalAccountId: String?
        
        public var externalAccountId: String?
        
        public var fPriority: Double?
        
        public var rPriority: Double?
        
        public var dpShippingCharges: Double?
        
        public var qcEnabled: Bool?
        
        public var areaCode: ShipmentLogisticsMetaAccountAreaCode?
        
        public var operations: [String]?
        
        public var dpTat: ShipmentLogisticsMetaAccountDpTat?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case displayName = "display_name"
            
            case fmPriority = "fm_priority"
            
            case lmPriority = "lm_priority"
            
            case rvpPriority = "rvp_priority"
            
            case type = "type"
            
            case subType = "sub_type"
            
            case parentId = "parent_id"
            
            case isActive = "is_active"
            
            case paymentMode = "payment_mode"
            
            case assignDpFromSb = "assign_dp_from_sb"
            
            case internalAccountId = "internal_account_id"
            
            case externalAccountId = "external_account_id"
            
            case fPriority = "f_priority"
            
            case rPriority = "r_priority"
            
            case dpShippingCharges = "dp_shipping_charges"
            
            case qcEnabled = "qc_enabled"
            
            case areaCode = "area_code"
            
            case operations = "operations"
            
            case dpTat = "dp_tat"
            
        }

        public init(areaCode: ShipmentLogisticsMetaAccountAreaCode? = nil, assignDpFromSb: String? = nil, displayName: String? = nil, dpShippingCharges: Double? = nil, dpTat: ShipmentLogisticsMetaAccountDpTat? = nil, externalAccountId: String? = nil, fmPriority: Double? = nil, fPriority: Double? = nil, internalAccountId: String? = nil, isActive: Bool? = nil, lmPriority: Double? = nil, name: String? = nil, operations: [String]? = nil, parentId: String? = nil, paymentMode: String? = nil, qcEnabled: Bool? = nil, rvpPriority: Double? = nil, rPriority: Double? = nil, subType: String? = nil, type: String? = nil) {
            
            self.name = name
            
            self.displayName = displayName
            
            self.fmPriority = fmPriority
            
            self.lmPriority = lmPriority
            
            self.rvpPriority = rvpPriority
            
            self.type = type
            
            self.subType = subType
            
            self.parentId = parentId
            
            self.isActive = isActive
            
            self.paymentMode = paymentMode
            
            self.assignDpFromSb = assignDpFromSb
            
            self.internalAccountId = internalAccountId
            
            self.externalAccountId = externalAccountId
            
            self.fPriority = fPriority
            
            self.rPriority = rPriority
            
            self.dpShippingCharges = dpShippingCharges
            
            self.qcEnabled = qcEnabled
            
            self.areaCode = areaCode
            
            self.operations = operations
            
            self.dpTat = dpTat
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
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
                    fmPriority = try container.decode(Double.self, forKey: .fmPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lmPriority = try container.decode(Double.self, forKey: .lmPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rvpPriority = try container.decode(Double.self, forKey: .rvpPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subType = try container.decode(String.self, forKey: .subType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentId = try container.decode(String.self, forKey: .parentId)
                
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
                    paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    assignDpFromSb = try container.decode(String.self, forKey: .assignDpFromSb)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    internalAccountId = try container.decode(String.self, forKey: .internalAccountId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    externalAccountId = try container.decode(String.self, forKey: .externalAccountId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fPriority = try container.decode(Double.self, forKey: .fPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rPriority = try container.decode(Double.self, forKey: .rPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpShippingCharges = try container.decode(Double.self, forKey: .dpShippingCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    qcEnabled = try container.decode(Bool.self, forKey: .qcEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    areaCode = try container.decode(ShipmentLogisticsMetaAccountAreaCode.self, forKey: .areaCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    operations = try container.decode([String].self, forKey: .operations)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpTat = try container.decode(ShipmentLogisticsMetaAccountDpTat.self, forKey: .dpTat)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(fmPriority, forKey: .fmPriority)
            
            
            
            
            try? container.encodeIfPresent(lmPriority, forKey: .lmPriority)
            
            
            
            
            try? container.encodeIfPresent(rvpPriority, forKey: .rvpPriority)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(subType, forKey: .subType)
            
            
            
            
            try? container.encodeIfPresent(parentId, forKey: .parentId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(assignDpFromSb, forKey: .assignDpFromSb)
            
            
            
            
            try? container.encodeIfPresent(internalAccountId, forKey: .internalAccountId)
            
            
            
            
            try? container.encodeIfPresent(externalAccountId, forKey: .externalAccountId)
            
            
            
            
            try? container.encodeIfPresent(fPriority, forKey: .fPriority)
            
            
            
            
            try? container.encodeIfPresent(rPriority, forKey: .rPriority)
            
            
            
            
            try? container.encodeIfPresent(dpShippingCharges, forKey: .dpShippingCharges)
            
            
            
            
            try? container.encodeIfPresent(qcEnabled, forKey: .qcEnabled)
            
            
            
            
            try? container.encodeIfPresent(areaCode, forKey: .areaCode)
            
            
            
            
            try? container.encodeIfPresent(operations, forKey: .operations)
            
            
            
            
            try? container.encodeIfPresent(dpTat, forKey: .dpTat)
            
            
        }
        
    }
}


