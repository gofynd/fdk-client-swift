

import Foundation


public extension PlatformClient.Order {
    /*
        Model: LineItem
        Used By: Order
    */

    class LineItem: Codable {
        
        
        public var charges: [Charge]
        
        public var meta: [String: Any]?
        
        public var customMessage: String?
        
        public var quantity: Int?
        
        public var sellerIdentifier: String
        
        public var externalLineId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case charges = "charges"
            
            case meta = "meta"
            
            case customMessage = "custom_message"
            
            case quantity = "quantity"
            
            case sellerIdentifier = "seller_identifier"
            
            case externalLineId = "external_line_id"
            
        }

        public init(charges: [Charge], customMessage: String? = nil, externalLineId: String? = nil, meta: [String: Any]? = nil, quantity: Int? = nil, sellerIdentifier: String) {
            
            self.charges = charges
            
            self.meta = meta
            
            self.customMessage = customMessage
            
            self.quantity = quantity
            
            self.sellerIdentifier = sellerIdentifier
            
            self.externalLineId = externalLineId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                charges = try container.decode([Charge].self, forKey: .charges)
                
            
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customMessage = try container.decode(String.self, forKey: .customMessage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
            
            
            
                do {
                    externalLineId = try container.decode(String.self, forKey: .externalLineId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(charges, forKey: .charges)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(customMessage, forKey: .customMessage)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(externalLineId, forKey: .externalLineId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: LineItem
        Used By: Order
    */

    class LineItem: Codable {
        
        
        public var charges: [Charge]
        
        public var meta: [String: Any]?
        
        public var customMessage: String?
        
        public var quantity: Int?
        
        public var sellerIdentifier: String
        
        public var externalLineId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case charges = "charges"
            
            case meta = "meta"
            
            case customMessage = "custom_message"
            
            case quantity = "quantity"
            
            case sellerIdentifier = "seller_identifier"
            
            case externalLineId = "external_line_id"
            
        }

        public init(charges: [Charge], customMessage: String? = nil, externalLineId: String? = nil, meta: [String: Any]? = nil, quantity: Int? = nil, sellerIdentifier: String) {
            
            self.charges = charges
            
            self.meta = meta
            
            self.customMessage = customMessage
            
            self.quantity = quantity
            
            self.sellerIdentifier = sellerIdentifier
            
            self.externalLineId = externalLineId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                charges = try container.decode([Charge].self, forKey: .charges)
                
            
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customMessage = try container.decode(String.self, forKey: .customMessage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
            
            
            
                do {
                    externalLineId = try container.decode(String.self, forKey: .externalLineId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(charges, forKey: .charges)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(customMessage, forKey: .customMessage)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(externalLineId, forKey: .externalLineId)
            
            
        }
        
    }
}


