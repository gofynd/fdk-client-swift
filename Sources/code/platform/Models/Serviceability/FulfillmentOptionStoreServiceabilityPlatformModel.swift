

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: FulfillmentOptionStore
        Used By: Serviceability
    */

    class FulfillmentOptionStore: Codable {
        
        
        public var uid: Int?
        
        public var storeCode: String?
        
        public var address: Address?
        
        public var companyId: Int?
        
        public var name: String?
        
        public var storeType: String?
        
        public var tags: [String]?
        
        public var avgOrderProcessingTime: Int?
        
        public var timezone: String?
        
        public var holidayList: [[String]]?
        
        public var customfields: [String: Any]?
        
        public var isOpen: Bool?
        
        public var promiseCustomfields: [String: Any]?
        
        public var distance: StoreDistance?
        
        public var timing: StoreTimingDetails?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case storeCode = "store_code"
            
            case address = "address"
            
            case companyId = "company_id"
            
            case name = "name"
            
            case storeType = "store_type"
            
            case tags = "tags"
            
            case avgOrderProcessingTime = "avg_order_processing_time"
            
            case timezone = "timezone"
            
            case holidayList = "holiday_list"
            
            case customfields = "customfields"
            
            case isOpen = "is_open"
            
            case promiseCustomfields = "promise_customfields"
            
            case distance = "distance"
            
            case timing = "timing"
            
        }

        public init(address: Address? = nil, avgOrderProcessingTime: Int? = nil, companyId: Int? = nil, customfields: [String: Any]? = nil, distance: StoreDistance? = nil, holidayList: [[String]]? = nil, isOpen: Bool? = nil, name: String? = nil, promiseCustomfields: [String: Any]? = nil, storeCode: String? = nil, storeType: String? = nil, tags: [String]? = nil, timezone: String? = nil, timing: StoreTimingDetails? = nil, uid: Int? = nil) {
            
            self.uid = uid
            
            self.storeCode = storeCode
            
            self.address = address
            
            self.companyId = companyId
            
            self.name = name
            
            self.storeType = storeType
            
            self.tags = tags
            
            self.avgOrderProcessingTime = avgOrderProcessingTime
            
            self.timezone = timezone
            
            self.holidayList = holidayList
            
            self.customfields = customfields
            
            self.isOpen = isOpen
            
            self.promiseCustomfields = promiseCustomfields
            
            self.distance = distance
            
            self.timing = timing
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeCode = try container.decode(String.self, forKey: .storeCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address = try container.decode(Address.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeType = try container.decode(String.self, forKey: .storeType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    avgOrderProcessingTime = try container.decode(Int.self, forKey: .avgOrderProcessingTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timezone = try container.decode(String.self, forKey: .timezone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    holidayList = try container.decode([[String]].self, forKey: .holidayList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customfields = try container.decode([String: Any].self, forKey: .customfields)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isOpen = try container.decode(Bool.self, forKey: .isOpen)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promiseCustomfields = try container.decode([String: Any].self, forKey: .promiseCustomfields)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    distance = try container.decode(StoreDistance.self, forKey: .distance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timing = try container.decode(StoreTimingDetails.self, forKey: .timing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(storeType, forKey: .storeType)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(avgOrderProcessingTime, forKey: .avgOrderProcessingTime)
            
            
            
            
            try? container.encodeIfPresent(timezone, forKey: .timezone)
            
            
            
            
            try? container.encodeIfPresent(holidayList, forKey: .holidayList)
            
            
            
            
            try? container.encodeIfPresent(customfields, forKey: .customfields)
            
            
            
            
            try? container.encodeIfPresent(isOpen, forKey: .isOpen)
            
            
            
            
            try? container.encodeIfPresent(promiseCustomfields, forKey: .promiseCustomfields)
            
            
            
            
            try? container.encodeIfPresent(distance, forKey: .distance)
            
            
            
            
            try? container.encodeIfPresent(timing, forKey: .timing)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: FulfillmentOptionStore
        Used By: Serviceability
    */

    class FulfillmentOptionStore: Codable {
        
        
        public var uid: Int?
        
        public var storeCode: String?
        
        public var address: Address?
        
        public var companyId: Int?
        
        public var name: String?
        
        public var storeType: String?
        
        public var tags: [String]?
        
        public var avgOrderProcessingTime: Int?
        
        public var timezone: String?
        
        public var holidayList: [[String]]?
        
        public var customfields: [String: Any]?
        
        public var isOpen: Bool?
        
        public var promiseCustomfields: [String: Any]?
        
        public var distance: StoreDistance?
        
        public var timing: StoreTimingDetails?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case storeCode = "store_code"
            
            case address = "address"
            
            case companyId = "company_id"
            
            case name = "name"
            
            case storeType = "store_type"
            
            case tags = "tags"
            
            case avgOrderProcessingTime = "avg_order_processing_time"
            
            case timezone = "timezone"
            
            case holidayList = "holiday_list"
            
            case customfields = "customfields"
            
            case isOpen = "is_open"
            
            case promiseCustomfields = "promise_customfields"
            
            case distance = "distance"
            
            case timing = "timing"
            
        }

        public init(address: Address? = nil, avgOrderProcessingTime: Int? = nil, companyId: Int? = nil, customfields: [String: Any]? = nil, distance: StoreDistance? = nil, holidayList: [[String]]? = nil, isOpen: Bool? = nil, name: String? = nil, promiseCustomfields: [String: Any]? = nil, storeCode: String? = nil, storeType: String? = nil, tags: [String]? = nil, timezone: String? = nil, timing: StoreTimingDetails? = nil, uid: Int? = nil) {
            
            self.uid = uid
            
            self.storeCode = storeCode
            
            self.address = address
            
            self.companyId = companyId
            
            self.name = name
            
            self.storeType = storeType
            
            self.tags = tags
            
            self.avgOrderProcessingTime = avgOrderProcessingTime
            
            self.timezone = timezone
            
            self.holidayList = holidayList
            
            self.customfields = customfields
            
            self.isOpen = isOpen
            
            self.promiseCustomfields = promiseCustomfields
            
            self.distance = distance
            
            self.timing = timing
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeCode = try container.decode(String.self, forKey: .storeCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address = try container.decode(Address.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeType = try container.decode(String.self, forKey: .storeType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    avgOrderProcessingTime = try container.decode(Int.self, forKey: .avgOrderProcessingTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timezone = try container.decode(String.self, forKey: .timezone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    holidayList = try container.decode([[String]].self, forKey: .holidayList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customfields = try container.decode([String: Any].self, forKey: .customfields)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isOpen = try container.decode(Bool.self, forKey: .isOpen)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promiseCustomfields = try container.decode([String: Any].self, forKey: .promiseCustomfields)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    distance = try container.decode(StoreDistance.self, forKey: .distance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timing = try container.decode(StoreTimingDetails.self, forKey: .timing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(storeType, forKey: .storeType)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(avgOrderProcessingTime, forKey: .avgOrderProcessingTime)
            
            
            
            
            try? container.encodeIfPresent(timezone, forKey: .timezone)
            
            
            
            
            try? container.encodeIfPresent(holidayList, forKey: .holidayList)
            
            
            
            
            try? container.encodeIfPresent(customfields, forKey: .customfields)
            
            
            
            
            try? container.encodeIfPresent(isOpen, forKey: .isOpen)
            
            
            
            
            try? container.encodeIfPresent(promiseCustomfields, forKey: .promiseCustomfields)
            
            
            
            
            try? container.encodeIfPresent(distance, forKey: .distance)
            
            
            
            
            try? container.encodeIfPresent(timing, forKey: .timing)
            
            
        }
        
    }
}


