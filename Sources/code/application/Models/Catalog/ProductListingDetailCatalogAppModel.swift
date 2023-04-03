

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: ProductListingDetail
         Used By: Catalog
     */
    class ProductListingDetail: Codable {
        public var type: String?

        public var categories: [ProductBrand]?

        public var netQuantity: NetQuantity?

        public var hasVariant: Bool?

        public var productOnlineDate: String?

        public var attributes: [String: Any]?

        public var tryouts: [String]?

        public var similars: [String]?

        public var customMeta: [CustomMetaFields]?

        public var discount: String?

        public var brand: ProductBrand?

        public var name: String?

        public var itemCode: String?

        public var highlights: [String]?

        public var groupedAttributes: [ProductDetailGroupedAttribute]?

        public var medias: [Media]?

        public var sellable: Bool?

        public var action: ProductListingAction?

        public var variants: [ProductVariantListingResponse]?

        public var sizes: [String]?

        public var tags: [String]?

        public var ratingCount: Int?

        public var slug: String

        public var imageNature: String?

        public var seo: ApplicationItemSEO?

        public var color: String?

        public var description: String?

        public var shortDescription: String?

        public var uid: Int?

        public var categoryMap: ProductCategoryMap?

        public var moq: ApplicationItemMOQ?

        public var customJson: [String: Any]?

        public var teaserTag: String?

        public var itemType: String?

        public var rating: Double?

        public var price: ProductListingPrice?

        public var isDependent: Bool?

        public var identifiers: [String]?

        public enum CodingKeys: String, CodingKey {
            case type

            case categories

            case netQuantity = "net_quantity"

            case hasVariant = "has_variant"

            case productOnlineDate = "product_online_date"

            case attributes

            case tryouts

            case similars

            case customMeta = "_custom_meta"

            case discount

            case brand

            case name

            case itemCode = "item_code"

            case highlights

            case groupedAttributes = "grouped_attributes"

            case medias

            case sellable

            case action

            case variants

            case sizes

            case tags

            case ratingCount = "rating_count"

            case slug

            case imageNature = "image_nature"

            case seo

            case color

            case description

            case shortDescription = "short_description"

            case uid

            case categoryMap = "category_map"

            case moq

            case customJson = "_custom_json"

            case teaserTag = "teaser_tag"

            case itemType = "item_type"

            case rating

            case price

            case isDependent = "is_dependent"

            case identifiers
        }

        public init(action: ProductListingAction? = nil, attributes: [String: Any]? = nil, brand: ProductBrand? = nil, categories: [ProductBrand]? = nil, categoryMap: ProductCategoryMap? = nil, color: String? = nil, description: String? = nil, discount: String? = nil, groupedAttributes: [ProductDetailGroupedAttribute]? = nil, hasVariant: Bool? = nil, highlights: [String]? = nil, identifiers: [String]? = nil, imageNature: String? = nil, isDependent: Bool? = nil, itemCode: String? = nil, itemType: String? = nil, medias: [Media]? = nil, moq: ApplicationItemMOQ? = nil, name: String? = nil, netQuantity: NetQuantity? = nil, price: ProductListingPrice? = nil, productOnlineDate: String? = nil, rating: Double? = nil, ratingCount: Int? = nil, sellable: Bool? = nil, seo: ApplicationItemSEO? = nil, shortDescription: String? = nil, similars: [String]? = nil, sizes: [String]? = nil, slug: String, tags: [String]? = nil, teaserTag: String? = nil, tryouts: [String]? = nil, type: String? = nil, uid: Int? = nil, variants: [ProductVariantListingResponse]? = nil, customJson: [String: Any]? = nil, customMeta: [CustomMetaFields]? = nil) {
            self.type = type

            self.categories = categories

            self.netQuantity = netQuantity

            self.hasVariant = hasVariant

            self.productOnlineDate = productOnlineDate

            self.attributes = attributes

            self.tryouts = tryouts

            self.similars = similars

            self.customMeta = customMeta

            self.discount = discount

            self.brand = brand

            self.name = name

            self.itemCode = itemCode

            self.highlights = highlights

            self.groupedAttributes = groupedAttributes

            self.medias = medias

            self.sellable = sellable

            self.action = action

            self.variants = variants

            self.sizes = sizes

            self.tags = tags

            self.ratingCount = ratingCount

            self.slug = slug

            self.imageNature = imageNature

            self.seo = seo

            self.color = color

            self.description = description

            self.shortDescription = shortDescription

            self.uid = uid

            self.categoryMap = categoryMap

            self.moq = moq

            self.customJson = customJson

            self.teaserTag = teaserTag

            self.itemType = itemType

            self.rating = rating

            self.price = price

            self.isDependent = isDependent

            self.identifiers = identifiers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

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
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

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
                productOnlineDate = try container.decode(String.self, forKey: .productOnlineDate)

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
                tryouts = try container.decode([String].self, forKey: .tryouts)

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
                customMeta = try container.decode([CustomMetaFields].self, forKey: .customMeta)

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
                brand = try container.decode(ProductBrand.self, forKey: .brand)

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
                itemCode = try container.decode(String.self, forKey: .itemCode)

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
                groupedAttributes = try container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)

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
                sellable = try container.decode(Bool.self, forKey: .sellable)

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
                variants = try container.decode([ProductVariantListingResponse].self, forKey: .variants)

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
                tags = try container.decode([String].self, forKey: .tags)

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

            slug = try container.decode(String.self, forKey: .slug)

            do {
                imageNature = try container.decode(String.self, forKey: .imageNature)

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
                color = try container.decode(String.self, forKey: .color)

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
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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
                categoryMap = try container.decode(ProductCategoryMap.self, forKey: .categoryMap)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                itemType = try container.decode(String.self, forKey: .itemType)

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
                price = try container.decode(ProductListingPrice.self, forKey: .price)

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
                identifiers = try container.decode([String].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(categories, forKey: .categories)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)

            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(similars, forKey: .similars)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)

            try? container.encodeIfPresent(medias, forKey: .medias)

            try? container.encodeIfPresent(sellable, forKey: .sellable)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(categoryMap, forKey: .categoryMap)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
        }
    }
}
