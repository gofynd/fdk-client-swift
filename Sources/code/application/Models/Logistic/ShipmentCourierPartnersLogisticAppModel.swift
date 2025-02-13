

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: ShipmentCourierPartners
        Used By: Logistic
    */
    class ShipmentCourierPartners: Codable {
        
        public var extensionId: String
        
        public var schemeId: String
        
        public var areaCode: AreaCode
        
        public var tat: CourierPartnersTat
        
        public var displayName: String
        
        public var isQcEnabled: Bool
        
        public var isSelfShip: Bool
        
        public var isOwnAccount: Bool
        
        public var forwardPickupCutoff: String?
        
        public var reversePickupCutoff: String?
        
        public var ndrAttempts: Int?
        
        public var weight: Int?
        
        public var volumetricWeight: Int?
        
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
            
            case forwardPickupCutoff = "forward_pickup_cutoff"
            
            case reversePickupCutoff = "reverse_pickup_cutoff"
            
            case ndrAttempts = "ndr_attempts"
            
            case weight = "weight"
            
            case volumetricWeight = "volumetric_weight"
            
            case transportType = "transport_type"
            
        }

        public init(areaCode: AreaCode, displayName: String, extensionId: String, forwardPickupCutoff: String? = nil, isOwnAccount: Bool, isQcEnabled: Bool, isSelfShip: Bool, ndrAttempts: Int? = nil, reversePickupCutoff: String? = nil, schemeId: String, tat: CourierPartnersTat, transportType: String? = nil, volumetricWeight: Int? = nil, weight: Int? = nil) {
            
            self.extensionId = extensionId
            
            self.schemeId = schemeId
            
            self.areaCode = areaCode
            
            self.tat = tat
            
            self.displayName = displayName
            
            self.isQcEnabled = isQcEnabled
            
            self.isSelfShip = isSelfShip
            
            self.isOwnAccount = isOwnAccount
            
            self.forwardPickupCutoff = forwardPickupCutoff
            
            self.reversePickupCutoff = reversePickupCutoff
            
            self.ndrAttempts = ndrAttempts
            
            self.weight = weight
            
            self.volumetricWeight = volumetricWeight
            
            self.transportType = transportType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            extensionId = try container.decode(String.self, forKey: .extensionId)
            
            
            
            
            schemeId = try container.decode(String.self, forKey: .schemeId)
            
            
            
            
            areaCode = try container.decode(AreaCode.self, forKey: .areaCode)
            
            
            
            
            tat = try container.decode(CourierPartnersTat.self, forKey: .tat)
            
            
            
            
            displayName = try container.decode(String.self, forKey: .displayName)
            
            
            
            
            isQcEnabled = try container.decode(Bool.self, forKey: .isQcEnabled)
            
            
            
            
            isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
            
            
            
            
            isOwnAccount = try container.decode(Bool.self, forKey: .isOwnAccount)
            
            
            
            
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
                ndrAttempts = try container.decode(Int.self, forKey: .ndrAttempts)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                weight = try container.decode(Int.self, forKey: .weight)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                volumetricWeight = try container.decode(Int.self, forKey: .volumetricWeight)
            
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
            
            
            
            try? container.encodeIfPresent(forwardPickupCutoff, forKey: .forwardPickupCutoff)
            
            
            
            try? container.encodeIfPresent(reversePickupCutoff, forKey: .reversePickupCutoff)
            
            
            
            try? container.encodeIfPresent(ndrAttempts, forKey: .ndrAttempts)
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            try? container.encodeIfPresent(volumetricWeight, forKey: .volumetricWeight)
            
            
            
            try? container.encodeIfPresent(transportType, forKey: .transportType)
            
            
        }
        
    }
}
