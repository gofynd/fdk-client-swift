

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ConsolidateShipmentPayload
        Used By: Order
    */

    class ConsolidateShipmentPayload: Codable {
        
        
        public var consolidatedShipmentId: String?
        
        public var products: [ProductDetails]?
        
        public var revisePromise: RePromise?
        
        public var packagingDimensions: PackagingDimensions?
        

        public enum CodingKeys: String, CodingKey {
            
            case consolidatedShipmentId = "consolidated_shipment_id"
            
            case products = "products"
            
            case revisePromise = "revise_promise"
            
            case packagingDimensions = "packaging_dimensions"
            
        }

        public init(consolidatedShipmentId: String? = nil, packagingDimensions: PackagingDimensions? = nil, products: [ProductDetails]? = nil, revisePromise: RePromise? = nil) {
            
            self.consolidatedShipmentId = consolidatedShipmentId
            
            self.products = products
            
            self.revisePromise = revisePromise
            
            self.packagingDimensions = packagingDimensions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    consolidatedShipmentId = try container.decode(String.self, forKey: .consolidatedShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    products = try container.decode([ProductDetails].self, forKey: .products)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    revisePromise = try container.decode(RePromise.self, forKey: .revisePromise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    packagingDimensions = try container.decode(PackagingDimensions.self, forKey: .packagingDimensions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(consolidatedShipmentId, forKey: .consolidatedShipmentId)
            
            
            
            
            try? container.encodeIfPresent(products, forKey: .products)
            
            
            
            
            try? container.encodeIfPresent(revisePromise, forKey: .revisePromise)
            
            
            
            
            try? container.encodeIfPresent(packagingDimensions, forKey: .packagingDimensions)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ConsolidateShipmentPayload
        Used By: Order
    */

    class ConsolidateShipmentPayload: Codable {
        
        
        public var consolidatedShipmentId: String?
        
        public var products: [ProductDetails]?
        
        public var revisePromise: RePromise?
        
        public var packagingDimensions: PackagingDimensions?
        

        public enum CodingKeys: String, CodingKey {
            
            case consolidatedShipmentId = "consolidated_shipment_id"
            
            case products = "products"
            
            case revisePromise = "revise_promise"
            
            case packagingDimensions = "packaging_dimensions"
            
        }

        public init(consolidatedShipmentId: String? = nil, packagingDimensions: PackagingDimensions? = nil, products: [ProductDetails]? = nil, revisePromise: RePromise? = nil) {
            
            self.consolidatedShipmentId = consolidatedShipmentId
            
            self.products = products
            
            self.revisePromise = revisePromise
            
            self.packagingDimensions = packagingDimensions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    consolidatedShipmentId = try container.decode(String.self, forKey: .consolidatedShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    products = try container.decode([ProductDetails].self, forKey: .products)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    revisePromise = try container.decode(RePromise.self, forKey: .revisePromise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    packagingDimensions = try container.decode(PackagingDimensions.self, forKey: .packagingDimensions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(consolidatedShipmentId, forKey: .consolidatedShipmentId)
            
            
            
            
            try? container.encodeIfPresent(products, forKey: .products)
            
            
            
            
            try? container.encodeIfPresent(revisePromise, forKey: .revisePromise)
            
            
            
            
            try? container.encodeIfPresent(packagingDimensions, forKey: .packagingDimensions)
            
            
        }
        
    }
}


