

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PackageMaterialResult
        Used By: Serviceability
    */

    class PackageMaterialResult: Codable {
        
        
        public var companyId: Int?
        
        public var name: String
        
        public var id: String?
        
        public var itemId: Int?
        
        public var width: Double
        
        public var height: Double
        
        public var length: Double
        
        public var rules: [PackageMaterialRule]?
        
        public var storeIds: [Int]
        
        public var weight: Double
        
        public var errorRate: Double
        
        public var packageType: String
        
        public var size: String
        
        public var media: [String]?
        
        public var channels: [Channel]
        
        public var trackInventory: Bool?
        
        public var isActive: Bool?
        
        public var status: String
        
        public var maxWeight: Double?
        
        public var packageVolWeight: Double?
        
        public var autoCalculate: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
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
            
            case isActive = "is_active"
            
            case status = "status"
            
            case maxWeight = "max_weight"
            
            case packageVolWeight = "package_vol_weight"
            
            case autoCalculate = "auto_calculate"
            
        }

        public init(autoCalculate: Bool? = nil, channels: [Channel], companyId: Int? = nil, errorRate: Double, height: Double, id: String? = nil, isActive: Bool? = nil, itemId: Int? = nil, length: Double, maxWeight: Double? = nil, media: [String]? = nil, name: String, packageType: String, packageVolWeight: Double? = nil, rules: [PackageMaterialRule]? = nil, size: String, status: String, storeIds: [Int], trackInventory: Bool? = nil, weight: Double, width: Double) {
            
            self.companyId = companyId
            
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
            
            self.isActive = isActive
            
            self.status = status
            
            self.maxWeight = maxWeight
            
            self.packageVolWeight = packageVolWeight
            
            self.autoCalculate = autoCalculate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                
            
            
                width = try container.decode(Double.self, forKey: .width)
                
            
            
            
                height = try container.decode(Double.self, forKey: .height)
                
            
            
            
                length = try container.decode(Double.self, forKey: .length)
                
            
            
            
                do {
                    rules = try container.decode([PackageMaterialRule].self, forKey: .rules)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                storeIds = try container.decode([Int].self, forKey: .storeIds)
                
            
            
            
                weight = try container.decode(Double.self, forKey: .weight)
                
            
            
            
                errorRate = try container.decode(Double.self, forKey: .errorRate)
                
            
            
            
                packageType = try container.decode(String.self, forKey: .packageType)
                
            
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                do {
                    media = try container.decode([String].self, forKey: .media)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                channels = try container.decode([Channel].self, forKey: .channels)
                
            
            
            
                do {
                    trackInventory = try container.decode(Bool.self, forKey: .trackInventory)
                
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
                
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
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
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(maxWeight, forKey: .maxWeight)
            
            
            
            
            try? container.encodeIfPresent(packageVolWeight, forKey: .packageVolWeight)
            
            
            
            
            try? container.encodeIfPresent(autoCalculate, forKey: .autoCalculate)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PackageMaterialResult
        Used By: Serviceability
    */

    class PackageMaterialResult: Codable {
        
        
        public var companyId: Int?
        
        public var name: String
        
        public var id: String?
        
        public var itemId: Int?
        
        public var width: Double
        
        public var height: Double
        
        public var length: Double
        
        public var rules: [PackageMaterialRule]?
        
        public var storeIds: [Int]
        
        public var weight: Double
        
        public var errorRate: Double
        
        public var packageType: String
        
        public var size: String
        
        public var media: [String]?
        
        public var channels: [Channel]
        
        public var trackInventory: Bool?
        
        public var isActive: Bool?
        
        public var status: String
        
        public var maxWeight: Double?
        
        public var packageVolWeight: Double?
        
        public var autoCalculate: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
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
            
            case isActive = "is_active"
            
            case status = "status"
            
            case maxWeight = "max_weight"
            
            case packageVolWeight = "package_vol_weight"
            
            case autoCalculate = "auto_calculate"
            
        }

        public init(autoCalculate: Bool? = nil, channels: [Channel], companyId: Int? = nil, errorRate: Double, height: Double, id: String? = nil, isActive: Bool? = nil, itemId: Int? = nil, length: Double, maxWeight: Double? = nil, media: [String]? = nil, name: String, packageType: String, packageVolWeight: Double? = nil, rules: [PackageMaterialRule]? = nil, size: String, status: String, storeIds: [Int], trackInventory: Bool? = nil, weight: Double, width: Double) {
            
            self.companyId = companyId
            
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
            
            self.isActive = isActive
            
            self.status = status
            
            self.maxWeight = maxWeight
            
            self.packageVolWeight = packageVolWeight
            
            self.autoCalculate = autoCalculate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                
            
            
                width = try container.decode(Double.self, forKey: .width)
                
            
            
            
                height = try container.decode(Double.self, forKey: .height)
                
            
            
            
                length = try container.decode(Double.self, forKey: .length)
                
            
            
            
                do {
                    rules = try container.decode([PackageMaterialRule].self, forKey: .rules)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                storeIds = try container.decode([Int].self, forKey: .storeIds)
                
            
            
            
                weight = try container.decode(Double.self, forKey: .weight)
                
            
            
            
                errorRate = try container.decode(Double.self, forKey: .errorRate)
                
            
            
            
                packageType = try container.decode(String.self, forKey: .packageType)
                
            
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                do {
                    media = try container.decode([String].self, forKey: .media)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                channels = try container.decode([Channel].self, forKey: .channels)
                
            
            
            
                do {
                    trackInventory = try container.decode(Bool.self, forKey: .trackInventory)
                
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
                
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
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
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(maxWeight, forKey: .maxWeight)
            
            
            
            
            try? container.encodeIfPresent(packageVolWeight, forKey: .packageVolWeight)
            
            
            
            
            try? container.encodeIfPresent(autoCalculate, forKey: .autoCalculate)
            
            
        }
        
    }
}


