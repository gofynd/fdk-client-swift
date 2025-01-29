

import Foundation


public extension PlatformClient.Order {
    /*
        Model: Filters
        Used By: Order
    */

    class Filters: Codable {
        
        
        public var dateRange: DateRange?
        
        public var stores: Int?
        
        public var dpName: String?
        
        public var dpIds: String?
        
        public var lane: String?
        
        public var selectedShipments: String?
        
        public var deselectedShipments: String?
        
        public var storeName: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case dateRange = "date_range"
            
            case stores = "stores"
            
            case dpName = "dp_name"
            
            case dpIds = "dp_ids"
            
            case lane = "lane"
            
            case selectedShipments = "selected_shipments"
            
            case deselectedShipments = "deselected_shipments"
            
            case storeName = "store_name"
            
            case type = "type"
            
        }

        public init(dateRange: DateRange? = nil, deselectedShipments: String? = nil, dpIds: String? = nil, dpName: String? = nil, lane: String? = nil, selectedShipments: String? = nil, stores: Int? = nil, storeName: String? = nil, type: String? = nil) {
            
            self.dateRange = dateRange
            
            self.stores = stores
            
            self.dpName = dpName
            
            self.dpIds = dpIds
            
            self.lane = lane
            
            self.selectedShipments = selectedShipments
            
            self.deselectedShipments = deselectedShipments
            
            self.storeName = storeName
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    dateRange = try container.decode(DateRange.self, forKey: .dateRange)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stores = try container.decode(Int.self, forKey: .stores)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpName = try container.decode(String.self, forKey: .dpName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpIds = try container.decode(String.self, forKey: .dpIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lane = try container.decode(String.self, forKey: .lane)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    selectedShipments = try container.decode(String.self, forKey: .selectedShipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deselectedShipments = try container.decode(String.self, forKey: .deselectedShipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeName = try container.decode(String.self, forKey: .storeName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(dateRange, forKey: .dateRange)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(dpName, forKey: .dpName)
            
            
            
            
            try? container.encodeIfPresent(dpIds, forKey: .dpIds)
            
            
            
            
            try? container.encodeIfPresent(lane, forKey: .lane)
            
            
            
            
            try? container.encodeIfPresent(selectedShipments, forKey: .selectedShipments)
            
            
            
            
            try? container.encodeIfPresent(deselectedShipments, forKey: .deselectedShipments)
            
            
            
            
            try? container.encodeIfPresent(storeName, forKey: .storeName)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: Filters
        Used By: Order
    */

    class Filters: Codable {
        
        
        public var dateRange: DateRange?
        
        public var stores: Int?
        
        public var dpName: String?
        
        public var dpIds: String?
        
        public var lane: String?
        
        public var selectedShipments: String?
        
        public var deselectedShipments: String?
        
        public var storeName: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case dateRange = "date_range"
            
            case stores = "stores"
            
            case dpName = "dp_name"
            
            case dpIds = "dp_ids"
            
            case lane = "lane"
            
            case selectedShipments = "selected_shipments"
            
            case deselectedShipments = "deselected_shipments"
            
            case storeName = "store_name"
            
            case type = "type"
            
        }

        public init(dateRange: DateRange? = nil, deselectedShipments: String? = nil, dpIds: String? = nil, dpName: String? = nil, lane: String? = nil, selectedShipments: String? = nil, stores: Int? = nil, storeName: String? = nil, type: String? = nil) {
            
            self.dateRange = dateRange
            
            self.stores = stores
            
            self.dpName = dpName
            
            self.dpIds = dpIds
            
            self.lane = lane
            
            self.selectedShipments = selectedShipments
            
            self.deselectedShipments = deselectedShipments
            
            self.storeName = storeName
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    dateRange = try container.decode(DateRange.self, forKey: .dateRange)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stores = try container.decode(Int.self, forKey: .stores)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpName = try container.decode(String.self, forKey: .dpName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpIds = try container.decode(String.self, forKey: .dpIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lane = try container.decode(String.self, forKey: .lane)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    selectedShipments = try container.decode(String.self, forKey: .selectedShipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deselectedShipments = try container.decode(String.self, forKey: .deselectedShipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeName = try container.decode(String.self, forKey: .storeName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(dateRange, forKey: .dateRange)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(dpName, forKey: .dpName)
            
            
            
            
            try? container.encodeIfPresent(dpIds, forKey: .dpIds)
            
            
            
            
            try? container.encodeIfPresent(lane, forKey: .lane)
            
            
            
            
            try? container.encodeIfPresent(selectedShipments, forKey: .selectedShipments)
            
            
            
            
            try? container.encodeIfPresent(deselectedShipments, forKey: .deselectedShipments)
            
            
            
            
            try? container.encodeIfPresent(storeName, forKey: .storeName)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}


