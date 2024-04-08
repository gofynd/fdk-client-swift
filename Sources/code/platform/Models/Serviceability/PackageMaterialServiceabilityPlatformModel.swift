

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PackageMaterial
        Used By: Serviceability
    */

    class PackageMaterial: Codable {
        
        
        public var name: String
        
        public var width: Double
        
        public var height: Double
        
        public var length: Double
        
        public var weight: Double
        
        public var autoCalculate: Bool?
        
        public var maxWeight: Double?
        
        public var packageVolWeight: Double?
        
        public var errorRate: Double
        
        public var channels: [Channel]
        
        public var packageType: String
        
        public var size: String
        
        public var trackInventory: Bool?
        
        public var rules: [PackageMaterialRule]?
        
        public var storeIds: [Int]
        
        public var mpStores: [PackageMpStores]?
        
        public var media: [String]?
        
        public var status: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case width = "width"
            
            case height = "height"
            
            case length = "length"
            
            case weight = "weight"
            
            case autoCalculate = "auto_calculate"
            
            case maxWeight = "max_weight"
            
            case packageVolWeight = "package_vol_weight"
            
            case errorRate = "error_rate"
            
            case channels = "channels"
            
            case packageType = "package_type"
            
            case size = "size"
            
            case trackInventory = "track_inventory"
            
            case rules = "rules"
            
            case storeIds = "store_ids"
            
            case mpStores = "mp_stores"
            
            case media = "media"
            
            case status = "status"
            
        }

        public init(autoCalculate: Bool? = nil, channels: [Channel], errorRate: Double, height: Double, length: Double, maxWeight: Double? = nil, media: [String]? = nil, mpStores: [PackageMpStores]? = nil, name: String, packageType: String, packageVolWeight: Double? = nil, rules: [PackageMaterialRule]? = nil, size: String, status: String, storeIds: [Int], trackInventory: Bool? = nil, weight: Double, width: Double) {
            
            self.name = name
            
            self.width = width
            
            self.height = height
            
            self.length = length
            
            self.weight = weight
            
            self.autoCalculate = autoCalculate
            
            self.maxWeight = maxWeight
            
            self.packageVolWeight = packageVolWeight
            
            self.errorRate = errorRate
            
            self.channels = channels
            
            self.packageType = packageType
            
            self.size = size
            
            self.trackInventory = trackInventory
            
            self.rules = rules
            
            self.storeIds = storeIds
            
            self.mpStores = mpStores
            
            self.media = media
            
            self.status = status
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                width = try container.decode(Double.self, forKey: .width)
                
            
            
            
                height = try container.decode(Double.self, forKey: .height)
                
            
            
            
                length = try container.decode(Double.self, forKey: .length)
                
            
            
            
                weight = try container.decode(Double.self, forKey: .weight)
                
            
            
            
                do {
                    autoCalculate = try container.decode(Bool.self, forKey: .autoCalculate)
                
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
                
            
            
                errorRate = try container.decode(Double.self, forKey: .errorRate)
                
            
            
            
                channels = try container.decode([Channel].self, forKey: .channels)
                
            
            
            
                packageType = try container.decode(String.self, forKey: .packageType)
                
            
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                do {
                    trackInventory = try container.decode(Bool.self, forKey: .trackInventory)
                
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
                
            
            
                storeIds = try container.decode([Int].self, forKey: .storeIds)
                
            
            
            
                do {
                    mpStores = try container.decode([PackageMpStores].self, forKey: .mpStores)
                
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
                
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(width, forKey: .width)
            
            
            
            
            try? container.encodeIfPresent(height, forKey: .height)
            
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(autoCalculate, forKey: .autoCalculate)
            
            
            
            
            try? container.encodeIfPresent(maxWeight, forKey: .maxWeight)
            
            
            
            
            try? container.encodeIfPresent(packageVolWeight, forKey: .packageVolWeight)
            
            
            
            
            try? container.encodeIfPresent(errorRate, forKey: .errorRate)
            
            
            
            
            try? container.encodeIfPresent(channels, forKey: .channels)
            
            
            
            
            try? container.encodeIfPresent(packageType, forKey: .packageType)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)
            
            
            
            
            try? container.encodeIfPresent(rules, forKey: .rules)
            
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
            
            
            try? container.encodeIfPresent(mpStores, forKey: .mpStores)
            
            
            
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PackageMaterial
        Used By: Serviceability
    */

    class PackageMaterial: Codable {
        
        
        public var name: String
        
        public var width: Double
        
        public var height: Double
        
        public var length: Double
        
        public var weight: Double
        
        public var autoCalculate: Bool?
        
        public var maxWeight: Double?
        
        public var packageVolWeight: Double?
        
        public var errorRate: Double
        
        public var channels: [Channel]
        
        public var packageType: String
        
        public var size: String
        
        public var trackInventory: Bool?
        
        public var rules: [PackageMaterialRule]?
        
        public var storeIds: [Int]
        
        public var mpStores: [PackageMpStores]?
        
        public var media: [String]?
        
        public var status: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case width = "width"
            
            case height = "height"
            
            case length = "length"
            
            case weight = "weight"
            
            case autoCalculate = "auto_calculate"
            
            case maxWeight = "max_weight"
            
            case packageVolWeight = "package_vol_weight"
            
            case errorRate = "error_rate"
            
            case channels = "channels"
            
            case packageType = "package_type"
            
            case size = "size"
            
            case trackInventory = "track_inventory"
            
            case rules = "rules"
            
            case storeIds = "store_ids"
            
            case mpStores = "mp_stores"
            
            case media = "media"
            
            case status = "status"
            
        }

        public init(autoCalculate: Bool? = nil, channels: [Channel], errorRate: Double, height: Double, length: Double, maxWeight: Double? = nil, media: [String]? = nil, mpStores: [PackageMpStores]? = nil, name: String, packageType: String, packageVolWeight: Double? = nil, rules: [PackageMaterialRule]? = nil, size: String, status: String, storeIds: [Int], trackInventory: Bool? = nil, weight: Double, width: Double) {
            
            self.name = name
            
            self.width = width
            
            self.height = height
            
            self.length = length
            
            self.weight = weight
            
            self.autoCalculate = autoCalculate
            
            self.maxWeight = maxWeight
            
            self.packageVolWeight = packageVolWeight
            
            self.errorRate = errorRate
            
            self.channels = channels
            
            self.packageType = packageType
            
            self.size = size
            
            self.trackInventory = trackInventory
            
            self.rules = rules
            
            self.storeIds = storeIds
            
            self.mpStores = mpStores
            
            self.media = media
            
            self.status = status
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                width = try container.decode(Double.self, forKey: .width)
                
            
            
            
                height = try container.decode(Double.self, forKey: .height)
                
            
            
            
                length = try container.decode(Double.self, forKey: .length)
                
            
            
            
                weight = try container.decode(Double.self, forKey: .weight)
                
            
            
            
                do {
                    autoCalculate = try container.decode(Bool.self, forKey: .autoCalculate)
                
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
                
            
            
                errorRate = try container.decode(Double.self, forKey: .errorRate)
                
            
            
            
                channels = try container.decode([Channel].self, forKey: .channels)
                
            
            
            
                packageType = try container.decode(String.self, forKey: .packageType)
                
            
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                do {
                    trackInventory = try container.decode(Bool.self, forKey: .trackInventory)
                
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
                
            
            
                storeIds = try container.decode([Int].self, forKey: .storeIds)
                
            
            
            
                do {
                    mpStores = try container.decode([PackageMpStores].self, forKey: .mpStores)
                
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
                
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(width, forKey: .width)
            
            
            
            
            try? container.encodeIfPresent(height, forKey: .height)
            
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(autoCalculate, forKey: .autoCalculate)
            
            
            
            
            try? container.encodeIfPresent(maxWeight, forKey: .maxWeight)
            
            
            
            
            try? container.encodeIfPresent(packageVolWeight, forKey: .packageVolWeight)
            
            
            
            
            try? container.encodeIfPresent(errorRate, forKey: .errorRate)
            
            
            
            
            try? container.encodeIfPresent(channels, forKey: .channels)
            
            
            
            
            try? container.encodeIfPresent(packageType, forKey: .packageType)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)
            
            
            
            
            try? container.encodeIfPresent(rules, forKey: .rules)
            
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
            
            
            try? container.encodeIfPresent(mpStores, forKey: .mpStores)
            
            
            
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
}


