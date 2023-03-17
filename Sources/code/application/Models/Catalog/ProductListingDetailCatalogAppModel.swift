

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: ProductListingDetail
         Used By: Catalog
     */
    class ProductListingDetail: Codable {
        public var slug: String

        public var shortDescription: String?

        public var seo: ApplicationItemSEO?

        public var variants: [ProductVariantListingResponse]?

        public var moq: ApplicationItemMOQ?

        public var highlights: [String]?

        public var imageNature: String?

        public var description: String?

        public var name: String?

        public var tags: [String]?

        public var identifiers: [String]?

        public var uid: Int?

        public var groupedAttributes: [ProductDetailGroupedAttribute]?

        public var price: ProductListingPrice?

        public var action: ProductListingAction?

        public var categoryMap: ProductCategoryMap?

        public var productOnlineDate: String?

        public var ratingCount: Int?

        public var similars: [String]?

        public var isDependent: Bool?

        public var tryouts: [String]?

        public var sizes: [String]?

        public var brand: ProductBrand?

        public var attributes: [String: Any]?

        public var itemType: String?

        public var color: String?

        public var teaserTag: String?

        public var netQuantity: NetQuantity?

        public var medias: [Media]?

        public var type: String?

        public var customJson: [String: Any]?

        public var rating: Double?

        public var itemCode: String?

        public var discount: String?

        public var sellable: Bool?

        public var hasVariant: Bool?

        public var categories: [ProductBrand]?

        public var customMeta: [CustomMetaFields]?

        public enum CodingKeys: String, CodingKey {
            case slug

            case shortDescription = "short_description"

            case seo

            case variants

            case moq

            case highlights

            case imageNature = "image_nature"

            case description

            case name

            case tags

            case identifiers

            case uid

            case groupedAttributes = "grouped_attributes"

            case price

            case action

            case categoryMap = "category_map"

            case productOnlineDate = "product_online_date"

            case ratingCount = "rating_count"

            case similars

            case isDependent = "is_dependent"

            case tryouts

            case sizes

            case brand

            case attributes

            case itemType = "item_type"

            case color

            case teaserTag = "teaser_tag"

            case netQuantity = "net_quantity"

            case medias

            case type

            case customJson = "_custom_json"

            case rating

            case itemCode = "item_code"

            case discount

            case sellable

            case hasVariant = "has_variant"

            case categories

            case customMeta = "_custom_meta"
        }

        public init(action: ProductListingAction? = nil, attributes: [String: Any]? = nil, brand: ProductBrand? = nil, categories: [ProductBrand]? = nil, categoryMap: ProductCategoryMap? = nil, color: String? = nil, description: String? = nil, discount: String? = nil, groupedAttributes: [ProductDetailGroupedAttribute]? = nil, hasVariant: Bool? = nil, highlights: [String]? = nil, identifiers: [String]? = nil, imageNature: String? = nil, isDependent: Bool? = nil, itemCode: String? = nil, itemType: String? = nil, medias: [Media]? = nil, moq: ApplicationItemMOQ? = nil, name: String? = nil, netQuantity: NetQuantity? = nil, price: ProductListingPrice? = nil, productOnlineDate: String? = nil, rating: Double? = nil, ratingCount: Int? = nil, sellable: Bool? = nil, seo: ApplicationItemSEO? = nil, shortDescription: String? = nil, similars: [String]? = nil, sizes: [String]? = nil, slug: String, tags: [String]? = nil, teaserTag: String? = nil, tryouts: [String]? = nil, type: String? = nil, uid: Int? = nil, variants: [ProductVariantListingResponse]? = nil, customJson: [String: Any]? = nil, customMeta: [CustomMetaFields]? = nil) {
            self.slug = slug

            self.shortDescription = shortDescription

            self.seo = seo

            self.variants = variants

            self.moq = moq

            self.highlights = highlights

            self.imageNature = imageNature

            self.description = description

            self.name = name

            self.tags = tags

            self.identifiers = identifiers

            self.uid = uid

            self.groupedAttributes = groupedAttributes

            self.price = price

            self.action = action

            self.categoryMap = categoryMap

            self.productOnlineDate = productOnlineDate

            self.ratingCount = ratingCount

            self.similars = similars

            self.isDependent = isDependent

            self.tryouts = tryouts

            self.sizes = sizes

            self.brand = brand

            self.attributes = attributes

            self.itemType = itemType

            self.color = color

            self.teaserTag = teaserTag

            self.netQuantity = netQuantity

            self.medias = medias

            self.type = type

            self.customJson = customJson

            self.rating = rating

            self.itemCode = itemCode

            self.discount = discount

            self.sellable = sellable

            self.hasVariant = hasVariant

            self.categories = categories

            self.customMeta = customMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                seo = try container.decode(ApplicationItemSEO.self, forKey: .seo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variants = try container.decode([ProductVariantListingResponse].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                moq = try container.decode(ApplicationItemMOQ.self, forKey: .moq)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                imageNature = try container.decode(String.self, forKey: .imageNature)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifiers = try container.decode([String].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                groupedAttributes = try container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(ProductListingPrice.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(ProductListingAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                categoryMap = try container.decode(ProductCategoryMap.self, forKey: .categoryMap)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productOnlineDate = try container.decode(String.self, forKey: .productOnlineDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ratingCount = try container.decode(Int.self, forKey: .ratingCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                similars = try container.decode([String].self, forKey: .similars)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tryouts = try container.decode([String].self, forKey: .tryouts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizes = try container.decode([String].self, forKey: .sizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode(ProductBrand.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributes = try container.decode([String: Any].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemType = try container.decode(String.self, forKey: .itemType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                color = try container.decode(String.self, forKey: .color)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                teaserTag = try container.decode(String.self, forKey: .teaserTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                medias = try container.decode([Media].self, forKey: .medias)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rating = try container.decode(Double.self, forKey: .rating)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemCode = try container.decode(String.self, forKey: .itemCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discount = try container.decode(String.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellable = try container.decode(Bool.self, forKey: .sellable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hasVariant = try container.decode(Bool.self, forKey: .hasVariant)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                categories = try container.decode([ProductBrand].self, forKey: .categories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customMeta = try container.decode([CustomMetaFields].self, forKey: .customMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(categoryMap, forKey: .categoryMap)

            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)

            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)

            try? container.encodeIfPresent(similars, forKey: .similars)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(medias, forKey: .medias)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellable, forKey: .sellable)

            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)

            try? container.encodeIfPresent(categories, forKey: .categories)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)
        }
    }
}
