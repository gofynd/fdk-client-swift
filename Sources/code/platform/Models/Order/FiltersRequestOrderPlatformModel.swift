

import Foundation


public extension PlatformClient.Order {
    /*
        Model: FiltersRequest
        Used By: Order
    */

    class FiltersRequest: Codable {
        
        
        public var dateRange: DateRange?
        
        public var logo: String?
        
        public var stores: Int
        
        public var dpName: String
        
        public var dpIds: Int
        
        public var lane: String
        
        public var storeName: String
        

        public enum CodingKeys: String, CodingKey {
            
            case dateRange = "date_range"
            
            case logo = "logo"
            
            case stores = "stores"
            
            case dpName = "dp_name"
            
            case dpIds = "dp_ids"
            
            case lane = "lane"
            
            case storeName = "store_name"
            
        }

        public init(dateRange: DateRange? = nil, dpIds: Int, dpName: String, lane: String, logo: String? = nil, stores: Int, storeName: String) {
            
            self.dateRange = dateRange
            
            self.logo = logo
            
            self.stores = stores
            
            self.dpName = dpName
            
            self.dpIds = dpIds
            
            self.lane = lane
            
            self.storeName = storeName
            
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
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                stores = try container.decode(Int.self, forKey: .stores)
                
            
            
            
                dpName = try container.decode(String.self, forKey: .dpName)
                
            
            
            
                dpIds = try container.decode(Int.self, forKey: .dpIds)
                
            
            
            
                lane = try container.decode(String.self, forKey: .lane)
                
            
            
            
                storeName = try container.decode(String.self, forKey: .storeName)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(dateRange, forKey: .dateRange)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(dpName, forKey: .dpName)
            
            
            
            
            try? container.encodeIfPresent(dpIds, forKey: .dpIds)
            
            
            
            
            try? container.encodeIfPresent(lane, forKey: .lane)
            
            
            
            
            try? container.encodeIfPresent(storeName, forKey: .storeName)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: FiltersRequest
        Used By: Order
    */

    class FiltersRequest: Codable {
        
        
        public var dateRange: DateRange?
        
        public var logo: String?
        
        public var stores: Int
        
        public var dpName: String
        
        public var dpIds: Int
        
        public var lane: String
        
        public var storeName: String
        

        public enum CodingKeys: String, CodingKey {
            
            case dateRange = "date_range"
            
            case logo = "logo"
            
            case stores = "stores"
            
            case dpName = "dp_name"
            
            case dpIds = "dp_ids"
            
            case lane = "lane"
            
            case storeName = "store_name"
            
        }

        public init(dateRange: DateRange? = nil, dpIds: Int, dpName: String, lane: String, logo: String? = nil, stores: Int, storeName: String) {
            
            self.dateRange = dateRange
            
            self.logo = logo
            
            self.stores = stores
            
            self.dpName = dpName
            
            self.dpIds = dpIds
            
            self.lane = lane
            
            self.storeName = storeName
            
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
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                stores = try container.decode(Int.self, forKey: .stores)
                
            
            
            
                dpName = try container.decode(String.self, forKey: .dpName)
                
            
            
            
                dpIds = try container.decode(Int.self, forKey: .dpIds)
                
            
            
            
                lane = try container.decode(String.self, forKey: .lane)
                
            
            
            
                storeName = try container.decode(String.self, forKey: .storeName)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(dateRange, forKey: .dateRange)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(dpName, forKey: .dpName)
            
            
            
            
            try? container.encodeIfPresent(dpIds, forKey: .dpIds)
            
            
            
            
            try? container.encodeIfPresent(lane, forKey: .lane)
            
            
            
            
            try? container.encodeIfPresent(storeName, forKey: .storeName)
            
            
        }
        
    }
}


