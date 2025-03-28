

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: ResponseGetInvoiceShipment
        Used By: Order
    */
    class ResponseGetInvoiceShipment: Codable {
        
        public var presignedType: String
        
        public var success: Bool
        
        public var shipmentId: String
        
        public var presignedUrl: String
        
        public var entityId: String?
        
        public var expiresIn: Int?
        
        public var url: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case presignedType = "presigned_type"
            
            case success = "success"
            
            case shipmentId = "shipment_id"
            
            case presignedUrl = "presigned_url"
            
            case entityId = "entity_id"
            
            case expiresIn = "expires_in"
            
            case url = "url"
            
        }

        public init(entityId: String? = nil, expiresIn: Int? = nil, presignedType: String, presignedUrl: String, shipmentId: String, success: Bool, url: String? = nil) {
            
            self.presignedType = presignedType
            
            self.success = success
            
            self.shipmentId = shipmentId
            
            self.presignedUrl = presignedUrl
            
            self.entityId = entityId
            
            self.expiresIn = expiresIn
            
            self.url = url
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            presignedType = try container.decode(String.self, forKey: .presignedType)
            
            
            
            
            success = try container.decode(Bool.self, forKey: .success)
            
            
            
            
            shipmentId = try container.decode(String.self, forKey: .shipmentId)
            
            
            
            
            presignedUrl = try container.decode(String.self, forKey: .presignedUrl)
            
            
            
            
            do {
                entityId = try container.decode(String.self, forKey: .entityId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                expiresIn = try container.decode(Int.self, forKey: .expiresIn)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                url = try container.decode(String.self, forKey: .url)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(presignedType, forKey: .presignedType)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            try? container.encodeIfPresent(presignedUrl, forKey: .presignedUrl)
            
            
            
            try? container.encodeIfPresent(entityId, forKey: .entityId)
            
            
            
            try? container.encodeIfPresent(expiresIn, forKey: .expiresIn)
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
        }
        
    }
}
