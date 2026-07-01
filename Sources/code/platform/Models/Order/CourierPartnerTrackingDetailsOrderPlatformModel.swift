

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CourierPartnerTrackingDetails
        Used By: Order
    */

    class CourierPartnerTrackingDetails: Codable {
        
        
        public var awb: String
        
        public var dpLocation: String?
        
        public var dpName: String
        
        public var dpStatus: String?
        
        public var dpStatusUpdatedAt: String
        
        public var estimatedDeliveryDate: String?
        
        public var id: Int?
        
        public var journey: String
        
        public var meta: [String: Any]?
        
        public var operationalStatus: String?
        
        public var promisedDeliveryDate: String?
        
        public var remark: String?
        
        public var shipmentId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case awb = "awb"
            
            case dpLocation = "dp_location"
            
            case dpName = "dp_name"
            
            case dpStatus = "dp_status"
            
            case dpStatusUpdatedAt = "dp_status_updated_at"
            
            case estimatedDeliveryDate = "estimated_delivery_date"
            
            case id = "id"
            
            case journey = "journey"
            
            case meta = "meta"
            
            case operationalStatus = "operational_status"
            
            case promisedDeliveryDate = "promised_delivery_date"
            
            case remark = "remark"
            
            case shipmentId = "shipment_id"
            
        }

        public init(awb: String, dpLocation: String? = nil, dpName: String, dpStatus: String? = nil, dpStatusUpdatedAt: String, estimatedDeliveryDate: String? = nil, id: Int? = nil, journey: String, meta: [String: Any]? = nil, operationalStatus: String? = nil, promisedDeliveryDate: String? = nil, remark: String? = nil, shipmentId: String) {
            
            self.awb = awb
            
            self.dpLocation = dpLocation
            
            self.dpName = dpName
            
            self.dpStatus = dpStatus
            
            self.dpStatusUpdatedAt = dpStatusUpdatedAt
            
            self.estimatedDeliveryDate = estimatedDeliveryDate
            
            self.id = id
            
            self.journey = journey
            
            self.meta = meta
            
            self.operationalStatus = operationalStatus
            
            self.promisedDeliveryDate = promisedDeliveryDate
            
            self.remark = remark
            
            self.shipmentId = shipmentId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                awb = try container.decode(String.self, forKey: .awb)
                
            
            
            
                do {
                    dpLocation = try container.decode(String.self, forKey: .dpLocation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                dpName = try container.decode(String.self, forKey: .dpName)
                
            
            
            
                do {
                    dpStatus = try container.decode(String.self, forKey: .dpStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                dpStatusUpdatedAt = try container.decode(String.self, forKey: .dpStatusUpdatedAt)
                
            
            
            
                do {
                    estimatedDeliveryDate = try container.decode(String.self, forKey: .estimatedDeliveryDate)
                
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
                
            
            
                journey = try container.decode(String.self, forKey: .journey)
                
            
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    operationalStatus = try container.decode(String.self, forKey: .operationalStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promisedDeliveryDate = try container.decode(String.self, forKey: .promisedDeliveryDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    remark = try container.decode(String.self, forKey: .remark)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(awb, forKey: .awb)
            
            
            
            
            try? container.encodeIfPresent(dpLocation, forKey: .dpLocation)
            
            
            
            
            try? container.encodeIfPresent(dpName, forKey: .dpName)
            
            
            
            
            try? container.encodeIfPresent(dpStatus, forKey: .dpStatus)
            
            
            
            
            try? container.encodeIfPresent(dpStatusUpdatedAt, forKey: .dpStatusUpdatedAt)
            
            
            
            
            try? container.encodeIfPresent(estimatedDeliveryDate, forKey: .estimatedDeliveryDate)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(journey, forKey: .journey)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)
            
            
            
            
            try? container.encodeIfPresent(promisedDeliveryDate, forKey: .promisedDeliveryDate)
            
            
            
            
            try? container.encodeIfPresent(remark, forKey: .remark)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CourierPartnerTrackingDetails
        Used By: Order
    */

    class CourierPartnerTrackingDetails: Codable {
        
        
        public var awb: String
        
        public var dpLocation: String?
        
        public var dpName: String
        
        public var dpStatus: String?
        
        public var dpStatusUpdatedAt: String
        
        public var estimatedDeliveryDate: String?
        
        public var id: Int?
        
        public var journey: String
        
        public var meta: [String: Any]?
        
        public var operationalStatus: String?
        
        public var promisedDeliveryDate: String?
        
        public var remark: String?
        
        public var shipmentId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case awb = "awb"
            
            case dpLocation = "dp_location"
            
            case dpName = "dp_name"
            
            case dpStatus = "dp_status"
            
            case dpStatusUpdatedAt = "dp_status_updated_at"
            
            case estimatedDeliveryDate = "estimated_delivery_date"
            
            case id = "id"
            
            case journey = "journey"
            
            case meta = "meta"
            
            case operationalStatus = "operational_status"
            
            case promisedDeliveryDate = "promised_delivery_date"
            
            case remark = "remark"
            
            case shipmentId = "shipment_id"
            
        }

        public init(awb: String, dpLocation: String? = nil, dpName: String, dpStatus: String? = nil, dpStatusUpdatedAt: String, estimatedDeliveryDate: String? = nil, id: Int? = nil, journey: String, meta: [String: Any]? = nil, operationalStatus: String? = nil, promisedDeliveryDate: String? = nil, remark: String? = nil, shipmentId: String) {
            
            self.awb = awb
            
            self.dpLocation = dpLocation
            
            self.dpName = dpName
            
            self.dpStatus = dpStatus
            
            self.dpStatusUpdatedAt = dpStatusUpdatedAt
            
            self.estimatedDeliveryDate = estimatedDeliveryDate
            
            self.id = id
            
            self.journey = journey
            
            self.meta = meta
            
            self.operationalStatus = operationalStatus
            
            self.promisedDeliveryDate = promisedDeliveryDate
            
            self.remark = remark
            
            self.shipmentId = shipmentId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                awb = try container.decode(String.self, forKey: .awb)
                
            
            
            
                do {
                    dpLocation = try container.decode(String.self, forKey: .dpLocation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                dpName = try container.decode(String.self, forKey: .dpName)
                
            
            
            
                do {
                    dpStatus = try container.decode(String.self, forKey: .dpStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                dpStatusUpdatedAt = try container.decode(String.self, forKey: .dpStatusUpdatedAt)
                
            
            
            
                do {
                    estimatedDeliveryDate = try container.decode(String.self, forKey: .estimatedDeliveryDate)
                
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
                
            
            
                journey = try container.decode(String.self, forKey: .journey)
                
            
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    operationalStatus = try container.decode(String.self, forKey: .operationalStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promisedDeliveryDate = try container.decode(String.self, forKey: .promisedDeliveryDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    remark = try container.decode(String.self, forKey: .remark)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(awb, forKey: .awb)
            
            
            
            
            try? container.encodeIfPresent(dpLocation, forKey: .dpLocation)
            
            
            
            
            try? container.encodeIfPresent(dpName, forKey: .dpName)
            
            
            
            
            try? container.encodeIfPresent(dpStatus, forKey: .dpStatus)
            
            
            
            
            try? container.encodeIfPresent(dpStatusUpdatedAt, forKey: .dpStatusUpdatedAt)
            
            
            
            
            try? container.encodeIfPresent(estimatedDeliveryDate, forKey: .estimatedDeliveryDate)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(journey, forKey: .journey)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)
            
            
            
            
            try? container.encodeIfPresent(promisedDeliveryDate, forKey: .promisedDeliveryDate)
            
            
            
            
            try? container.encodeIfPresent(remark, forKey: .remark)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
        }
        
    }
}


