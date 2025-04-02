

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PackageRule
        Used By: Serviceability
    */

    class PackageRule: Codable {
        
        
        public var name: String
        
        public var id: String?
        
        public var itemId: Int?
        
        public var width: Double?
        
        public var height: Double?
        
        public var length: Double?
        
        public var rules: [PackageMaterialRule]?
        
        public var storeIds: [Int]?
        
        public var weight: Double?
        
        public var errorRate: Double?
        
        public var packageType: String?
        
        public var size: String?
        
        public var media: [String]?
        
        public var channels: [Channel]?
        
        public var trackInventory: Bool?
        
        public var status: String?
        
        public var maxWeight: Double?
        
        public var packageVolWeight: Double?
        
        public var autoCalculate: Bool?
        
        public var mpStores: [PackageMpStores]?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case id = "id"
            
            case itemId = "item_id"
            
            case width = "width"
            
            case height = "height"
            
            case length = "length"
            
            case rules = "rules"
            
            case storeIds = "store_ids"
            
            case weight = "weight"
            
            case errorRate = "error_rate"
            
            case packageType = "package_type"
            
            case size = "size"
            
            case media = "media"
            
            case channels = "channels"
            
            case trackInventory = "track_inventory"
            
            case status = "status"
            
            case maxWeight = "max_weight"
            
            case packageVolWeight = "package_vol_weight"
            
            case autoCalculate = "auto_calculate"
            
            case mpStores = "mp_stores"
            
        }

        public init(autoCalculate: Bool? = nil, channels: [Channel]? = nil, errorRate: Double? = nil, height: Double? = nil, id: String? = nil, itemId: Int? = nil, length: Double? = nil, maxWeight: Double? = nil, media: [String]? = nil, mpStores: [PackageMpStores]? = nil, name: String, packageType: String? = nil, packageVolWeight: Double? = nil, rules: [PackageMaterialRule]? = nil, size: String? = nil, status: String? = nil, storeIds: [Int]? = nil, trackInventory: Bool? = nil, weight: Double? = nil, width: Double? = nil) {
            
            self.name = name
            
            self.id = id
            
            self.itemId = itemId
            
            self.width = width
            
            self.height = height
            
            self.length = length
            
            self.rules = rules
            
            self.storeIds = storeIds
            
            self.weight = weight
            
            self.errorRate = errorRate
            
            self.packageType = packageType
            
            self.size = size
            
            self.media = media
            
            self.channels = channels
            
            self.trackInventory = trackInventory
            
            self.status = status
            
            self.maxWeight = maxWeight
            
            self.packageVolWeight = packageVolWeight
            
            self.autoCalculate = autoCalculate
            
            self.mpStores = mpStores
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
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
                    width = try container.decode(Double.self, forKey: .width)
                
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
                    length = try container.decode(Double.self, forKey: .length)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rules = try container.decode([PackageMaterialRule].self, forKey: .rules)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeIds = try container.decode([Int].self, forKey: .storeIds)
                
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
                    errorRate = try container.decode(Double.self, forKey: .errorRate)
                
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
                    size = try container.decode(String.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    media = try container.decode([String].self, forKey: .media)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channels = try container.decode([Channel].self, forKey: .channels)
                
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
                    status = try container.decode(String.self, forKey: .status)
                
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
                    packageVolWeight = try container.decode(Double.self, forKey: .packageVolWeight)
                
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
                    mpStores = try container.decode([PackageMpStores].self, forKey: .mpStores)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(width, forKey: .width)
            
            
            
            
            try? container.encodeIfPresent(height, forKey: .height)
            
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
            
            
            try? container.encodeIfPresent(rules, forKey: .rules)
            
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(errorRate, forKey: .errorRate)
            
            
            
            
            try? container.encodeIfPresent(packageType, forKey: .packageType)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            
            
            
            try? container.encodeIfPresent(channels, forKey: .channels)
            
            
            
            
            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(maxWeight, forKey: .maxWeight)
            
            
            
            
            try? container.encodeIfPresent(packageVolWeight, forKey: .packageVolWeight)
            
            
            
            
            try? container.encodeIfPresent(autoCalculate, forKey: .autoCalculate)
            
            
            
            
            try? container.encodeIfPresent(mpStores, forKey: .mpStores)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PackageRule
        Used By: Serviceability
    */

    class PackageRule: Codable {
        
        
        public var name: String
        
        public var id: String?
        
        public var itemId: Int?
        
        public var width: Double?
        
        public var height: Double?
        
        public var length: Double?
        
        public var rules: [PackageMaterialRule]?
        
        public var storeIds: [Int]?
        
        public var weight: Double?
        
        public var errorRate: Double?
        
        public var packageType: String?
        
        public var size: String?
        
        public var media: [String]?
        
        public var channels: [Channel]?
        
        public var trackInventory: Bool?
        
        public var status: String?
        
        public var maxWeight: Double?
        
        public var packageVolWeight: Double?
        
        public var autoCalculate: Bool?
        
        public var mpStores: [PackageMpStores]?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case id = "id"
            
            case itemId = "item_id"
            
            case width = "width"
            
            case height = "height"
            
            case length = "length"
            
            case rules = "rules"
            
            case storeIds = "store_ids"
            
            case weight = "weight"
            
            case errorRate = "error_rate"
            
            case packageType = "package_type"
            
            case size = "size"
            
            case media = "media"
            
            case channels = "channels"
            
            case trackInventory = "track_inventory"
            
            case status = "status"
            
            case maxWeight = "max_weight"
            
            case packageVolWeight = "package_vol_weight"
            
            case autoCalculate = "auto_calculate"
            
            case mpStores = "mp_stores"
            
        }

        public init(autoCalculate: Bool? = nil, channels: [Channel]? = nil, errorRate: Double? = nil, height: Double? = nil, id: String? = nil, itemId: Int? = nil, length: Double? = nil, maxWeight: Double? = nil, media: [String]? = nil, mpStores: [PackageMpStores]? = nil, name: String, packageType: String? = nil, packageVolWeight: Double? = nil, rules: [PackageMaterialRule]? = nil, size: String? = nil, status: String? = nil, storeIds: [Int]? = nil, trackInventory: Bool? = nil, weight: Double? = nil, width: Double? = nil) {
            
            self.name = name
            
            self.id = id
            
            self.itemId = itemId
            
            self.width = width
            
            self.height = height
            
            self.length = length
            
            self.rules = rules
            
            self.storeIds = storeIds
            
            self.weight = weight
            
            self.errorRate = errorRate
            
            self.packageType = packageType
            
            self.size = size
            
            self.media = media
            
            self.channels = channels
            
            self.trackInventory = trackInventory
            
            self.status = status
            
            self.maxWeight = maxWeight
            
            self.packageVolWeight = packageVolWeight
            
            self.autoCalculate = autoCalculate
            
            self.mpStores = mpStores
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
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
                    width = try container.decode(Double.self, forKey: .width)
                
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
                    length = try container.decode(Double.self, forKey: .length)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rules = try container.decode([PackageMaterialRule].self, forKey: .rules)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeIds = try container.decode([Int].self, forKey: .storeIds)
                
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
                    errorRate = try container.decode(Double.self, forKey: .errorRate)
                
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
                    size = try container.decode(String.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    media = try container.decode([String].self, forKey: .media)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channels = try container.decode([Channel].self, forKey: .channels)
                
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
                    status = try container.decode(String.self, forKey: .status)
                
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
                    packageVolWeight = try container.decode(Double.self, forKey: .packageVolWeight)
                
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
                    mpStores = try container.decode([PackageMpStores].self, forKey: .mpStores)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(width, forKey: .width)
            
            
            
            
            try? container.encodeIfPresent(height, forKey: .height)
            
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
            
            
            try? container.encodeIfPresent(rules, forKey: .rules)
            
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(errorRate, forKey: .errorRate)
            
            
            
            
            try? container.encodeIfPresent(packageType, forKey: .packageType)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            
            
            
            try? container.encodeIfPresent(channels, forKey: .channels)
            
            
            
            
            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(maxWeight, forKey: .maxWeight)
            
            
            
            
            try? container.encodeIfPresent(packageVolWeight, forKey: .packageVolWeight)
            
            
            
            
            try? container.encodeIfPresent(autoCalculate, forKey: .autoCalculate)
            
            
            
            
            try? container.encodeIfPresent(mpStores, forKey: .mpStores)
            
            
        }
        
    }
}


