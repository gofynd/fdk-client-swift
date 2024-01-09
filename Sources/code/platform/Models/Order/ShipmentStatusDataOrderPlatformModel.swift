

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
        
        public var shipmentId: String?
        
        public var status: String?
        
        public var displayName: String?
        
        public var currentShipmentStatus: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case meta = "meta"
            
            case bagList = "bag_list"
            
            case id = "id"
            
            case createdAt = "created_at"
            
            case shipmentId = "shipment_id"
            
            case status = "status"
            
            case displayName = "display_name"
            
            case currentShipmentStatus = "current_shipment_status"
            
        }

        public init(bagList: [String]? = nil, createdAt: String? = nil, currentShipmentStatus: String? = nil, displayName: String? = nil, id: Int? = nil, meta: [String: Any]? = nil, shipmentId: String? = nil, status: String? = nil) {
            
            self.meta = meta
            
            self.bagList = bagList
            
            self.id = id
            
            self.createdAt = createdAt
            
            self.shipmentId = shipmentId
            
            self.status = status
            
            self.displayName = displayName
            
            self.currentShipmentStatus = currentShipmentStatus
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(meta, forKey: .meta)
            
            
            
            
            try? container.encode(bagList, forKey: .bagList)
            
            
            
            
            try? container.encode(id, forKey: .id)
            
            
            
            
            try? container.encode(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encode(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encode(status, forKey: .status)
            
            
            
            
            try? container.encode(displayName, forKey: .displayName)
            
            
            
            
            try? container.encode(currentShipmentStatus, forKey: .currentShipmentStatus)
            
            
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
        
        public var shipmentId: String?
        
        public var status: String?
        
        public var displayName: String?
        
        public var currentShipmentStatus: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case meta = "meta"
            
            case bagList = "bag_list"
            
            case id = "id"
            
            case createdAt = "created_at"
            
            case shipmentId = "shipment_id"
            
            case status = "status"
            
            case displayName = "display_name"
            
            case currentShipmentStatus = "current_shipment_status"
            
        }

        public init(bagList: [String]? = nil, createdAt: String? = nil, currentShipmentStatus: String? = nil, displayName: String? = nil, id: Int? = nil, meta: [String: Any]? = nil, shipmentId: String? = nil, status: String? = nil) {
            
            self.meta = meta
            
            self.bagList = bagList
            
            self.id = id
            
            self.createdAt = createdAt
            
            self.shipmentId = shipmentId
            
            self.status = status
            
            self.displayName = displayName
            
            self.currentShipmentStatus = currentShipmentStatus
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(meta, forKey: .meta)
            
            
            
            
            try? container.encode(bagList, forKey: .bagList)
            
            
            
            
            try? container.encode(id, forKey: .id)
            
            
            
            
            try? container.encode(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encode(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encode(status, forKey: .status)
            
            
            
            
            try? container.encode(displayName, forKey: .displayName)
            
            
            
            
            try? container.encode(currentShipmentStatus, forKey: .currentShipmentStatus)
            
            
        }
        
    }
}


