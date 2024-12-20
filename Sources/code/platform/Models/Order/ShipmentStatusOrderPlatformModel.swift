

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ShipmentStatus
        Used By: Order
    */

    class ShipmentStatus: Codable {
        
        
        public var currentShipmentStatus: String?
        
        public var meta: [String: Any]?
        
        public var id: Int?
        
        public var bagList: [String]?
        
        public var title: String
        
        public var displayName: String?
        
        public var createdAt: String?
        
        public var createdTs: String?
        
        public var shipmentId: String?
        
        public var statusCreatedAt: String?
        
        public var updatedTs: String?
        
        public var status: String
        

        public enum CodingKeys: String, CodingKey {
            
            case currentShipmentStatus = "current_shipment_status"
            
            case meta = "meta"
            
            case id = "id"
            
            case bagList = "bag_list"
            
            case title = "title"
            
            case displayName = "display_name"
            
            case createdAt = "created_at"
            
            case createdTs = "created_ts"
            
            case shipmentId = "shipment_id"
            
            case statusCreatedAt = "status_created_at"
            
            case updatedTs = "updated_ts"
            
            case status = "status"
            
        }

        public init(bagList: [String]? = nil, createdAt: String? = nil, createdTs: String? = nil, currentShipmentStatus: String? = nil, displayName: String? = nil, id: Int? = nil, meta: [String: Any]? = nil, shipmentId: String? = nil, status: String, statusCreatedAt: String? = nil, title: String, updatedTs: String? = nil) {
            
            self.currentShipmentStatus = currentShipmentStatus
            
            self.meta = meta
            
            self.id = id
            
            self.bagList = bagList
            
            self.title = title
            
            self.displayName = displayName
            
            self.createdAt = createdAt
            
            self.createdTs = createdTs
            
            self.shipmentId = shipmentId
            
            self.statusCreatedAt = statusCreatedAt
            
            self.updatedTs = updatedTs
            
            self.status = status
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    currentShipmentStatus = try container.decode(String.self, forKey: .currentShipmentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
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
                    bagList = try container.decode([String].self, forKey: .bagList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                title = try container.decode(String.self, forKey: .title)
                
            
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
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
                    statusCreatedAt = try container.decode(String.self, forKey: .statusCreatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedTs = try container.decode(String.self, forKey: .updatedTs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(bagList, forKey: .bagList)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(createdTs, forKey: .createdTs)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(statusCreatedAt, forKey: .statusCreatedAt)
            
            
            
            
            try? container.encodeIfPresent(updatedTs, forKey: .updatedTs)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ShipmentStatus
        Used By: Order
    */

    class ShipmentStatus: Codable {
        
        
        public var currentShipmentStatus: String?
        
        public var meta: [String: Any]?
        
        public var id: Int?
        
        public var bagList: [String]?
        
        public var title: String
        
        public var displayName: String?
        
        public var createdAt: String?
        
        public var createdTs: String?
        
        public var shipmentId: String?
        
        public var statusCreatedAt: String?
        
        public var updatedTs: String?
        
        public var status: String
        

        public enum CodingKeys: String, CodingKey {
            
            case currentShipmentStatus = "current_shipment_status"
            
            case meta = "meta"
            
            case id = "id"
            
            case bagList = "bag_list"
            
            case title = "title"
            
            case displayName = "display_name"
            
            case createdAt = "created_at"
            
            case createdTs = "created_ts"
            
            case shipmentId = "shipment_id"
            
            case statusCreatedAt = "status_created_at"
            
            case updatedTs = "updated_ts"
            
            case status = "status"
            
        }

        public init(bagList: [String]? = nil, createdAt: String? = nil, createdTs: String? = nil, currentShipmentStatus: String? = nil, displayName: String? = nil, id: Int? = nil, meta: [String: Any]? = nil, shipmentId: String? = nil, status: String, statusCreatedAt: String? = nil, title: String, updatedTs: String? = nil) {
            
            self.currentShipmentStatus = currentShipmentStatus
            
            self.meta = meta
            
            self.id = id
            
            self.bagList = bagList
            
            self.title = title
            
            self.displayName = displayName
            
            self.createdAt = createdAt
            
            self.createdTs = createdTs
            
            self.shipmentId = shipmentId
            
            self.statusCreatedAt = statusCreatedAt
            
            self.updatedTs = updatedTs
            
            self.status = status
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    currentShipmentStatus = try container.decode(String.self, forKey: .currentShipmentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
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
                    bagList = try container.decode([String].self, forKey: .bagList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                title = try container.decode(String.self, forKey: .title)
                
            
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
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
                    statusCreatedAt = try container.decode(String.self, forKey: .statusCreatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedTs = try container.decode(String.self, forKey: .updatedTs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(bagList, forKey: .bagList)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(createdTs, forKey: .createdTs)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(statusCreatedAt, forKey: .statusCreatedAt)
            
            
            
            
            try? container.encodeIfPresent(updatedTs, forKey: .updatedTs)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
}


