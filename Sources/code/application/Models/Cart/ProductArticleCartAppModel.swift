

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: ProductArticle
        Used By: Cart
    */
    class ProductArticle: Codable {
        
        public var price: ArticlePriceInfo?
        
        public var productGroupTags: [String]?
        
        public var extraMeta: [String: Any]?
        
        public var quantity: Int?
        
        public var customJson: [String: Any]?
        
        public var meta: [String: Any]?
        
        public var size: String?
        
        public var mtoQuantity: Int?
        
        public var seller: BaseInfo?
        
        public var sellerIdentifier: String?
        
        public var parentItemIdentifiers: [String: Any]?
        
        public var identifier: [String: Any]?
        
        public var store: StoreInfo?
        
        public var fulfillmentOption: FulfillmentOptionSchema?
        
        public var pickupStoreDetail: PickupStoreDetailSchema?
        
        public var cartItemMeta: [String: Any]?
        
        public var uid: String?
        
        public var forceNewLineItem: Bool?
        
        public var giftCard: [String: Any]?
        
        public var isGiftVisible: Bool?
        
        public var type: String?
        
        public var itemIndex: Int?
        
        public var tags: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case price = "price"
            
            case productGroupTags = "product_group_tags"
            
            case extraMeta = "extra_meta"
            
            case quantity = "quantity"
            
            case customJson = "_custom_json"
            
            case meta = "meta"
            
            case size = "size"
            
            case mtoQuantity = "mto_quantity"
            
            case seller = "seller"
            
            case sellerIdentifier = "seller_identifier"
            
            case parentItemIdentifiers = "parent_item_identifiers"
            
            case identifier = "identifier"
            
            case store = "store"
            
            case fulfillmentOption = "fulfillment_option"
            
            case pickupStoreDetail = "pickup_store_detail"
            
            case cartItemMeta = "cart_item_meta"
            
            case uid = "uid"
            
            case forceNewLineItem = "force_new_line_item"
            
            case giftCard = "gift_card"
            
            case isGiftVisible = "is_gift_visible"
            
            case type = "type"
            
            case itemIndex = "item_index"
            
            case tags = "tags"
            
        }

        public init(cartItemMeta: [String: Any]? = nil, extraMeta: [String: Any]? = nil, forceNewLineItem: Bool? = nil, fulfillmentOption: FulfillmentOptionSchema? = nil, giftCard: [String: Any]? = nil, identifier: [String: Any]? = nil, isGiftVisible: Bool? = nil, itemIndex: Int? = nil, meta: [String: Any]? = nil, mtoQuantity: Int? = nil, parentItemIdentifiers: [String: Any]? = nil, pickupStoreDetail: PickupStoreDetailSchema? = nil, price: ArticlePriceInfo? = nil, productGroupTags: [String]? = nil, quantity: Int? = nil, seller: BaseInfo? = nil, sellerIdentifier: String? = nil, size: String? = nil, store: StoreInfo? = nil, tags: [String]? = nil, type: String? = nil, uid: String? = nil, customJson: [String: Any]? = nil) {
            
            self.price = price
            
            self.productGroupTags = productGroupTags
            
            self.extraMeta = extraMeta
            
            self.quantity = quantity
            
            self.customJson = customJson
            
            self.meta = meta
            
            self.size = size
            
            self.mtoQuantity = mtoQuantity
            
            self.seller = seller
            
            self.sellerIdentifier = sellerIdentifier
            
            self.parentItemIdentifiers = parentItemIdentifiers
            
            self.identifier = identifier
            
            self.store = store
            
            self.fulfillmentOption = fulfillmentOption
            
            self.pickupStoreDetail = pickupStoreDetail
            
            self.cartItemMeta = cartItemMeta
            
            self.uid = uid
            
            self.forceNewLineItem = forceNewLineItem
            
            self.giftCard = giftCard
            
            self.isGiftVisible = isGiftVisible
            
            self.type = type
            
            self.itemIndex = itemIndex
            
            self.tags = tags
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                price = try container.decode(ArticlePriceInfo.self, forKey: .price)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                productGroupTags = try container.decode([String].self, forKey: .productGroupTags)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
            
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
                customJson = try container.decode([String: Any].self, forKey: .customJson)
            
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
                size = try container.decode(String.self, forKey: .size)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                mtoQuantity = try container.decode(Int.self, forKey: .mtoQuantity)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                seller = try container.decode(BaseInfo.self, forKey: .seller)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
            
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
                identifier = try container.decode([String: Any].self, forKey: .identifier)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                store = try container.decode(StoreInfo.self, forKey: .store)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                fulfillmentOption = try container.decode(FulfillmentOptionSchema.self, forKey: .fulfillmentOption)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                pickupStoreDetail = try container.decode(PickupStoreDetailSchema.self, forKey: .pickupStoreDetail)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cartItemMeta = try container.decode([String: Any].self, forKey: .cartItemMeta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                uid = try container.decode(String.self, forKey: .uid)
            
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
                giftCard = try container.decode([String: Any].self, forKey: .giftCard)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isGiftVisible = try container.decode(Bool.self, forKey: .isGiftVisible)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                type = try container.decode(String.self, forKey: .type)
            
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
            
            
            
            do {
                tags = try container.decode([String].self, forKey: .tags)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            try? container.encodeIfPresent(productGroupTags, forKey: .productGroupTags)
            
            
            
            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            try? container.encodeIfPresent(mtoQuantity, forKey: .mtoQuantity)
            
            
            
            try? container.encodeIfPresent(seller, forKey: .seller)
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            try? container.encodeIfPresent(parentItemIdentifiers, forKey: .parentItemIdentifiers)
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
            
            try? container.encodeIfPresent(fulfillmentOption, forKey: .fulfillmentOption)
            
            
            
            try? container.encodeIfPresent(pickupStoreDetail, forKey: .pickupStoreDetail)
            
            
            
            try? container.encodeIfPresent(cartItemMeta, forKey: .cartItemMeta)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            try? container.encodeIfPresent(forceNewLineItem, forKey: .forceNewLineItem)
            
            
            
            try? container.encodeIfPresent(giftCard, forKey: .giftCard)
            
            
            
            try? container.encodeIfPresent(isGiftVisible, forKey: .isGiftVisible)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(itemIndex, forKey: .itemIndex)
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
        }
        
    }
}
