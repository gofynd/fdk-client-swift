

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: ShipmentsRequestSchema
        Used By: Order
    */
    class ShipmentsRequestSchema: Codable {
        
        public var reasons: ReasonsData?
        
        public var products: [Products]?
        
        public var dataUpdates: DataUpdates?
        
        public var identifier: String
        

        public enum CodingKeys: String, CodingKey {
            
            case reasons = "reasons"
            
            case products = "products"
            
            case dataUpdates = "data_updates"
            
            case identifier = "identifier"
            
        }

        public init(dataUpdates: DataUpdates? = nil, identifier: String, products: [Products]? = nil, reasons: ReasonsData? = nil) {
            
            self.reasons = reasons
            
            self.products = products
            
            self.dataUpdates = dataUpdates
            
            self.identifier = identifier
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                reasons = try container.decode(ReasonsData.self, forKey: .reasons)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                products = try container.decode([Products].self, forKey: .products)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                dataUpdates = try container.decode(DataUpdates.self, forKey: .dataUpdates)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            identifier = try container.decode(String.self, forKey: .identifier)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(reasons, forKey: .reasons)
            
            
            
            try? container.encodeIfPresent(products, forKey: .products)
            
            
            
            try? container.encodeIfPresent(dataUpdates, forKey: .dataUpdates)
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
        }
        
    }
}
