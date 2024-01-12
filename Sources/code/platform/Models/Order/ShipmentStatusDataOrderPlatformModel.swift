

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ShipmentStatusData
        Used By: Order
    */

    class ShipmentStatusData: Codable {
        
        
        public var meta: [String: Any]?
        
        public var bagList: [String]?
        
        public var id: Int?
        
        public var createdAt: String?
        
        public var createdTs: String?
        
        public var shipmentId: String?
        
        public var status: String?
        
        public var displayName: String?
        
        public var currentShipmentStatus: String?
        
        public var statusCreatedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case meta = "meta"
            
            case bagList = "bag_list"
            
            case id = "id"
            
            case createdAt = "created_at"
            
            case createdTs = "created_ts"
            
            case shipmentId = "shipment_id"
            
            case status = "status"
            
            case displayName = "display_name"
            
            case currentShipmentStatus = "current_shipment_status"
            
            case statusCreatedAt = "status_created_at"
            
        }

        public init(bagList: [String]? = nil, createdAt: String? = nil, createdTs: String? = nil, currentShipmentStatus: String? = nil, displayName: String? = nil, id: Int? = nil, meta: [String: Any]? = nil, shipmentId: String? = nil, status: String? = nil, statusCreatedAt: String? = nil) {
            
            self.meta = meta
            
            self.bagList = bagList
            
            self.id = id
            
            self.createdAt = createdAt
            
            self.createdTs = createdTs
            
            self.shipmentId = shipmentId
            
            self.status = status
            
            self.displayName = displayName
            
            self.currentShipmentStatus = currentShipmentStatus
            
            self.statusCreatedAt = statusCreatedAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bagList = try container.decode([String].self, forKey: .bagList)
                
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
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdTs = try container.decode(String.self, forKey: .createdTs)
                
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
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
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
                    currentShipmentStatus = try container.decode(String.self, forKey: .currentShipmentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    statusCreatedAt = try container.decode(String.self, forKey: .statusCreatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(bagList, forKey: .bagList)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(createdTs, forKey: .createdTs)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)
            
            
            
            
            try? container.encodeIfPresent(statusCreatedAt, forKey: .statusCreatedAt)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ShipmentStatusData
        Used By: Order
    */

    class ShipmentStatusData: Codable {
        
        
        public var meta: [String: Any]?
        
        public var bagList: [String]?
        
        public var id: Int?
        
        public var createdAt: String?
        
        public var createdTs: String?
        
        public var shipmentId: String?
        
        public var status: String?
        
        public var displayName: String?
        
        public var currentShipmentStatus: String?
        
        public var statusCreatedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case meta = "meta"
            
            case bagList = "bag_list"
            
            case id = "id"
            
            case createdAt = "created_at"
            
            case createdTs = "created_ts"
            
            case shipmentId = "shipment_id"
            
            case status = "status"
            
            case displayName = "display_name"
            
            case currentShipmentStatus = "current_shipment_status"
            
            case statusCreatedAt = "status_created_at"
            
        }

        public init(bagList: [String]? = nil, createdAt: String? = nil, createdTs: String? = nil, currentShipmentStatus: String? = nil, displayName: String? = nil, id: Int? = nil, meta: [String: Any]? = nil, shipmentId: String? = nil, status: String? = nil, statusCreatedAt: String? = nil) {
            
            self.meta = meta
            
            self.bagList = bagList
            
            self.id = id
            
            self.createdAt = createdAt
            
            self.createdTs = createdTs
            
            self.shipmentId = shipmentId
            
            self.status = status
            
            self.displayName = displayName
            
            self.currentShipmentStatus = currentShipmentStatus
            
            self.statusCreatedAt = statusCreatedAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bagList = try container.decode([String].self, forKey: .bagList)
                
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
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdTs = try container.decode(String.self, forKey: .createdTs)
                
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
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
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
                    currentShipmentStatus = try container.decode(String.self, forKey: .currentShipmentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    statusCreatedAt = try container.decode(String.self, forKey: .statusCreatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(bagList, forKey: .bagList)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(createdTs, forKey: .createdTs)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)
            
            
            
            
            try? container.encodeIfPresent(statusCreatedAt, forKey: .statusCreatedAt)
            
            
        }
        
    }
}


