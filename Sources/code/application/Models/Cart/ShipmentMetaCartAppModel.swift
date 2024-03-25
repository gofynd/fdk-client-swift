

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: ShipmentMeta
        Used By: Cart
    */
    class ShipmentMeta: Codable {
        
        public var packagingName: String?
        
        public var dimension: String?
        
        public var assignDpFromSb: String?
        
        public var dpSortKey: String?
        
        public var shipmentWeight: String?
        
        public var shipmentVolumetricWeight: String?
        
        public var shipmentChargeableWeight: String?
        
        public var shippingZone: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case packagingName = "packaging_name"
            
            case dimension = "dimension"
            
            case assignDpFromSb = "assign_dp_from_sb"
            
            case dpSortKey = "dp_sort_key"
            
            case shipmentWeight = "shipment_weight"
            
            case shipmentVolumetricWeight = "shipment_volumetric_weight"
            
            case shipmentChargeableWeight = "shipment_chargeable_weight"
            
            case shippingZone = "shipping_zone"
            
        }

        public init(assignDpFromSb: String? = nil, dimension: String? = nil, dpSortKey: String? = nil, packagingName: String? = nil, shipmentChargeableWeight: String? = nil, shipmentVolumetricWeight: String? = nil, shipmentWeight: String? = nil, shippingZone: String? = nil) {
            
            self.packagingName = packagingName
            
            self.dimension = dimension
            
            self.assignDpFromSb = assignDpFromSb
            
            self.dpSortKey = dpSortKey
            
            self.shipmentWeight = shipmentWeight
            
            self.shipmentVolumetricWeight = shipmentVolumetricWeight
            
            self.shipmentChargeableWeight = shipmentChargeableWeight
            
            self.shippingZone = shippingZone
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                packagingName = try container.decode(String.self, forKey: .packagingName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                dimension = try container.decode(String.self, forKey: .dimension)
            
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
                dpSortKey = try container.decode(String.self, forKey: .dpSortKey)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                shipmentWeight = try container.decode(String.self, forKey: .shipmentWeight)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                shipmentVolumetricWeight = try container.decode(String.self, forKey: .shipmentVolumetricWeight)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                shipmentChargeableWeight = try container.decode(String.self, forKey: .shipmentChargeableWeight)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                shippingZone = try container.decode(String.self, forKey: .shippingZone)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(packagingName, forKey: .packagingName)
            
            
            
            try? container.encodeIfPresent(dimension, forKey: .dimension)
            
            
            
            try? container.encodeIfPresent(assignDpFromSb, forKey: .assignDpFromSb)
            
            
            
            try? container.encodeIfPresent(dpSortKey, forKey: .dpSortKey)
            
            
            
            try? container.encodeIfPresent(shipmentWeight, forKey: .shipmentWeight)
            
            
            
            try? container.encodeIfPresent(shipmentVolumetricWeight, forKey: .shipmentVolumetricWeight)
            
            
            
            try? container.encodeIfPresent(shipmentChargeableWeight, forKey: .shipmentChargeableWeight)
            
            
            
            try? container.encodeIfPresent(shippingZone, forKey: .shippingZone)
            
            
        }
        
    }
}
