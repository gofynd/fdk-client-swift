

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: UpdateProductCart
        Used By: Cart
    */
    class UpdateProductCart: Codable {
        
        public var extraMeta: [String: Any]?
        
        public var customJson: [String: Any]?
        
        public var forceNewLineItem: Bool?
        
        public var quantity: Int?
        
        public var itemSize: String?
        
        public var itemIndex: Int?
        
        public var identifiers: CartProductIdentifer
        
        public var articleId: String?
        
        public var parentItemIdentifiers: [String: Any]?
        
        public var itemId: Int?
        
        public var meta: [String: Any]?
        
        public var fulfillmentOptionSlug: String?
        
        public var pickupStoreId: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case extraMeta = "extra_meta"
            
            case customJson = "_custom_json"
            
            case forceNewLineItem = "force_new_line_item"
            
            case quantity = "quantity"
            
            case itemSize = "item_size"
            
            case itemIndex = "item_index"
            
            case identifiers = "identifiers"
            
            case articleId = "article_id"
            
            case parentItemIdentifiers = "parent_item_identifiers"
            
            case itemId = "item_id"
            
            case meta = "meta"
            
            case fulfillmentOptionSlug = "fulfillment_option_slug"
            
            case pickupStoreId = "pickup_store_id"
            
        }

        public init(articleId: String? = nil, extraMeta: [String: Any]? = nil, forceNewLineItem: Bool? = nil, fulfillmentOptionSlug: String? = nil, identifiers: CartProductIdentifer, itemId: Int? = nil, itemIndex: Int? = nil, itemSize: String? = nil, meta: [String: Any]? = nil, parentItemIdentifiers: [String: Any]? = nil, pickupStoreId: Int? = nil, quantity: Int? = nil, customJson: [String: Any]? = nil) {
            
            self.extraMeta = extraMeta
            
            self.customJson = customJson
            
            self.forceNewLineItem = forceNewLineItem
            
            self.quantity = quantity
            
            self.itemSize = itemSize
            
            self.itemIndex = itemIndex
            
            self.identifiers = identifiers
            
            self.articleId = articleId
            
            self.parentItemIdentifiers = parentItemIdentifiers
            
            self.itemId = itemId
            
            self.meta = meta
            
            self.fulfillmentOptionSlug = fulfillmentOptionSlug
            
            self.pickupStoreId = pickupStoreId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                forceNewLineItem = try container.decode(Bool.self, forKey: .forceNewLineItem)
            
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
            
            
            
            do {
                itemSize = try container.decode(String.self, forKey: .itemSize)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemIndex = try container.decode(Int.self, forKey: .itemIndex)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            identifiers = try container.decode(CartProductIdentifer.self, forKey: .identifiers)
            
            
            
            
            do {
                articleId = try container.decode(String.self, forKey: .articleId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                parentItemIdentifiers = try container.decode([String: Any].self, forKey: .parentItemIdentifiers)
            
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
                meta = try container.decode([String: Any].self, forKey: .meta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                fulfillmentOptionSlug = try container.decode(String.self, forKey: .fulfillmentOptionSlug)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                pickupStoreId = try container.decode(Int.self, forKey: .pickupStoreId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            try? container.encodeIfPresent(forceNewLineItem, forKey: .forceNewLineItem)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
            
            
            
            try? container.encodeIfPresent(itemIndex, forKey: .itemIndex)
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            try? container.encodeIfPresent(articleId, forKey: .articleId)
            
            
            
            try? container.encodeIfPresent(parentItemIdentifiers, forKey: .parentItemIdentifiers)
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            try? container.encodeIfPresent(fulfillmentOptionSlug, forKey: .fulfillmentOptionSlug)
            
            
            
            try? container.encodeIfPresent(pickupStoreId, forKey: .pickupStoreId)
            
            
        }
        
    }
}
