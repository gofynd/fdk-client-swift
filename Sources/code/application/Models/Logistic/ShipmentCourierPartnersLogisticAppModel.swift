

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
        

        public enum CodingKeys: String, CodingKey {
            
            case extensionId = "extension_id"
            
            case schemeId = "scheme_id"
            
            case areaCode = "area_code"
            
            case tat = "tat"
            
            case displayName = "display_name"
            
            case isQcEnabled = "is_qc_enabled"
            
            case isSelfShip = "is_self_ship"
            
        }

        public init(areaCode: AreaCode, displayName: String, extensionId: String, isQcEnabled: Bool, isSelfShip: Bool, schemeId: String, tat: CourierPartnersTat) {
            
            self.extensionId = extensionId
            
            self.schemeId = schemeId
            
            self.areaCode = areaCode
            
            self.tat = tat
            
            self.displayName = displayName
            
            self.isQcEnabled = isQcEnabled
            
            self.isSelfShip = isSelfShip
            
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
            
            
        }
        
    }
}
