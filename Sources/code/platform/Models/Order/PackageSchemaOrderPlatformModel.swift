

import Foundation


public extension PlatformClient.Order {
    /*
        Model: PackageSchema
        Used By: Order
    */

    class PackageSchema: Codable {
        
        
        public var id: String?
        
        public var packagingId: String?
        
        public var name: String?
        
        public var size: String?
        
        public var packageType: String?
        
        public var length: Double?
        
        public var width: Double?
        
        public var height: Double?
        
        public var weight: Double?
        
        public var errorRate: Double?
        
        public var packageVolWeight: Double?
        
        public var maxWeight: Double?
        
        public var awb: String?
        
        public var pdfLinks: [String: String]?
        
        public var products: [PackageProduct]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case packagingId = "packaging_id"
            
            case name = "name"
            
            case size = "size"
            
            case packageType = "package_type"
            
            case length = "length"
            
            case width = "width"
            
            case height = "height"
            
            case weight = "weight"
            
            case errorRate = "error_rate"
            
            case packageVolWeight = "package_vol_weight"
            
            case maxWeight = "max_weight"
            
            case awb = "awb"
            
            case pdfLinks = "pdf_links"
            
            case products = "products"
            
        }

        public init(awb: String? = nil, errorRate: Double? = nil, height: Double? = nil, id: String? = nil, length: Double? = nil, maxWeight: Double? = nil, name: String? = nil, packageType: String? = nil, packageVolWeight: Double? = nil, packagingId: String? = nil, pdfLinks: [String: String]? = nil, products: [PackageProduct]? = nil, size: String? = nil, weight: Double? = nil, width: Double? = nil) {
            
            self.id = id
            
            self.packagingId = packagingId
            
            self.name = name
            
            self.size = size
            
            self.packageType = packageType
            
            self.length = length
            
            self.width = width
            
            self.height = height
            
            self.weight = weight
            
            self.errorRate = errorRate
            
            self.packageVolWeight = packageVolWeight
            
            self.maxWeight = maxWeight
            
            self.awb = awb
            
            self.pdfLinks = pdfLinks
            
            self.products = products
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    packagingId = try container.decode(String.self, forKey: .packagingId)
                
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
                    size = try container.decode(String.self, forKey: .size)
                
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
                    length = try container.decode(Double.self, forKey: .length)
                
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
                    packageVolWeight = try container.decode(Double.self, forKey: .packageVolWeight)
                
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
                    awb = try container.decode(String.self, forKey: .awb)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pdfLinks = try container.decode([String: String].self, forKey: .pdfLinks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    products = try container.decode([PackageProduct].self, forKey: .products)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(packagingId, forKey: .packagingId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(packageType, forKey: .packageType)
            
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
            
            
            try? container.encodeIfPresent(width, forKey: .width)
            
            
            
            
            try? container.encodeIfPresent(height, forKey: .height)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(errorRate, forKey: .errorRate)
            
            
            
            
            try? container.encodeIfPresent(packageVolWeight, forKey: .packageVolWeight)
            
            
            
            
            try? container.encodeIfPresent(maxWeight, forKey: .maxWeight)
            
            
            
            
            try? container.encodeIfPresent(awb, forKey: .awb)
            
            
            
            
            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)
            
            
            
            
            try? container.encodeIfPresent(products, forKey: .products)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: PackageSchema
        Used By: Order
    */

    class PackageSchema: Codable {
        
        
        public var id: String?
        
        public var packagingId: String?
        
        public var name: String?
        
        public var size: String?
        
        public var packageType: String?
        
        public var length: Double?
        
        public var width: Double?
        
        public var height: Double?
        
        public var weight: Double?
        
        public var errorRate: Double?
        
        public var packageVolWeight: Double?
        
        public var maxWeight: Double?
        
        public var awb: String?
        
        public var pdfLinks: [String: String]?
        
        public var products: [PackageProduct]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case packagingId = "packaging_id"
            
            case name = "name"
            
            case size = "size"
            
            case packageType = "package_type"
            
            case length = "length"
            
            case width = "width"
            
            case height = "height"
            
            case weight = "weight"
            
            case errorRate = "error_rate"
            
            case packageVolWeight = "package_vol_weight"
            
            case maxWeight = "max_weight"
            
            case awb = "awb"
            
            case pdfLinks = "pdf_links"
            
            case products = "products"
            
        }

        public init(awb: String? = nil, errorRate: Double? = nil, height: Double? = nil, id: String? = nil, length: Double? = nil, maxWeight: Double? = nil, name: String? = nil, packageType: String? = nil, packageVolWeight: Double? = nil, packagingId: String? = nil, pdfLinks: [String: String]? = nil, products: [PackageProduct]? = nil, size: String? = nil, weight: Double? = nil, width: Double? = nil) {
            
            self.id = id
            
            self.packagingId = packagingId
            
            self.name = name
            
            self.size = size
            
            self.packageType = packageType
            
            self.length = length
            
            self.width = width
            
            self.height = height
            
            self.weight = weight
            
            self.errorRate = errorRate
            
            self.packageVolWeight = packageVolWeight
            
            self.maxWeight = maxWeight
            
            self.awb = awb
            
            self.pdfLinks = pdfLinks
            
            self.products = products
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    packagingId = try container.decode(String.self, forKey: .packagingId)
                
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
                    size = try container.decode(String.self, forKey: .size)
                
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
                    length = try container.decode(Double.self, forKey: .length)
                
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
                    packageVolWeight = try container.decode(Double.self, forKey: .packageVolWeight)
                
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
                    awb = try container.decode(String.self, forKey: .awb)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pdfLinks = try container.decode([String: String].self, forKey: .pdfLinks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    products = try container.decode([PackageProduct].self, forKey: .products)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(packagingId, forKey: .packagingId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(packageType, forKey: .packageType)
            
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
            
            
            try? container.encodeIfPresent(width, forKey: .width)
            
            
            
            
            try? container.encodeIfPresent(height, forKey: .height)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(errorRate, forKey: .errorRate)
            
            
            
            
            try? container.encodeIfPresent(packageVolWeight, forKey: .packageVolWeight)
            
            
            
            
            try? container.encodeIfPresent(maxWeight, forKey: .maxWeight)
            
            
            
            
            try? container.encodeIfPresent(awb, forKey: .awb)
            
            
            
            
            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)
            
            
            
            
            try? container.encodeIfPresent(products, forKey: .products)
            
            
        }
        
    }
}


