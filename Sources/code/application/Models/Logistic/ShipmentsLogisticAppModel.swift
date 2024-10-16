

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: Shipments
        Used By: Logistic
    */
    class Shipments: Codable {
        
        public var id: String?
        
        public var locationId: Double?
        
        public var locationTags: [String]?
        
        public var shipmentWeight: Double?
        
        public var shipmentVolumetricWeight: Double?
        
        public var shipmentCost: Double?
        
        public var shipmentDimension: ShipmentDimension?
        
        public var courierPartnerSchemes: [String]?
        
        public var articles: [ShipmentsArticles]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case locationId = "location_id"
            
            case locationTags = "location_tags"
            
            case shipmentWeight = "shipment_weight"
            
            case shipmentVolumetricWeight = "shipment_volumetric_weight"
            
            case shipmentCost = "shipment_cost"
            
            case shipmentDimension = "shipment_dimension"
            
            case courierPartnerSchemes = "courier_partner_schemes"
            
            case articles = "articles"
            
        }

        public init(articles: [ShipmentsArticles]? = nil, courierPartnerSchemes: [String]? = nil, id: String? = nil, locationId: Double? = nil, locationTags: [String]? = nil, shipmentCost: Double? = nil, shipmentDimension: ShipmentDimension? = nil, shipmentVolumetricWeight: Double? = nil, shipmentWeight: Double? = nil) {
            
            self.id = id
            
            self.locationId = locationId
            
            self.locationTags = locationTags
            
            self.shipmentWeight = shipmentWeight
            
            self.shipmentVolumetricWeight = shipmentVolumetricWeight
            
            self.shipmentCost = shipmentCost
            
            self.shipmentDimension = shipmentDimension
            
            self.courierPartnerSchemes = courierPartnerSchemes
            
            self.articles = articles
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                id = try container.decode(String.self, forKey: .id)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                locationId = try container.decode(Double.self, forKey: .locationId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                locationTags = try container.decode([String].self, forKey: .locationTags)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                shipmentWeight = try container.decode(Double.self, forKey: .shipmentWeight)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                shipmentVolumetricWeight = try container.decode(Double.self, forKey: .shipmentVolumetricWeight)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                shipmentCost = try container.decode(Double.self, forKey: .shipmentCost)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                shipmentDimension = try container.decode(ShipmentDimension.self, forKey: .shipmentDimension)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                courierPartnerSchemes = try container.decode([String].self, forKey: .courierPartnerSchemes)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                articles = try container.decode([ShipmentsArticles].self, forKey: .articles)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(locationId, forKey: .locationId)
            
            
            
            try? container.encodeIfPresent(locationTags, forKey: .locationTags)
            
            
            
            try? container.encodeIfPresent(shipmentWeight, forKey: .shipmentWeight)
            
            
            
            try? container.encodeIfPresent(shipmentVolumetricWeight, forKey: .shipmentVolumetricWeight)
            
            
            
            try? container.encodeIfPresent(shipmentCost, forKey: .shipmentCost)
            
            
            
            try? container.encodeIfPresent(shipmentDimension, forKey: .shipmentDimension)
            
            
            
            try? container.encodeIfPresent(courierPartnerSchemes, forKey: .courierPartnerSchemes)
            
            
            
            try? container.encodeIfPresent(articles, forKey: .articles)
            
            
        }
        
    }
}
