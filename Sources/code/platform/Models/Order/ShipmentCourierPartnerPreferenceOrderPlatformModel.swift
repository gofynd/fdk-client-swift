

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ShipmentCourierPartnerPreference
        Used By: Order
    */

    class ShipmentCourierPartnerPreference: Codable {
        
        
        public var schemeId: String
        
        public var courierPartnerName: String
        
        public var extensionId: String
        
        public var remarks: String?
        
        public var tat: TATSchema
        

        public enum CodingKeys: String, CodingKey {
            
            case schemeId = "scheme_id"
            
            case courierPartnerName = "courier_partner_name"
            
            case extensionId = "extension_id"
            
            case remarks = "remarks"
            
            case tat = "tat"
            
        }

        public init(courierPartnerName: String, extensionId: String, remarks: String? = nil, schemeId: String, tat: TATSchema) {
            
            self.schemeId = schemeId
            
            self.courierPartnerName = courierPartnerName
            
            self.extensionId = extensionId
            
            self.remarks = remarks
            
            self.tat = tat
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                schemeId = try container.decode(String.self, forKey: .schemeId)
                
            
            
            
                courierPartnerName = try container.decode(String.self, forKey: .courierPartnerName)
                
            
            
            
                extensionId = try container.decode(String.self, forKey: .extensionId)
                
            
            
            
                do {
                    remarks = try container.decode(String.self, forKey: .remarks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                tat = try container.decode(TATSchema.self, forKey: .tat)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(schemeId, forKey: .schemeId)
            
            
            
            
            try? container.encodeIfPresent(courierPartnerName, forKey: .courierPartnerName)
            
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(remarks, forKey: .remarks)
            
            
            
            
            try? container.encodeIfPresent(tat, forKey: .tat)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ShipmentCourierPartnerPreference
        Used By: Order
    */

    class ShipmentCourierPartnerPreference: Codable {
        
        
        public var schemeId: String
        
        public var courierPartnerName: String
        
        public var extensionId: String
        
        public var remarks: String?
        
        public var tat: TATSchema
        

        public enum CodingKeys: String, CodingKey {
            
            case schemeId = "scheme_id"
            
            case courierPartnerName = "courier_partner_name"
            
            case extensionId = "extension_id"
            
            case remarks = "remarks"
            
            case tat = "tat"
            
        }

        public init(courierPartnerName: String, extensionId: String, remarks: String? = nil, schemeId: String, tat: TATSchema) {
            
            self.schemeId = schemeId
            
            self.courierPartnerName = courierPartnerName
            
            self.extensionId = extensionId
            
            self.remarks = remarks
            
            self.tat = tat
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                schemeId = try container.decode(String.self, forKey: .schemeId)
                
            
            
            
                courierPartnerName = try container.decode(String.self, forKey: .courierPartnerName)
                
            
            
            
                extensionId = try container.decode(String.self, forKey: .extensionId)
                
            
            
            
                do {
                    remarks = try container.decode(String.self, forKey: .remarks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                tat = try container.decode(TATSchema.self, forKey: .tat)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(schemeId, forKey: .schemeId)
            
            
            
            
            try? container.encodeIfPresent(courierPartnerName, forKey: .courierPartnerName)
            
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(remarks, forKey: .remarks)
            
            
            
            
            try? container.encodeIfPresent(tat, forKey: .tat)
            
            
        }
        
    }
}


