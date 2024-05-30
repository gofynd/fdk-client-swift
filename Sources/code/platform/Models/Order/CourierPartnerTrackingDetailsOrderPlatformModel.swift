

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CourierPartnerTrackingDetails
        Used By: Order
    */

    class CourierPartnerTrackingDetails: Codable {
        
        
        public var operationalStatus: String
        
        public var dpStatus: String
        
        public var shipmentId: String
        
        public var awb: String
        
        public var dpStatusUpdatedAt: String
        
        public var remark: String?
        
        public var id: Int?
        
        public var dpLocation: String?
        
        public var estimatedDeliveryDate: String?
        
        public var journey: String
        
        public var meta: [String: Any]?
        
        public var dpName: String
        
        public var promisedDeliveryDate: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case operationalStatus = "operational_status"
            
            case dpStatus = "dp_status"
            
            case shipmentId = "shipment_id"
            
            case awb = "awb"
            
            case dpStatusUpdatedAt = "dp_status_updated_at"
            
            case remark = "remark"
            
            case id = "id"
            
            case dpLocation = "dp_location"
            
            case estimatedDeliveryDate = "estimated_delivery_date"
            
            case journey = "journey"
            
            case meta = "meta"
            
            case dpName = "dp_name"
            
            case promisedDeliveryDate = "promised_delivery_date"
            
        }

        public init(awb: String, dpLocation: String? = nil, dpName: String, dpStatus: String, dpStatusUpdatedAt: String, estimatedDeliveryDate: String? = nil, id: Int? = nil, journey: String, meta: [String: Any]? = nil, operationalStatus: String, promisedDeliveryDate: String? = nil, remark: String? = nil, shipmentId: String) {
            
            self.operationalStatus = operationalStatus
            
            self.dpStatus = dpStatus
            
            self.shipmentId = shipmentId
            
            self.awb = awb
            
            self.dpStatusUpdatedAt = dpStatusUpdatedAt
            
            self.remark = remark
            
            self.id = id
            
            self.dpLocation = dpLocation
            
            self.estimatedDeliveryDate = estimatedDeliveryDate
            
            self.journey = journey
            
            self.meta = meta
            
            self.dpName = dpName
            
            self.promisedDeliveryDate = promisedDeliveryDate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                operationalStatus = try container.decode(String.self, forKey: .operationalStatus)
                
            
            
            
                dpStatus = try container.decode(String.self, forKey: .dpStatus)
                
            
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
            
                awb = try container.decode(String.self, forKey: .awb)
                
            
            
            
                dpStatusUpdatedAt = try container.decode(String.self, forKey: .dpStatusUpdatedAt)
                
            
            
            
                do {
                    remark = try container.decode(String.self, forKey: .remark)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpLocation = try container.decode(String.self, forKey: .dpLocation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    estimatedDeliveryDate = try container.decode(String.self, forKey: .estimatedDeliveryDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                journey = try container.decode(String.self, forKey: .journey)
                
            
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                dpName = try container.decode(String.self, forKey: .dpName)
                
            
            
            
                do {
                    promisedDeliveryDate = try container.decode(String.self, forKey: .promisedDeliveryDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)
            
            
            
            
            try? container.encodeIfPresent(dpStatus, forKey: .dpStatus)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(awb, forKey: .awb)
            
            
            
            
            try? container.encodeIfPresent(dpStatusUpdatedAt, forKey: .dpStatusUpdatedAt)
            
            
            
            
            try? container.encodeIfPresent(remark, forKey: .remark)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(dpLocation, forKey: .dpLocation)
            
            
            
            
            try? container.encodeIfPresent(estimatedDeliveryDate, forKey: .estimatedDeliveryDate)
            
            
            
            
            try? container.encodeIfPresent(journey, forKey: .journey)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(dpName, forKey: .dpName)
            
            
            
            
            try? container.encodeIfPresent(promisedDeliveryDate, forKey: .promisedDeliveryDate)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CourierPartnerTrackingDetails
        Used By: Order
    */

    class CourierPartnerTrackingDetails: Codable {
        
        
        public var operationalStatus: String
        
        public var dpStatus: String
        
        public var shipmentId: String
        
        public var awb: String
        
        public var dpStatusUpdatedAt: String
        
        public var remark: String?
        
        public var id: Int?
        
        public var dpLocation: String?
        
        public var estimatedDeliveryDate: String?
        
        public var journey: String
        
        public var meta: [String: Any]?
        
        public var dpName: String
        
        public var promisedDeliveryDate: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case operationalStatus = "operational_status"
            
            case dpStatus = "dp_status"
            
            case shipmentId = "shipment_id"
            
            case awb = "awb"
            
            case dpStatusUpdatedAt = "dp_status_updated_at"
            
            case remark = "remark"
            
            case id = "id"
            
            case dpLocation = "dp_location"
            
            case estimatedDeliveryDate = "estimated_delivery_date"
            
            case journey = "journey"
            
            case meta = "meta"
            
            case dpName = "dp_name"
            
            case promisedDeliveryDate = "promised_delivery_date"
            
        }

        public init(awb: String, dpLocation: String? = nil, dpName: String, dpStatus: String, dpStatusUpdatedAt: String, estimatedDeliveryDate: String? = nil, id: Int? = nil, journey: String, meta: [String: Any]? = nil, operationalStatus: String, promisedDeliveryDate: String? = nil, remark: String? = nil, shipmentId: String) {
            
            self.operationalStatus = operationalStatus
            
            self.dpStatus = dpStatus
            
            self.shipmentId = shipmentId
            
            self.awb = awb
            
            self.dpStatusUpdatedAt = dpStatusUpdatedAt
            
            self.remark = remark
            
            self.id = id
            
            self.dpLocation = dpLocation
            
            self.estimatedDeliveryDate = estimatedDeliveryDate
            
            self.journey = journey
            
            self.meta = meta
            
            self.dpName = dpName
            
            self.promisedDeliveryDate = promisedDeliveryDate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                operationalStatus = try container.decode(String.self, forKey: .operationalStatus)
                
            
            
            
                dpStatus = try container.decode(String.self, forKey: .dpStatus)
                
            
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
            
                awb = try container.decode(String.self, forKey: .awb)
                
            
            
            
                dpStatusUpdatedAt = try container.decode(String.self, forKey: .dpStatusUpdatedAt)
                
            
            
            
                do {
                    remark = try container.decode(String.self, forKey: .remark)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpLocation = try container.decode(String.self, forKey: .dpLocation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    estimatedDeliveryDate = try container.decode(String.self, forKey: .estimatedDeliveryDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                journey = try container.decode(String.self, forKey: .journey)
                
            
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                dpName = try container.decode(String.self, forKey: .dpName)
                
            
            
            
                do {
                    promisedDeliveryDate = try container.decode(String.self, forKey: .promisedDeliveryDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)
            
            
            
            
            try? container.encodeIfPresent(dpStatus, forKey: .dpStatus)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(awb, forKey: .awb)
            
            
            
            
            try? container.encodeIfPresent(dpStatusUpdatedAt, forKey: .dpStatusUpdatedAt)
            
            
            
            
            try? container.encodeIfPresent(remark, forKey: .remark)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(dpLocation, forKey: .dpLocation)
            
            
            
            
            try? container.encodeIfPresent(estimatedDeliveryDate, forKey: .estimatedDeliveryDate)
            
            
            
            
            try? container.encodeIfPresent(journey, forKey: .journey)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(dpName, forKey: .dpName)
            
            
            
            
            try? container.encodeIfPresent(promisedDeliveryDate, forKey: .promisedDeliveryDate)
            
            
        }
        
    }
}


