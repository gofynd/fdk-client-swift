

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PackageItem
        Used By: Serviceability
    */

    class PackageItem: Codable {
        
        
        public var name: String?
        
        public var weight: Double?
        
        public var trackInventory: Bool?
        
        public var length: Double?
        
        public var channels: [PackageChannel]?
        
        public var packageType: String?
        
        public var rules: [PackageRuleSchema]?
        
        public var height: Double?
        
        public var errorRate: Double?
        
        public var width: Double?
        
        public var isActive: Bool?
        
        public var size: String?
        
        public var companyId: Int?
        
        public var itemId: Int?
        
        public var maxWeight: Double?
        
        public var media: [[String: Any]]?
        
        public var packageVolWeight: Double?
        
        public var status: String?
        
        public var autoCalculate: Bool?
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case weight = "weight"
            
            case trackInventory = "track_inventory"
            
            case length = "length"
            
            case channels = "channels"
            
            case packageType = "package_type"
            
            case rules = "rules"
            
            case height = "height"
            
            case errorRate = "error_rate"
            
            case width = "width"
            
            case isActive = "is_active"
            
            case size = "size"
            
            case companyId = "company_id"
            
            case itemId = "item_id"
            
            case maxWeight = "max_weight"
            
            case media = "media"
            
            case packageVolWeight = "package_vol_weight"
            
            case status = "status"
            
            case autoCalculate = "auto_calculate"
            
            case id = "id"
            
        }

        public init(autoCalculate: Bool? = nil, channels: [PackageChannel]? = nil, companyId: Int? = nil, errorRate: Double? = nil, height: Double? = nil, id: String? = nil, isActive: Bool? = nil, itemId: Int? = nil, length: Double? = nil, maxWeight: Double? = nil, media: [[String: Any]]? = nil, name: String? = nil, packageType: String? = nil, packageVolWeight: Double? = nil, rules: [PackageRuleSchema]? = nil, size: String? = nil, status: String? = nil, trackInventory: Bool? = nil, weight: Double? = nil, width: Double? = nil) {
            
            self.name = name
            
            self.weight = weight
            
            self.trackInventory = trackInventory
            
            self.length = length
            
            self.channels = channels
            
            self.packageType = packageType
            
            self.rules = rules
            
            self.height = height
            
            self.errorRate = errorRate
            
            self.width = width
            
            self.isActive = isActive
            
            self.size = size
            
            self.companyId = companyId
            
            self.itemId = itemId
            
            self.maxWeight = maxWeight
            
            self.media = media
            
            self.packageVolWeight = packageVolWeight
            
            self.status = status
            
            self.autoCalculate = autoCalculate
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    weight = try container.decode(Double.self, forKey: .weight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trackInventory = try container.decode(Bool.self, forKey: .trackInventory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    length = try container.decode(Double.self, forKey: .length)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channels = try container.decode([PackageChannel].self, forKey: .channels)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    packageType = try container.decode(String.self, forKey: .packageType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rules = try container.decode([PackageRuleSchema].self, forKey: .rules)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    height = try container.decode(Double.self, forKey: .height)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorRate = try container.decode(Double.self, forKey: .errorRate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    width = try container.decode(Double.self, forKey: .width)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    size = try container.decode(String.self, forKey: .size)
                
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
                    itemId = try container.decode(Int.self, forKey: .itemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxWeight = try container.decode(Double.self, forKey: .maxWeight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    media = try container.decode([[String: Any]].self, forKey: .media)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    packageVolWeight = try container.decode(Double.self, forKey: .packageVolWeight)
                
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
                    autoCalculate = try container.decode(Bool.self, forKey: .autoCalculate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)
            
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
            
            
            try? container.encodeIfPresent(channels, forKey: .channels)
            
            
            
            
            try? container.encodeIfPresent(packageType, forKey: .packageType)
            
            
            
            
            try? container.encodeIfPresent(rules, forKey: .rules)
            
            
            
            
            try? container.encodeIfPresent(height, forKey: .height)
            
            
            
            
            try? container.encodeIfPresent(errorRate, forKey: .errorRate)
            
            
            
            
            try? container.encodeIfPresent(width, forKey: .width)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(maxWeight, forKey: .maxWeight)
            
            
            
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            
            
            
            try? container.encodeIfPresent(packageVolWeight, forKey: .packageVolWeight)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(autoCalculate, forKey: .autoCalculate)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PackageItem
        Used By: Serviceability
    */

    class PackageItem: Codable {
        
        
        public var name: String?
        
        public var weight: Double?
        
        public var trackInventory: Bool?
        
        public var length: Double?
        
        public var channels: [PackageChannel]?
        
        public var packageType: String?
        
        public var rules: [PackageRuleSchema]?
        
        public var height: Double?
        
        public var errorRate: Double?
        
        public var width: Double?
        
        public var isActive: Bool?
        
        public var size: String?
        
        public var companyId: Int?
        
        public var itemId: Int?
        
        public var maxWeight: Double?
        
        public var media: [[String: Any]]?
        
        public var packageVolWeight: Double?
        
        public var status: String?
        
        public var autoCalculate: Bool?
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case weight = "weight"
            
            case trackInventory = "track_inventory"
            
            case length = "length"
            
            case channels = "channels"
            
            case packageType = "package_type"
            
            case rules = "rules"
            
            case height = "height"
            
            case errorRate = "error_rate"
            
            case width = "width"
            
            case isActive = "is_active"
            
            case size = "size"
            
            case companyId = "company_id"
            
            case itemId = "item_id"
            
            case maxWeight = "max_weight"
            
            case media = "media"
            
            case packageVolWeight = "package_vol_weight"
            
            case status = "status"
            
            case autoCalculate = "auto_calculate"
            
            case id = "id"
            
        }

        public init(autoCalculate: Bool? = nil, channels: [PackageChannel]? = nil, companyId: Int? = nil, errorRate: Double? = nil, height: Double? = nil, id: String? = nil, isActive: Bool? = nil, itemId: Int? = nil, length: Double? = nil, maxWeight: Double? = nil, media: [[String: Any]]? = nil, name: String? = nil, packageType: String? = nil, packageVolWeight: Double? = nil, rules: [PackageRuleSchema]? = nil, size: String? = nil, status: String? = nil, trackInventory: Bool? = nil, weight: Double? = nil, width: Double? = nil) {
            
            self.name = name
            
            self.weight = weight
            
            self.trackInventory = trackInventory
            
            self.length = length
            
            self.channels = channels
            
            self.packageType = packageType
            
            self.rules = rules
            
            self.height = height
            
            self.errorRate = errorRate
            
            self.width = width
            
            self.isActive = isActive
            
            self.size = size
            
            self.companyId = companyId
            
            self.itemId = itemId
            
            self.maxWeight = maxWeight
            
            self.media = media
            
            self.packageVolWeight = packageVolWeight
            
            self.status = status
            
            self.autoCalculate = autoCalculate
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    weight = try container.decode(Double.self, forKey: .weight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trackInventory = try container.decode(Bool.self, forKey: .trackInventory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    length = try container.decode(Double.self, forKey: .length)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channels = try container.decode([PackageChannel].self, forKey: .channels)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    packageType = try container.decode(String.self, forKey: .packageType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rules = try container.decode([PackageRuleSchema].self, forKey: .rules)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    height = try container.decode(Double.self, forKey: .height)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorRate = try container.decode(Double.self, forKey: .errorRate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    width = try container.decode(Double.self, forKey: .width)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    size = try container.decode(String.self, forKey: .size)
                
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
                    itemId = try container.decode(Int.self, forKey: .itemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxWeight = try container.decode(Double.self, forKey: .maxWeight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    media = try container.decode([[String: Any]].self, forKey: .media)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    packageVolWeight = try container.decode(Double.self, forKey: .packageVolWeight)
                
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
                    autoCalculate = try container.decode(Bool.self, forKey: .autoCalculate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)
            
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
            
            
            try? container.encodeIfPresent(channels, forKey: .channels)
            
            
            
            
            try? container.encodeIfPresent(packageType, forKey: .packageType)
            
            
            
            
            try? container.encodeIfPresent(rules, forKey: .rules)
            
            
            
            
            try? container.encodeIfPresent(height, forKey: .height)
            
            
            
            
            try? container.encodeIfPresent(errorRate, forKey: .errorRate)
            
            
            
            
            try? container.encodeIfPresent(width, forKey: .width)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(maxWeight, forKey: .maxWeight)
            
            
            
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            
            
            
            try? container.encodeIfPresent(packageVolWeight, forKey: .packageVolWeight)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(autoCalculate, forKey: .autoCalculate)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}


