

import Foundation


public extension PlatformClient.Order {
    /*
        Model: OriginalFilter
        Used By: Order
    */

    class OriginalFilter: Codable {
        
        
        public var affiliateShipmentId: String?
        
        public var affiliateId: String?
        
        public var shipmentId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case affiliateShipmentId = "affiliate_shipment_id"
            
            case affiliateId = "affiliate_id"
            
            case shipmentId = "shipment_id"
            
        }

        public init(affiliateId: String? = nil, affiliateShipmentId: String? = nil, shipmentId: String? = nil) {
            
            self.affiliateShipmentId = affiliateShipmentId
            
            self.affiliateId = affiliateId
            
            self.shipmentId = shipmentId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateId = try container.decode(String.self, forKey: .affiliateId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)
            
            
            
            
            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: OriginalFilter
        Used By: Order
    */

    class OriginalFilter: Codable {
        
        
        public var affiliateShipmentId: String?
        
        public var affiliateId: String?
        
        public var shipmentId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case affiliateShipmentId = "affiliate_shipment_id"
            
            case affiliateId = "affiliate_id"
            
            case shipmentId = "shipment_id"
            
        }

        public init(affiliateId: String? = nil, affiliateShipmentId: String? = nil, shipmentId: String? = nil) {
            
            self.affiliateShipmentId = affiliateShipmentId
            
            self.affiliateId = affiliateId
            
            self.shipmentId = shipmentId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateId = try container.decode(String.self, forKey: .affiliateId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)
            
            
            
            
            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
        }
        
    }
}


