import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: Price
         Used By: Catalog
     */
    class Price: Codable {
        public var max: Double?

        public var min: Double?

        public var currencyCode: String?

        public var currencySymbol: String?

        public enum CodingKeys: String, CodingKey {
            case max

            case min

            case currencyCode = "currency_code"

            case currencySymbol = "currency_symbol"
        }

        public init(currencyCode: String?, currencySymbol: String?, max: Double?, min: Double?) {
            self.max = max

            self.min = min

            self.currencyCode = currencyCode

            self.currencySymbol = currencySymbol
        }

        public func duplicate() -> Price {
            let dict = self.dictionary!
            let copy = Price(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                max = try container.decode(Double.self, forKey: .max)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                min = try container.decode(Double.self, forKey: .min)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(max, forKey: .max)

            try? container.encodeIfPresent(min, forKey: .min)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
        }
    }

    /*
         Model: ProductListingPrice
         Used By: Catalog
     */
    class ProductListingPrice: Codable {
        public var effective: Price?

        public var marked: Price?

        public enum CodingKeys: String, CodingKey {
            case effective

            case marked
        }

        public init(effective: Price?, marked: Price?) {
            self.effective = effective

            self.marked = marked
        }

        public func duplicate() -> ProductListingPrice {
            let dict = self.dictionary!
            let copy = ProductListingPrice(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                effective = try container.decode(Price.self, forKey: .effective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marked = try container.decode(Price.self, forKey: .marked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(marked, forKey: .marked)
        }
    }

    /*
         Model: MetaFields
         Used By: Catalog
     */
    class MetaFields: Codable {
        public var value: String

        public var key: String

        public enum CodingKeys: String, CodingKey {
            case value

            case key
        }

        public init(key: String, value: String) {
            self.value = value

            self.key = key
        }

        public func duplicate() -> MetaFields {
            let dict = self.dictionary!
            let copy = MetaFields(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            value = try container.decode(String.self, forKey: .value)

            key = try container.decode(String.self, forKey: .key)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(key, forKey: .key)
        }
    }

    /*
         Model: Meta
         Used By: Catalog
     */
    class Meta: Codable {
        public var source: String?

        public enum CodingKeys: String, CodingKey {
            case source
        }

        public init(source: String?) {
            self.source = source
        }

        public func duplicate() -> Meta {
            let dict = self.dictionary!
            let copy = Meta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                source = try container.decode(String.self, forKey: .source)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(source, forKey: .source)
        }
    }

    /*
         Model: Media
         Used By: Catalog
     */
    class Media: Codable {
        public var meta: Meta?

        public var type: String?

        public var url: String?

        public enum CodingKeys: String, CodingKey {
            case meta

            case type

            case url
        }

        public init(meta: Meta?, type: String?, url: String?) {
            self.meta = meta

            self.type = type

            self.url = url
        }

        public func duplicate() -> Media {
            let dict = self.dictionary!
            let copy = Media(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode(Meta.self, forKey: .meta)

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
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }

    /*
         Model: ProductListingActionPage
         Used By: Catalog
     */
    class ProductListingActionPage: Codable {
        public var query: [String: Any]?

        public var type: String?

        public var params: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case query

            case type

            case params
        }

        public init(params: [String: Any]?, query: [String: Any]?, type: String?) {
            self.query = query

            self.type = type

            self.params = params
        }

        public func duplicate() -> ProductListingActionPage {
            let dict = self.dictionary!
            let copy = ProductListingActionPage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                query = try container.decode([String: Any].self, forKey: .query)

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
                params = try container.decode([String: Any].self, forKey: .params)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(params, forKey: .params)
        }
    }

    /*
         Model: ProductListingAction
         Used By: Catalog
     */
    class ProductListingAction: Codable {
        public var type: String?

        public var page: ProductListingActionPage?

        public enum CodingKeys: String, CodingKey {
            case type

            case page
        }

        public init(page: ProductListingActionPage?, type: String?) {
            self.type = type

            self.page = page
        }

        public func duplicate() -> ProductListingAction {
            let dict = self.dictionary!
            let copy = ProductListingAction(dictionary: dict)!
            return copy
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
                page = try container.decode(ProductListingActionPage.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: ProductBrand
         Used By: Catalog
     */
    class ProductBrand: Codable {
        public var name: String?

        public var uid: Int?

        public var logo: Media?

        public var action: ProductListingAction?

        public enum CodingKeys: String, CodingKey {
            case name

            case uid

            case logo

            case action
        }

        public init(action: ProductListingAction?, logo: Media?, name: String?, uid: Int?) {
            self.name = name

            self.uid = uid

            self.logo = logo

            self.action = action
        }

        public func duplicate() -> ProductBrand {
            let dict = self.dictionary!
            let copy = ProductBrand(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

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
                logo = try container.decode(Media.self, forKey: .logo)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(action, forKey: .action)
        }
    }

    /*
         Model: ProductDetailAttribute
         Used By: Catalog
     */
    class ProductDetailAttribute: Codable {
        public var type: String?

        public var value: String?

        public var key: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case value

            case key
        }

        public init(key: String?, type: String?, value: String?) {
            self.type = type

            self.value = value

            self.key = key
        }

        public func duplicate() -> ProductDetailAttribute {
            let dict = self.dictionary!
            let copy = ProductDetailAttribute(dictionary: dict)!
            return copy
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
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(key, forKey: .key)
        }
    }

    /*
         Model: ProductDetailGroupedAttribute
         Used By: Catalog
     */
    class ProductDetailGroupedAttribute: Codable {
        public var details: [ProductDetailAttribute]?

        public var title: String?

        public enum CodingKeys: String, CodingKey {
            case details

            case title
        }

        public init(details: [ProductDetailAttribute]?, title: String?) {
            self.details = details

            self.title = title
        }

        public func duplicate() -> ProductDetailGroupedAttribute {
            let dict = self.dictionary!
            let copy = ProductDetailGroupedAttribute(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                details = try container.decode([ProductDetailAttribute].self, forKey: .details)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }

    /*
         Model: ProductDetail
         Used By: Catalog
     */
    class ProductDetail: Codable {
        public var itemType: String?

        public var description: String?

        public var price: ProductListingPrice?

        public var itemCode: String?

        public var tryouts: [String]?

        public var shortDescription: String?

        public var uid: Int?

        public var customMeta: [MetaFields]?

        public var productOnlineDate: String?

        public var highlights: [String]?

        public var ratingCount: Int?

        public var categories: [ProductBrand]?

        public var slug: String

        public var action: ProductListingAction?

        public var imageNature: String?

        public var rating: Double?

        public var similars: [String]?

        public var hasVariant: Bool?

        public var customJson: [String: Any]?

        public var medias: [Media]?

        public var name: String?

        public var type: String?

        public var attributes: [String: Any]?

        public var teaserTag: String?

        public var color: String?

        public var discount: String?

        public var groupedAttributes: [ProductDetailGroupedAttribute]?

        public var brand: ProductBrand?

        public enum CodingKeys: String, CodingKey {
            case itemType = "item_type"

            case description

            case price

            case itemCode = "item_code"

            case tryouts

            case shortDescription = "short_description"

            case uid

            case customMeta = "_custom_meta"

            case productOnlineDate = "product_online_date"

            case highlights

            case ratingCount = "rating_count"

            case categories

            case slug

            case action

            case imageNature = "image_nature"

            case rating

            case similars

            case hasVariant = "has_variant"

            case customJson = "_custom_json"

            case medias

            case name

            case type

            case attributes

            case teaserTag = "teaser_tag"

            case color

            case discount

            case groupedAttributes = "grouped_attributes"

            case brand
        }

        public init(action: ProductListingAction?, attributes: [String: Any]?, brand: ProductBrand?, categories: [ProductBrand]?, color: String?, description: String?, discount: String?, groupedAttributes: [ProductDetailGroupedAttribute]?, hasVariant: Bool?, highlights: [String]?, imageNature: String?, itemCode: String?, itemType: String?, medias: [Media]?, name: String?, price: ProductListingPrice?, productOnlineDate: String?, rating: Double?, ratingCount: Int?, shortDescription: String?, similars: [String]?, slug: String, teaserTag: String?, tryouts: [String]?, type: String?, uid: Int?, customJson: [String: Any]?, customMeta: [MetaFields]?) {
            self.itemType = itemType

            self.description = description

            self.price = price

            self.itemCode = itemCode

            self.tryouts = tryouts

            self.shortDescription = shortDescription

            self.uid = uid

            self.customMeta = customMeta

            self.productOnlineDate = productOnlineDate

            self.highlights = highlights

            self.ratingCount = ratingCount

            self.categories = categories

            self.slug = slug

            self.action = action

            self.imageNature = imageNature

            self.rating = rating

            self.similars = similars

            self.hasVariant = hasVariant

            self.customJson = customJson

            self.medias = medias

            self.name = name

            self.type = type

            self.attributes = attributes

            self.teaserTag = teaserTag

            self.color = color

            self.discount = discount

            self.groupedAttributes = groupedAttributes

            self.brand = brand
        }

        public func duplicate() -> ProductDetail {
            let dict = self.dictionary!
            let copy = ProductDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemType = try container.decode(String.self, forKey: .itemType)

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
                price = try container.decode(ProductListingPrice.self, forKey: .price)

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
                tryouts = try container.decode([String].self, forKey: .tryouts)

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
                customMeta = try container.decode([MetaFields].self, forKey: .customMeta)

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
                highlights = try container.decode([String].self, forKey: .highlights)

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
                categories = try container.decode([ProductBrand].self, forKey: .categories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                action = try container.decode(ProductListingAction.self, forKey: .action)

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
                rating = try container.decode(Double.self, forKey: .rating)

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
                hasVariant = try container.decode(Bool.self, forKey: .hasVariant)

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
                medias = try container.decode([Media].self, forKey: .medias)

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
                type = try container.decode(String.self, forKey: .type)

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
                teaserTag = try container.decode(String.self, forKey: .teaserTag)

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
                discount = try container.decode(String.self, forKey: .discount)

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
                brand = try container.decode(ProductBrand.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)

            try? container.encodeIfPresent(categories, forKey: .categories)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(similars, forKey: .similars)

            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(medias, forKey: .medias)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)

            try? container.encodeIfPresent(brand, forKey: .brand)
        }
    }

    /*
         Model: ErrorResponse
         Used By: Catalog
     */
    class ErrorResponse: Codable {
        public var error: String?

        public enum CodingKeys: String, CodingKey {
            case error
        }

        public init(error: String?) {
            self.error = error
        }

        public func duplicate() -> ErrorResponse {
            let dict = self.dictionary!
            let copy = ErrorResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                error = try container.decode(String.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }

    /*
         Model: ProductSize
         Used By: Catalog
     */
    class ProductSize: Codable {
        public var isAvailable: Bool?

        public var quantity: Int?

        public var display: String?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case isAvailable = "is_available"

            case quantity

            case display

            case value
        }

        public init(display: String?, isAvailable: Bool?, quantity: Int?, value: String?) {
            self.isAvailable = isAvailable

            self.quantity = quantity

            self.display = display

            self.value = value
        }

        public func duplicate() -> ProductSize {
            let dict = self.dictionary!
            let copy = ProductSize(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isAvailable = try container.decode(Bool.self, forKey: .isAvailable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: ProductSizeStores
         Used By: Catalog
     */
    class ProductSizeStores: Codable {
        public var count: Int?

        public enum CodingKeys: String, CodingKey {
            case count
        }

        public init(count: Int?) {
            self.count = count
        }

        public func duplicate() -> ProductSizeStores {
            let dict = self.dictionary!
            let copy = ProductSizeStores(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                count = try container.decode(Int.self, forKey: .count)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(count, forKey: .count)
        }
    }

    /*
         Model: SizeChartValues
         Used By: Catalog
     */
    class SizeChartValues: Codable {
        public var col5: String?

        public var col3: String?

        public var col1: String?

        public var col6: String?

        public var col2: String?

        public var col4: String?

        public enum CodingKeys: String, CodingKey {
            case col5 = "col_5"

            case col3 = "col_3"

            case col1 = "col_1"

            case col6 = "col_6"

            case col2 = "col_2"

            case col4 = "col_4"
        }

        public init(col1: String?, col2: String?, col3: String?, col4: String?, col5: String?, col6: String?) {
            self.col5 = col5

            self.col3 = col3

            self.col1 = col1

            self.col6 = col6

            self.col2 = col2

            self.col4 = col4
        }

        public func duplicate() -> SizeChartValues {
            let dict = self.dictionary!
            let copy = SizeChartValues(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                col5 = try container.decode(String.self, forKey: .col5)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col3 = try container.decode(String.self, forKey: .col3)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col1 = try container.decode(String.self, forKey: .col1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col6 = try container.decode(String.self, forKey: .col6)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col2 = try container.decode(String.self, forKey: .col2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col4 = try container.decode(String.self, forKey: .col4)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(col5, forKey: .col5)

            try? container.encodeIfPresent(col3, forKey: .col3)

            try? container.encodeIfPresent(col1, forKey: .col1)

            try? container.encodeIfPresent(col6, forKey: .col6)

            try? container.encodeIfPresent(col2, forKey: .col2)

            try? container.encodeIfPresent(col4, forKey: .col4)
        }
    }

    /*
         Model: ColumnHeader
         Used By: Catalog
     */
    class ColumnHeader: Codable {
        public var convertable: Bool?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case convertable

            case value
        }

        public init(convertable: Bool?, value: String?) {
            self.convertable = convertable

            self.value = value
        }

        public func duplicate() -> ColumnHeader {
            let dict = self.dictionary!
            let copy = ColumnHeader(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                convertable = try container.decode(Bool.self, forKey: .convertable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(convertable, forKey: .convertable)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: ColumnHeaders
         Used By: Catalog
     */
    class ColumnHeaders: Codable {
        public var col5: ColumnHeader?

        public var col3: ColumnHeader?

        public var col1: ColumnHeader?

        public var col6: ColumnHeader?

        public var col2: ColumnHeader?

        public var col4: ColumnHeader?

        public enum CodingKeys: String, CodingKey {
            case col5 = "col_5"

            case col3 = "col_3"

            case col1 = "col_1"

            case col6 = "col_6"

            case col2 = "col_2"

            case col4 = "col_4"
        }

        public init(col1: ColumnHeader?, col2: ColumnHeader?, col3: ColumnHeader?, col4: ColumnHeader?, col5: ColumnHeader?, col6: ColumnHeader?) {
            self.col5 = col5

            self.col3 = col3

            self.col1 = col1

            self.col6 = col6

            self.col2 = col2

            self.col4 = col4
        }

        public func duplicate() -> ColumnHeaders {
            let dict = self.dictionary!
            let copy = ColumnHeaders(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                col5 = try container.decode(ColumnHeader.self, forKey: .col5)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col3 = try container.decode(ColumnHeader.self, forKey: .col3)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col1 = try container.decode(ColumnHeader.self, forKey: .col1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col6 = try container.decode(ColumnHeader.self, forKey: .col6)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col2 = try container.decode(ColumnHeader.self, forKey: .col2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col4 = try container.decode(ColumnHeader.self, forKey: .col4)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(col5, forKey: .col5)

            try? container.encodeIfPresent(col3, forKey: .col3)

            try? container.encodeIfPresent(col1, forKey: .col1)

            try? container.encodeIfPresent(col6, forKey: .col6)

            try? container.encodeIfPresent(col2, forKey: .col2)

            try? container.encodeIfPresent(col4, forKey: .col4)
        }
    }

    /*
         Model: SizeChart
         Used By: Catalog
     */
    class SizeChart: Codable {
        public var sizes: [SizeChartValues]?

        public var description: String?

        public var sizeTip: String?

        public var image: String?

        public var unit: String?

        public var headers: ColumnHeaders?

        public var title: String?

        public enum CodingKeys: String, CodingKey {
            case sizes

            case description

            case sizeTip = "size_tip"

            case image

            case unit

            case headers

            case title
        }

        public init(description: String?, headers: ColumnHeaders?, image: String?, sizes: [SizeChartValues]?, sizeTip: String?, title: String?, unit: String?) {
            self.sizes = sizes

            self.description = description

            self.sizeTip = sizeTip

            self.image = image

            self.unit = unit

            self.headers = headers

            self.title = title
        }

        public func duplicate() -> SizeChart {
            let dict = self.dictionary!
            let copy = SizeChart(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sizes = try container.decode([SizeChartValues].self, forKey: .sizes)

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
                sizeTip = try container.decode(String.self, forKey: .sizeTip)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                image = try container.decode(String.self, forKey: .image)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                unit = try container.decode(String.self, forKey: .unit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                headers = try container.decode(ColumnHeaders.self, forKey: .headers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(sizeTip, forKey: .sizeTip)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(headers, forKey: .headers)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }

    /*
         Model: ProductSizes
         Used By: Catalog
     */
    class ProductSizes: Codable {
        public var sizes: [ProductSize]?

        public var sellable: Bool?

        public var price: ProductListingPrice?

        public var stores: ProductSizeStores?

        public var sizeChart: SizeChart?

        public var discount: String?

        public enum CodingKeys: String, CodingKey {
            case sizes

            case sellable

            case price

            case stores

            case sizeChart = "size_chart"

            case discount
        }

        public init(discount: String?, price: ProductListingPrice?, sellable: Bool?, sizes: [ProductSize]?, sizeChart: SizeChart?, stores: ProductSizeStores?) {
            self.sizes = sizes

            self.sellable = sellable

            self.price = price

            self.stores = stores

            self.sizeChart = sizeChart

            self.discount = discount
        }

        public func duplicate() -> ProductSizes {
            let dict = self.dictionary!
            let copy = ProductSizes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sizes = try container.decode([ProductSize].self, forKey: .sizes)

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
                price = try container.decode(ProductListingPrice.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stores = try container.decode(ProductSizeStores.self, forKey: .stores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizeChart = try container.decode(SizeChart.self, forKey: .sizeChart)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(sellable, forKey: .sellable)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(sizeChart, forKey: .sizeChart)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }

    /*
         Model: AttributeDetail
         Used By: Catalog
     */
    class AttributeDetail: Codable {
        public var description: String?

        public var logo: String?

        public var display: String?

        public var key: String?

        public enum CodingKeys: String, CodingKey {
            case description

            case logo

            case display

            case key
        }

        public init(description: String?, display: String?, key: String?, logo: String?) {
            self.description = description

            self.logo = logo

            self.display = display

            self.key = key
        }

        public func duplicate() -> AttributeDetail {
            let dict = self.dictionary!
            let copy = AttributeDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(key, forKey: .key)
        }
    }

    /*
         Model: AttributeMetadata
         Used By: Catalog
     */
    class AttributeMetadata: Codable {
        public var details: [AttributeDetail]?

        public var title: String?

        public enum CodingKeys: String, CodingKey {
            case details

            case title
        }

        public init(details: [AttributeDetail]?, title: String?) {
            self.details = details

            self.title = title
        }

        public func duplicate() -> AttributeMetadata {
            let dict = self.dictionary!
            let copy = AttributeMetadata(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                details = try container.decode([AttributeDetail].self, forKey: .details)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }

    /*
         Model: ProductsComparisonResponse
         Used By: Catalog
     */
    class ProductsComparisonResponse: Codable {
        public var attributesMetadata: [AttributeMetadata]?

        public var items: [ProductDetail]?

        public enum CodingKeys: String, CodingKey {
            case attributesMetadata = "attributes_metadata"

            case items
        }

        public init(attributesMetadata: [AttributeMetadata]?, items: [ProductDetail]?) {
            self.attributesMetadata = attributesMetadata

            self.items = items
        }

        public func duplicate() -> ProductsComparisonResponse {
            let dict = self.dictionary!
            let copy = ProductsComparisonResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                attributesMetadata = try container.decode([AttributeMetadata].self, forKey: .attributesMetadata)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([ProductDetail].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(attributesMetadata, forKey: .attributesMetadata)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: ProductCompareResponse
         Used By: Catalog
     */
    class ProductCompareResponse: Codable {
        public var subtitle: String?

        public var attributesMetadata: [AttributeMetadata]?

        public var items: [ProductDetail]?

        public var title: String?

        public enum CodingKeys: String, CodingKey {
            case subtitle

            case attributesMetadata = "attributes_metadata"

            case items

            case title
        }

        public init(attributesMetadata: [AttributeMetadata]?, items: [ProductDetail]?, subtitle: String?, title: String?) {
            self.subtitle = subtitle

            self.attributesMetadata = attributesMetadata

            self.items = items

            self.title = title
        }

        public func duplicate() -> ProductCompareResponse {
            let dict = self.dictionary!
            let copy = ProductCompareResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                subtitle = try container.decode(String.self, forKey: .subtitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributesMetadata = try container.decode([AttributeMetadata].self, forKey: .attributesMetadata)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([ProductDetail].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(attributesMetadata, forKey: .attributesMetadata)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }

    /*
         Model: ProductFrequentlyComparedSimilarResponse
         Used By: Catalog
     */
    class ProductFrequentlyComparedSimilarResponse: Codable {
        public var similars: ProductCompareResponse?

        public enum CodingKeys: String, CodingKey {
            case similars
        }

        public init(similars: ProductCompareResponse?) {
            self.similars = similars
        }

        public func duplicate() -> ProductFrequentlyComparedSimilarResponse {
            let dict = self.dictionary!
            let copy = ProductFrequentlyComparedSimilarResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                similars = try container.decode(ProductCompareResponse.self, forKey: .similars)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(similars, forKey: .similars)
        }
    }

    /*
         Model: ProductSimilarItem
         Used By: Catalog
     */
    class ProductSimilarItem: Codable {
        public var subtitle: String?

        public var items: [ProductDetail]?

        public var title: String?

        public enum CodingKeys: String, CodingKey {
            case subtitle

            case items

            case title
        }

        public init(items: [ProductDetail]?, subtitle: String?, title: String?) {
            self.subtitle = subtitle

            self.items = items

            self.title = title
        }

        public func duplicate() -> ProductSimilarItem {
            let dict = self.dictionary!
            let copy = ProductSimilarItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                subtitle = try container.decode(String.self, forKey: .subtitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([ProductDetail].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }

    /*
         Model: SimilarProductByTypeResponse
         Used By: Catalog
     */
    class SimilarProductByTypeResponse: Codable {
        public var similars: ProductSimilarItem?

        public enum CodingKeys: String, CodingKey {
            case similars
        }

        public init(similars: ProductSimilarItem?) {
            self.similars = similars
        }

        public func duplicate() -> SimilarProductByTypeResponse {
            let dict = self.dictionary!
            let copy = SimilarProductByTypeResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                similars = try container.decode(ProductSimilarItem.self, forKey: .similars)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(similars, forKey: .similars)
        }
    }

    /*
         Model: ProductVariantItemResponse
         Used By: Catalog
     */
    class ProductVariantItemResponse: Codable {
        public var name: String?

        public var value: String?

        public var colorName: String?

        public var color: String?

        public var slug: String?

        public var action: ProductListingAction?

        public var isAvailable: Bool?

        public var uid: Int?

        public var medias: [Media]?

        public enum CodingKeys: String, CodingKey {
            case name

            case value

            case colorName = "color_name"

            case color

            case slug

            case action

            case isAvailable = "is_available"

            case uid

            case medias
        }

        public init(action: ProductListingAction?, color: String?, colorName: String?, isAvailable: Bool?, medias: [Media]?, name: String?, slug: String?, uid: Int?, value: String?) {
            self.name = name

            self.value = value

            self.colorName = colorName

            self.color = color

            self.slug = slug

            self.action = action

            self.isAvailable = isAvailable

            self.uid = uid

            self.medias = medias
        }

        public func duplicate() -> ProductVariantItemResponse {
            let dict = self.dictionary!
            let copy = ProductVariantItemResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                colorName = try container.decode(String.self, forKey: .colorName)

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
                slug = try container.decode(String.self, forKey: .slug)

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
                isAvailable = try container.decode(Bool.self, forKey: .isAvailable)

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
                medias = try container.decode([Media].self, forKey: .medias)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(colorName, forKey: .colorName)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(medias, forKey: .medias)
        }
    }

    /*
         Model: ProductVariantResponse
         Used By: Catalog
     */
    class ProductVariantResponse: Codable {
        public var displayType: String?

        public var items: [ProductVariantItemResponse]?

        public var header: String?

        public var key: String?

        public enum CodingKeys: String, CodingKey {
            case displayType = "display_type"

            case items

            case header

            case key
        }

        public init(displayType: String?, header: String?, items: [ProductVariantItemResponse]?, key: String?) {
            self.displayType = displayType

            self.items = items

            self.header = header

            self.key = key
        }

        public func duplicate() -> ProductVariantResponse {
            let dict = self.dictionary!
            let copy = ProductVariantResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                displayType = try container.decode(String.self, forKey: .displayType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([ProductVariantItemResponse].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                header = try container.decode(String.self, forKey: .header)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayType, forKey: .displayType)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(header, forKey: .header)

            try? container.encodeIfPresent(key, forKey: .key)
        }
    }

    /*
         Model: ProductVariantsResponse
         Used By: Catalog
     */
    class ProductVariantsResponse: Codable {
        public var variants: [ProductVariantResponse]?

        public enum CodingKeys: String, CodingKey {
            case variants
        }

        public init(variants: [ProductVariantResponse]?) {
            self.variants = variants
        }

        public func duplicate() -> ProductVariantsResponse {
            let dict = self.dictionary!
            let copy = ProductVariantsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                variants = try container.decode([ProductVariantResponse].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(variants, forKey: .variants)
        }
    }

    /*
         Model: ProductStockPrice
         Used By: Catalog
     */
    class ProductStockPrice: Codable {
        public var effective: Double?

        public var marked: Double?

        public var currency: String?

        public enum CodingKeys: String, CodingKey {
            case effective

            case marked

            case currency
        }

        public init(currency: String?, effective: Double?, marked: Double?) {
            self.effective = effective

            self.marked = marked

            self.currency = currency
        }

        public func duplicate() -> ProductStockPrice {
            let dict = self.dictionary!
            let copy = ProductStockPrice(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                effective = try container.decode(Double.self, forKey: .effective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marked = try container.decode(Double.self, forKey: .marked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }

    /*
         Model: StoreDetail
         Used By: Catalog
     */
    class StoreDetail: Codable {
        public var name: String?

        public var id: Int?

        public var city: String?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case id

            case city

            case code
        }

        public init(city: String?, code: String?, id: Int?, name: String?) {
            self.name = name

            self.id = id

            self.city = city

            self.code = code
        }

        public func duplicate() -> StoreDetail {
            let dict = self.dictionary!
            let copy = StoreDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                city = try container.decode(String.self, forKey: .city)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }

    /*
         Model: Seller
         Used By: Catalog
     */
    class Seller: Codable {
        public var name: String?

        public var uid: Int?

        public var count: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case uid

            case count
        }

        public init(count: Int?, name: String?, uid: Int?) {
            self.name = name

            self.uid = uid

            self.count = count
        }

        public func duplicate() -> Seller {
            let dict = self.dictionary!
            let copy = Seller(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

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
                count = try container.decode(Int.self, forKey: .count)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(count, forKey: .count)
        }
    }

    /*
         Model: CompanyDetail
         Used By: Catalog
     */
    class CompanyDetail: Codable {
        public var name: String?

        public var id: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case id
        }

        public init(id: Int?, name: String?) {
            self.name = name

            self.id = id
        }

        public func duplicate() -> CompanyDetail {
            let dict = self.dictionary!
            let copy = CompanyDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }

    /*
         Model: ProductStockStatusItem
         Used By: Catalog
     */
    class ProductStockStatusItem: Codable {
        public var price: ProductStockPrice?

        public var store: StoreDetail?

        public var itemId: Int?

        public var identifier: [String: Any]?

        public var quantity: Int?

        public var size: String?

        public var seller: Seller?

        public var uid: String?

        public var company: CompanyDetail?

        public enum CodingKeys: String, CodingKey {
            case price

            case store

            case itemId = "item_id"

            case identifier

            case quantity

            case size

            case seller

            case uid

            case company
        }

        public init(company: CompanyDetail?, identifier: [String: Any]?, itemId: Int?, price: ProductStockPrice?, quantity: Int?, seller: Seller?, size: String?, store: StoreDetail?, uid: String?) {
            self.price = price

            self.store = store

            self.itemId = itemId

            self.identifier = identifier

            self.quantity = quantity

            self.size = size

            self.seller = seller

            self.uid = uid

            self.company = company
        }

        public func duplicate() -> ProductStockStatusItem {
            let dict = self.dictionary!
            let copy = ProductStockStatusItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                price = try container.decode(ProductStockPrice.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                store = try container.decode(StoreDetail.self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemId = try container.decode(Int.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifier = try container.decode([String: Any].self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                seller = try container.decode(Seller.self, forKey: .seller)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                company = try container.decode(CompanyDetail.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(seller, forKey: .seller)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(company, forKey: .company)
        }
    }

    /*
         Model: ProductStockStatusResponse
         Used By: Catalog
     */
    class ProductStockStatusResponse: Codable {
        public var items: [ProductStockStatusItem]?

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: [ProductStockStatusItem]?) {
            self.items = items
        }

        public func duplicate() -> ProductStockStatusResponse {
            let dict = self.dictionary!
            let copy = ProductStockStatusResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([ProductStockStatusItem].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: ProductStockPolling
         Used By: Catalog
     */
    class ProductStockPolling: Codable {
        public var items: [ProductStockStatusItem]?

        public var page: Page

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [ProductStockStatusItem]?, page: Page) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> ProductStockPolling {
            let dict = self.dictionary!
            let copy = ProductStockPolling(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([ProductStockStatusItem].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            page = try container.decode(Page.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: ProductFiltersValue
         Used By: Catalog
     */
    class ProductFiltersValue: Codable {
        public var min: Int?

        public var queryFormat: String?

        public var display: String

        public var currencySymbol: String?

        public var displayFormat: String?

        public var max: Int?

        public var value: String?

        public var selectedMin: Int?

        public var selectedMax: Int?

        public var count: Int?

        public var isSelected: Bool

        public var currencyCode: String?

        public enum CodingKeys: String, CodingKey {
            case min

            case queryFormat = "query_format"

            case display

            case currencySymbol = "currency_symbol"

            case displayFormat = "display_format"

            case max

            case value

            case selectedMin = "selected_min"

            case selectedMax = "selected_max"

            case count

            case isSelected = "is_selected"

            case currencyCode = "currency_code"
        }

        public init(count: Int?, currencyCode: String?, currencySymbol: String?, display: String, displayFormat: String?, isSelected: Bool, max: Int?, min: Int?, queryFormat: String?, selectedMax: Int?, selectedMin: Int?, value: String?) {
            self.min = min

            self.queryFormat = queryFormat

            self.display = display

            self.currencySymbol = currencySymbol

            self.displayFormat = displayFormat

            self.max = max

            self.value = value

            self.selectedMin = selectedMin

            self.selectedMax = selectedMax

            self.count = count

            self.isSelected = isSelected

            self.currencyCode = currencyCode
        }

        public func duplicate() -> ProductFiltersValue {
            let dict = self.dictionary!
            let copy = ProductFiltersValue(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                min = try container.decode(Int.self, forKey: .min)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                queryFormat = try container.decode(String.self, forKey: .queryFormat)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            display = try container.decode(String.self, forKey: .display)

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayFormat = try container.decode(String.self, forKey: .displayFormat)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                max = try container.decode(Int.self, forKey: .max)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                selectedMin = try container.decode(Int.self, forKey: .selectedMin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                selectedMax = try container.decode(Int.self, forKey: .selectedMax)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                count = try container.decode(Int.self, forKey: .count)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isSelected = try container.decode(Bool.self, forKey: .isSelected)

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(min, forKey: .min)

            try? container.encodeIfPresent(queryFormat, forKey: .queryFormat)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(displayFormat, forKey: .displayFormat)

            try? container.encodeIfPresent(max, forKey: .max)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(selectedMin, forKey: .selectedMin)

            try? container.encodeIfPresent(selectedMax, forKey: .selectedMax)

            try? container.encodeIfPresent(count, forKey: .count)

            try? container.encodeIfPresent(isSelected, forKey: .isSelected)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        }
    }

    /*
         Model: ProductFiltersKey
         Used By: Catalog
     */
    class ProductFiltersKey: Codable {
        public var name: String

        public var kind: String?

        public var logo: String?

        public var display: String

        public enum CodingKeys: String, CodingKey {
            case name

            case kind

            case logo

            case display
        }

        public init(display: String, kind: String?, logo: String?, name: String) {
            self.name = name

            self.kind = kind

            self.logo = logo

            self.display = display
        }

        public func duplicate() -> ProductFiltersKey {
            let dict = self.dictionary!
            let copy = ProductFiltersKey(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            do {
                kind = try container.decode(String.self, forKey: .kind)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            display = try container.decode(String.self, forKey: .display)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(kind, forKey: .kind)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }

    /*
         Model: ProductFilters
         Used By: Catalog
     */
    class ProductFilters: Codable {
        public var values: [ProductFiltersValue]

        public var key: ProductFiltersKey

        public enum CodingKeys: String, CodingKey {
            case values

            case key
        }

        public init(key: ProductFiltersKey, values: [ProductFiltersValue]) {
            self.values = values

            self.key = key
        }

        public func duplicate() -> ProductFilters {
            let dict = self.dictionary!
            let copy = ProductFilters(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            values = try container.decode([ProductFiltersValue].self, forKey: .values)

            key = try container.decode(ProductFiltersKey.self, forKey: .key)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(values, forKey: .values)

            try? container.encodeIfPresent(key, forKey: .key)
        }
    }

    /*
         Model: ProductSortOn
         Used By: Catalog
     */
    class ProductSortOn: Codable {
        public var name: String?

        public var isSelected: Bool?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case isSelected = "is_selected"

            case value
        }

        public init(isSelected: Bool?, name: String?, value: String?) {
            self.name = name

            self.isSelected = isSelected

            self.value = value
        }

        public func duplicate() -> ProductSortOn {
            let dict = self.dictionary!
            let copy = ProductSortOn(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isSelected = try container.decode(Bool.self, forKey: .isSelected)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isSelected, forKey: .isSelected)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: ProductVariantListingResponse
         Used By: Catalog
     */
    class ProductVariantListingResponse: Codable {
        public var key: String?

        public var displayType: String?

        public var total: Int?

        public var header: String?

        public var items: [ProductVariantItemResponse]?

        public enum CodingKeys: String, CodingKey {
            case key

            case displayType = "display_type"

            case total

            case header

            case items
        }

        public init(displayType: String?, header: String?, items: [ProductVariantItemResponse]?, key: String?, total: Int?) {
            self.key = key

            self.displayType = displayType

            self.total = total

            self.header = header

            self.items = items
        }

        public func duplicate() -> ProductVariantListingResponse {
            let dict = self.dictionary!
            let copy = ProductVariantListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayType = try container.decode(String.self, forKey: .displayType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                total = try container.decode(Int.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                header = try container.decode(String.self, forKey: .header)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([ProductVariantItemResponse].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(displayType, forKey: .displayType)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(header, forKey: .header)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: ProductListingDetail
         Used By: Catalog
     */
    class ProductListingDetail: Codable {
        public var itemType: String?

        public var description: String?

        public var price: ProductListingPrice?

        public var itemCode: String?

        public var tryouts: [String]?

        public var shortDescription: String?

        public var uid: Int?

        public var customMeta: [MetaFields]?

        public var productOnlineDate: String?

        public var sellable: Bool?

        public var highlights: [String]?

        public var variants: [ProductVariantListingResponse]?

        public var ratingCount: Int?

        public var categories: [ProductBrand]?

        public var slug: String

        public var action: ProductListingAction?

        public var imageNature: String?

        public var rating: Double?

        public var similars: [String]?

        public var hasVariant: Bool?

        public var customJson: [String: Any]?

        public var medias: [Media]?

        public var name: String?

        public var type: String?

        public var attributes: [String: Any]?

        public var teaserTag: String?

        public var color: String?

        public var discount: String?

        public var groupedAttributes: [ProductDetailGroupedAttribute]?

        public var brand: ProductBrand?

        public enum CodingKeys: String, CodingKey {
            case itemType = "item_type"

            case description

            case price

            case itemCode = "item_code"

            case tryouts

            case shortDescription = "short_description"

            case uid

            case customMeta = "_custom_meta"

            case productOnlineDate = "product_online_date"

            case sellable

            case highlights

            case variants

            case ratingCount = "rating_count"

            case categories

            case slug

            case action

            case imageNature = "image_nature"

            case rating

            case similars

            case hasVariant = "has_variant"

            case customJson = "_custom_json"

            case medias

            case name

            case type

            case attributes

            case teaserTag = "teaser_tag"

            case color

            case discount

            case groupedAttributes = "grouped_attributes"

            case brand
        }

        public init(action: ProductListingAction?, attributes: [String: Any]?, brand: ProductBrand?, categories: [ProductBrand]?, color: String?, description: String?, discount: String?, groupedAttributes: [ProductDetailGroupedAttribute]?, hasVariant: Bool?, highlights: [String]?, imageNature: String?, itemCode: String?, itemType: String?, medias: [Media]?, name: String?, price: ProductListingPrice?, productOnlineDate: String?, rating: Double?, ratingCount: Int?, sellable: Bool?, shortDescription: String?, similars: [String]?, slug: String, teaserTag: String?, tryouts: [String]?, type: String?, uid: Int?, variants: [ProductVariantListingResponse]?, customJson: [String: Any]?, customMeta: [MetaFields]?) {
            self.itemType = itemType

            self.description = description

            self.price = price

            self.itemCode = itemCode

            self.tryouts = tryouts

            self.shortDescription = shortDescription

            self.uid = uid

            self.customMeta = customMeta

            self.productOnlineDate = productOnlineDate

            self.sellable = sellable

            self.highlights = highlights

            self.variants = variants

            self.ratingCount = ratingCount

            self.categories = categories

            self.slug = slug

            self.action = action

            self.imageNature = imageNature

            self.rating = rating

            self.similars = similars

            self.hasVariant = hasVariant

            self.customJson = customJson

            self.medias = medias

            self.name = name

            self.type = type

            self.attributes = attributes

            self.teaserTag = teaserTag

            self.color = color

            self.discount = discount

            self.groupedAttributes = groupedAttributes

            self.brand = brand
        }

        public func duplicate() -> ProductListingDetail {
            let dict = self.dictionary!
            let copy = ProductListingDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemType = try container.decode(String.self, forKey: .itemType)

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
                price = try container.decode(ProductListingPrice.self, forKey: .price)

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
                tryouts = try container.decode([String].self, forKey: .tryouts)

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
                customMeta = try container.decode([MetaFields].self, forKey: .customMeta)

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
                sellable = try container.decode(Bool.self, forKey: .sellable)

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
                variants = try container.decode([ProductVariantListingResponse].self, forKey: .variants)

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
                categories = try container.decode([ProductBrand].self, forKey: .categories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                action = try container.decode(ProductListingAction.self, forKey: .action)

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
                rating = try container.decode(Double.self, forKey: .rating)

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
                hasVariant = try container.decode(Bool.self, forKey: .hasVariant)

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
                medias = try container.decode([Media].self, forKey: .medias)

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
                type = try container.decode(String.self, forKey: .type)

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
                teaserTag = try container.decode(String.self, forKey: .teaserTag)

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
                discount = try container.decode(String.self, forKey: .discount)

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
                brand = try container.decode(ProductBrand.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)

            try? container.encodeIfPresent(sellable, forKey: .sellable)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)

            try? container.encodeIfPresent(categories, forKey: .categories)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(similars, forKey: .similars)

            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(medias, forKey: .medias)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)

            try? container.encodeIfPresent(brand, forKey: .brand)
        }
    }

    /*
         Model: ProductListingResponse
         Used By: Catalog
     */
    class ProductListingResponse: Codable {
        public var filters: [ProductFilters]?

        public var sortOn: [ProductSortOn]?

        public var items: [ProductListingDetail]?

        public var page: Page

        public enum CodingKeys: String, CodingKey {
            case filters

            case sortOn = "sort_on"

            case items

            case page
        }

        public init(filters: [ProductFilters]?, items: [ProductListingDetail]?, page: Page, sortOn: [ProductSortOn]?) {
            self.filters = filters

            self.sortOn = sortOn

            self.items = items

            self.page = page
        }

        public func duplicate() -> ProductListingResponse {
            let dict = self.dictionary!
            let copy = ProductListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                filters = try container.decode([ProductFilters].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sortOn = try container.decode([ProductSortOn].self, forKey: .sortOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([ProductListingDetail].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            page = try container.decode(Page.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: ImageUrls
         Used By: Catalog
     */
    class ImageUrls: Codable {
        public var landscape: Media?

        public var portrait: Media?

        public enum CodingKeys: String, CodingKey {
            case landscape

            case portrait
        }

        public init(landscape: Media?, portrait: Media?) {
            self.landscape = landscape

            self.portrait = portrait
        }

        public func duplicate() -> ImageUrls {
            let dict = self.dictionary!
            let copy = ImageUrls(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                landscape = try container.decode(Media.self, forKey: .landscape)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                portrait = try container.decode(Media.self, forKey: .portrait)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(landscape, forKey: .landscape)

            try? container.encodeIfPresent(portrait, forKey: .portrait)
        }
    }

    /*
         Model: BrandItem
         Used By: Catalog
     */
    class BrandItem: Codable {
        public var name: String?

        public var discount: String?

        public var departments: [String]?

        public var action: ProductListingAction?

        public var slug: String?

        public var logo: Media?

        public var banners: ImageUrls?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case discount

            case departments

            case action

            case slug

            case logo

            case banners

            case uid
        }

        public init(action: ProductListingAction?, banners: ImageUrls?, departments: [String]?, discount: String?, logo: Media?, name: String?, slug: String?, uid: Int?) {
            self.name = name

            self.discount = discount

            self.departments = departments

            self.action = action

            self.slug = slug

            self.logo = logo

            self.banners = banners

            self.uid = uid
        }

        public func duplicate() -> BrandItem {
            let dict = self.dictionary!
            let copy = BrandItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

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
                departments = try container.decode([String].self, forKey: .departments)

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
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(Media.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: BrandListingResponse
         Used By: Catalog
     */
    class BrandListingResponse: Codable {
        public var items: [BrandItem]?

        public var page: Page

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [BrandItem]?, page: Page) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> BrandListingResponse {
            let dict = self.dictionary!
            let copy = BrandListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([BrandItem].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            page = try container.decode(Page.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: BrandDetailResponse
         Used By: Catalog
     */
    class BrandDetailResponse: Codable {
        public var banners: ImageUrls?

        public var uid: Int?

        public var name: String?

        public var logo: Media?

        public enum CodingKeys: String, CodingKey {
            case banners

            case uid

            case name

            case logo
        }

        public init(banners: ImageUrls?, logo: Media?, name: String?, uid: Int?) {
            self.banners = banners

            self.uid = uid

            self.name = name

            self.logo = logo
        }

        public func duplicate() -> BrandDetailResponse {
            let dict = self.dictionary!
            let copy = BrandDetailResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

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
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(Media.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }

    /*
         Model: ThirdLevelChild
         Used By: Catalog
     */
    class ThirdLevelChild: Codable {
        public var name: String?

        public var childs: [[String: Any]]?

        public var slug: String?

        public var action: ProductListingAction?

        public var banners: ImageUrls?

        public var uid: Int?

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case name

            case childs

            case slug

            case action

            case banners

            case uid

            case customJson = "_custom_json"
        }

        public init(action: ProductListingAction?, banners: ImageUrls?, childs: [[String: Any]]?, name: String?, slug: String?, uid: Int?, customJson: [String: Any]?) {
            self.name = name

            self.childs = childs

            self.slug = slug

            self.action = action

            self.banners = banners

            self.uid = uid

            self.customJson = customJson
        }

        public func duplicate() -> ThirdLevelChild {
            let dict = self.dictionary!
            let copy = ThirdLevelChild(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                childs = try container.decode([[String: Any]].self, forKey: .childs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

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
                banners = try container.decode(ImageUrls.self, forKey: .banners)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }

    /*
         Model: SecondLevelChild
         Used By: Catalog
     */
    class SecondLevelChild: Codable {
        public var name: String?

        public var childs: [ThirdLevelChild]?

        public var slug: String?

        public var action: ProductListingAction?

        public var banners: ImageUrls?

        public var uid: Int?

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case name

            case childs

            case slug

            case action

            case banners

            case uid

            case customJson = "_custom_json"
        }

        public init(action: ProductListingAction?, banners: ImageUrls?, childs: [ThirdLevelChild]?, name: String?, slug: String?, uid: Int?, customJson: [String: Any]?) {
            self.name = name

            self.childs = childs

            self.slug = slug

            self.action = action

            self.banners = banners

            self.uid = uid

            self.customJson = customJson
        }

        public func duplicate() -> SecondLevelChild {
            let dict = self.dictionary!
            let copy = SecondLevelChild(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                childs = try container.decode([ThirdLevelChild].self, forKey: .childs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

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
                banners = try container.decode(ImageUrls.self, forKey: .banners)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }

    /*
         Model: Child
         Used By: Catalog
     */
    class Child: Codable {
        public var name: String?

        public var childs: [SecondLevelChild]?

        public var slug: String?

        public var action: ProductListingAction?

        public var banners: ImageUrls?

        public var uid: Int?

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case name

            case childs

            case slug

            case action

            case banners

            case uid

            case customJson = "_custom_json"
        }

        public init(action: ProductListingAction?, banners: ImageUrls?, childs: [SecondLevelChild]?, name: String?, slug: String?, uid: Int?, customJson: [String: Any]?) {
            self.name = name

            self.childs = childs

            self.slug = slug

            self.action = action

            self.banners = banners

            self.uid = uid

            self.customJson = customJson
        }

        public func duplicate() -> Child {
            let dict = self.dictionary!
            let copy = Child(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                childs = try container.decode([SecondLevelChild].self, forKey: .childs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

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
                banners = try container.decode(ImageUrls.self, forKey: .banners)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }

    /*
         Model: CategoryItems
         Used By: Catalog
     */
    class CategoryItems: Codable {
        public var name: String?

        public var childs: [Child]?

        public var slug: String?

        public var action: ProductListingAction?

        public var banners: ImageUrls?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case childs

            case slug

            case action

            case banners

            case uid
        }

        public init(action: ProductListingAction?, banners: ImageUrls?, childs: [Child]?, name: String?, slug: String?, uid: Int?) {
            self.name = name

            self.childs = childs

            self.slug = slug

            self.action = action

            self.banners = banners

            self.uid = uid
        }

        public func duplicate() -> CategoryItems {
            let dict = self.dictionary!
            let copy = CategoryItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                childs = try container.decode([Child].self, forKey: .childs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

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
                banners = try container.decode(ImageUrls.self, forKey: .banners)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: DepartmentCategoryTree
         Used By: Catalog
     */
    class DepartmentCategoryTree: Codable {
        public var items: [CategoryItems]?

        public var department: String?

        public enum CodingKeys: String, CodingKey {
            case items

            case department
        }

        public init(department: String?, items: [CategoryItems]?) {
            self.items = items

            self.department = department
        }

        public func duplicate() -> DepartmentCategoryTree {
            let dict = self.dictionary!
            let copy = DepartmentCategoryTree(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([CategoryItems].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                department = try container.decode(String.self, forKey: .department)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(department, forKey: .department)
        }
    }

    /*
         Model: DepartmentIdentifier
         Used By: Catalog
     */
    class DepartmentIdentifier: Codable {
        public var uid: Int?

        public var slug: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case slug
        }

        public init(slug: String?, uid: Int?) {
            self.uid = uid

            self.slug = slug
        }

        public func duplicate() -> DepartmentIdentifier {
            let dict = self.dictionary!
            let copy = DepartmentIdentifier(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }

    /*
         Model: CategoryListingResponse
         Used By: Catalog
     */
    class CategoryListingResponse: Codable {
        public var data: [DepartmentCategoryTree]?

        public var departments: [DepartmentIdentifier]?

        public enum CodingKeys: String, CodingKey {
            case data

            case departments
        }

        public init(data: [DepartmentCategoryTree]?, departments: [DepartmentIdentifier]?) {
            self.data = data

            self.departments = departments
        }

        public func duplicate() -> CategoryListingResponse {
            let dict = self.dictionary!
            let copy = CategoryListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode([DepartmentCategoryTree].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                departments = try container.decode([DepartmentIdentifier].self, forKey: .departments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(departments, forKey: .departments)
        }
    }

    /*
         Model: CategoryMetaResponse
         Used By: Catalog
     */
    class CategoryMetaResponse: Codable {
        public var banners: ImageUrls?

        public var uid: Int?

        public var name: String?

        public var logo: Media?

        public enum CodingKeys: String, CodingKey {
            case banners

            case uid

            case name

            case logo
        }

        public init(banners: ImageUrls?, logo: Media?, name: String?, uid: Int?) {
            self.banners = banners

            self.uid = uid

            self.name = name

            self.logo = logo
        }

        public func duplicate() -> CategoryMetaResponse {
            let dict = self.dictionary!
            let copy = CategoryMetaResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

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
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(Media.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }

    /*
         Model: HomeListingResponse
         Used By: Catalog
     */
    class HomeListingResponse: Codable {
        public var message: String?

        public var items: [ProductListingDetail]?

        public var page: Page

        public enum CodingKeys: String, CodingKey {
            case message

            case items

            case page
        }

        public init(items: [ProductListingDetail]?, message: String?, page: Page) {
            self.message = message

            self.items = items

            self.page = page
        }

        public func duplicate() -> HomeListingResponse {
            let dict = self.dictionary!
            let copy = HomeListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([ProductListingDetail].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            page = try container.decode(Page.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: Department
         Used By: Catalog
     */
    class Department: Codable {
        public var name: String?

        public var slug: String?

        public var priorityOrder: Int?

        public var logo: Media?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case slug

            case priorityOrder = "priority_order"

            case logo

            case uid
        }

        public init(logo: Media?, name: String?, priorityOrder: Int?, slug: String?, uid: Int?) {
            self.name = name

            self.slug = slug

            self.priorityOrder = priorityOrder

            self.logo = logo

            self.uid = uid
        }

        public func duplicate() -> Department {
            let dict = self.dictionary!
            let copy = Department(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(Media.self, forKey: .logo)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: DepartmentResponse
         Used By: Catalog
     */
    class DepartmentResponse: Codable {
        public var items: [Department]?

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: [Department]?) {
            self.items = items
        }

        public func duplicate() -> DepartmentResponse {
            let dict = self.dictionary!
            let copy = DepartmentResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([Department].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: AutocompleteItem
         Used By: Catalog
     */
    class AutocompleteItem: Codable {
        public var action: ProductListingAction?

        public var type: String?

        public var logo: Media?

        public var display: String?

        public enum CodingKeys: String, CodingKey {
            case action

            case type

            case logo

            case display
        }

        public init(action: ProductListingAction?, display: String?, logo: Media?, type: String?) {
            self.action = action

            self.type = type

            self.logo = logo

            self.display = display
        }

        public func duplicate() -> AutocompleteItem {
            let dict = self.dictionary!
            let copy = AutocompleteItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                action = try container.decode(ProductListingAction.self, forKey: .action)

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
                logo = try container.decode(Media.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }

    /*
         Model: AutoCompleteResponse
         Used By: Catalog
     */
    class AutoCompleteResponse: Codable {
        public var items: [AutocompleteItem]?

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: [AutocompleteItem]?) {
            self.items = items
        }

        public func duplicate() -> AutoCompleteResponse {
            let dict = self.dictionary!
            let copy = AutoCompleteResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([AutocompleteItem].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: CollectionListingFilterType
         Used By: Catalog
     */
    class CollectionListingFilterType: Codable {
        public var name: String?

        public var isSelected: Bool?

        public var display: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case isSelected = "is_selected"

            case display
        }

        public init(display: String?, isSelected: Bool?, name: String?) {
            self.name = name

            self.isSelected = isSelected

            self.display = display
        }

        public func duplicate() -> CollectionListingFilterType {
            let dict = self.dictionary!
            let copy = CollectionListingFilterType(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isSelected = try container.decode(Bool.self, forKey: .isSelected)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isSelected, forKey: .isSelected)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }

    /*
         Model: CollectionListingFilterTag
         Used By: Catalog
     */
    class CollectionListingFilterTag: Codable {
        public var name: String?

        public var isSelected: Bool?

        public var display: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case isSelected = "is_selected"

            case display
        }

        public init(display: String?, isSelected: Bool?, name: String?) {
            self.name = name

            self.isSelected = isSelected

            self.display = display
        }

        public func duplicate() -> CollectionListingFilterTag {
            let dict = self.dictionary!
            let copy = CollectionListingFilterTag(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isSelected = try container.decode(Bool.self, forKey: .isSelected)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isSelected, forKey: .isSelected)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }

    /*
         Model: CollectionListingFilter
         Used By: Catalog
     */
    class CollectionListingFilter: Codable {
        public var type: [CollectionListingFilterType]?

        public var tags: [CollectionListingFilterTag]?

        public enum CodingKeys: String, CodingKey {
            case type

            case tags
        }

        public init(tags: [CollectionListingFilterTag]?, type: [CollectionListingFilterType]?) {
            self.type = type

            self.tags = tags
        }

        public func duplicate() -> CollectionListingFilter {
            let dict = self.dictionary!
            let copy = CollectionListingFilter(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode([CollectionListingFilterType].self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([CollectionListingFilterTag].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(tags, forKey: .tags)
        }
    }

    /*
         Model: GetCollectionDetailNest
         Used By: Catalog
     */
    class GetCollectionDetailNest: Codable {
        public var description: String?

        public var appId: String?

        public var allowSort: Bool?

        public var schedule: [String: Any]?

        public var banners: ImageUrls?

        public var uid: String?

        public var visibleFacetsKeys: [String]?

        public var meta: [String: Any]?

        public var badge: [String: Any]?

        public var query: [String: Any]?

        public var cron: [String: Any]?

        public var slug: String?

        public var action: ProductListingAction?

        public var name: String?

        public var type: String?

        public var allowFacets: Bool?

        public var isActive: Bool?

        public var tag: [String]?

        public var logo: Media?

        public enum CodingKeys: String, CodingKey {
            case description

            case appId = "app_id"

            case allowSort = "allow_sort"

            case schedule = "_schedule"

            case banners

            case uid

            case visibleFacetsKeys = "visible_facets_keys"

            case meta

            case badge

            case query

            case cron

            case slug

            case action

            case name

            case type

            case allowFacets = "allow_facets"

            case isActive = "is_active"

            case tag

            case logo
        }

        public init(action: ProductListingAction?, allowFacets: Bool?, allowSort: Bool?, appId: String?, badge: [String: Any]?, banners: ImageUrls?, cron: [String: Any]?, description: String?, isActive: Bool?, logo: Media?, meta: [String: Any]?, name: String?, query: [String: Any]?, slug: String?, tag: [String]?, type: String?, uid: String?, visibleFacetsKeys: [String]?, schedule: [String: Any]?) {
            self.description = description

            self.appId = appId

            self.allowSort = allowSort

            self.schedule = schedule

            self.banners = banners

            self.uid = uid

            self.visibleFacetsKeys = visibleFacetsKeys

            self.meta = meta

            self.badge = badge

            self.query = query

            self.cron = cron

            self.slug = slug

            self.action = action

            self.name = name

            self.type = type

            self.allowFacets = allowFacets

            self.isActive = isActive

            self.tag = tag

            self.logo = logo
        }

        public func duplicate() -> GetCollectionDetailNest {
            let dict = self.dictionary!
            let copy = GetCollectionDetailNest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowSort = try container.decode(Bool.self, forKey: .allowSort)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode([String: Any].self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                badge = try container.decode([String: Any].self, forKey: .badge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                query = try container.decode([String: Any].self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cron = try container.decode([String: Any].self, forKey: .cron)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

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
                name = try container.decode(String.self, forKey: .name)

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
                allowFacets = try container.decode(Bool.self, forKey: .allowFacets)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tag = try container.decode([String].self, forKey: .tag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(Media.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(cron, forKey: .cron)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }

    /*
         Model: GetCollectionListingResponse
         Used By: Catalog
     */
    class GetCollectionListingResponse: Codable {
        public var filters: CollectionListingFilter?

        public var items: [GetCollectionDetailNest]?

        public var page: Page

        public enum CodingKeys: String, CodingKey {
            case filters

            case items

            case page
        }

        public init(filters: CollectionListingFilter?, items: [GetCollectionDetailNest]?, page: Page) {
            self.filters = filters

            self.items = items

            self.page = page
        }

        public func duplicate() -> GetCollectionListingResponse {
            let dict = self.dictionary!
            let copy = GetCollectionListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                filters = try container.decode(CollectionListingFilter.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([GetCollectionDetailNest].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            page = try container.decode(Page.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: CollectionDetailResponse
         Used By: Catalog
     */
    class CollectionDetailResponse: Codable {
        public var name: String?

        public var type: String?

        public var description: String?

        public var visibleFacetsKeys: [String]?

        public var meta: [String: Any]?

        public var appId: String?

        public var allowSort: Bool?

        public var allowFacets: Bool?

        public var isActive: Bool?

        public var slug: String?

        public var tag: [String]?

        public var badge: [String: Any]?

        public var logo: Media?

        public var schedule: [String: Any]?

        public var banners: ImageUrls?

        public var cron: [String: Any]?

        public var query: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case name

            case type

            case description

            case visibleFacetsKeys = "visible_facets_keys"

            case meta

            case appId = "app_id"

            case allowSort = "allow_sort"

            case allowFacets = "allow_facets"

            case isActive = "is_active"

            case slug

            case tag

            case badge

            case logo

            case schedule = "_schedule"

            case banners

            case cron

            case query
        }

        public init(allowFacets: Bool?, allowSort: Bool?, appId: String?, badge: [String: Any]?, banners: ImageUrls?, cron: [String: Any]?, description: String?, isActive: Bool?, logo: Media?, meta: [String: Any]?, name: String?, query: [String: Any]?, slug: String?, tag: [String]?, type: String?, visibleFacetsKeys: [String]?, schedule: [String: Any]?) {
            self.name = name

            self.type = type

            self.description = description

            self.visibleFacetsKeys = visibleFacetsKeys

            self.meta = meta

            self.appId = appId

            self.allowSort = allowSort

            self.allowFacets = allowFacets

            self.isActive = isActive

            self.slug = slug

            self.tag = tag

            self.badge = badge

            self.logo = logo

            self.schedule = schedule

            self.banners = banners

            self.cron = cron

            self.query = query
        }

        public func duplicate() -> CollectionDetailResponse {
            let dict = self.dictionary!
            let copy = CollectionDetailResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

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
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowSort = try container.decode(Bool.self, forKey: .allowSort)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowFacets = try container.decode(Bool.self, forKey: .allowFacets)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tag = try container.decode([String].self, forKey: .tag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                badge = try container.decode([String: Any].self, forKey: .badge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(Media.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode([String: Any].self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cron = try container.decode([String: Any].self, forKey: .cron)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                query = try container.decode([String: Any].self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(cron, forKey: .cron)

            try? container.encodeIfPresent(query, forKey: .query)
        }
    }

    /*
         Model: GetFollowListingResponse
         Used By: Catalog
     */
    class GetFollowListingResponse: Codable {
        public var items: [ProductListingDetail]

        public var page: Page

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [ProductListingDetail], page: Page) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> GetFollowListingResponse {
            let dict = self.dictionary!
            let copy = GetFollowListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([ProductListingDetail].self, forKey: .items)

            page = try container.decode(Page.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: FollowPostResponse
         Used By: Catalog
     */
    class FollowPostResponse: Codable {
        public var id: String

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case id

            case message
        }

        public init(id: String, message: String) {
            self.id = id

            self.message = message
        }

        public func duplicate() -> FollowPostResponse {
            let dict = self.dictionary!
            let copy = FollowPostResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: FollowerCountResponse
         Used By: Catalog
     */
    class FollowerCountResponse: Codable {
        public var count: Int?

        public enum CodingKeys: String, CodingKey {
            case count
        }

        public init(count: Int?) {
            self.count = count
        }

        public func duplicate() -> FollowerCountResponse {
            let dict = self.dictionary!
            let copy = FollowerCountResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                count = try container.decode(Int.self, forKey: .count)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(count, forKey: .count)
        }
    }

    /*
         Model: FollowIdsData
         Used By: Catalog
     */
    class FollowIdsData: Codable {
        public var brands: [Int]?

        public var collections: [Int]?

        public var products: [Int]?

        public enum CodingKeys: String, CodingKey {
            case brands

            case collections

            case products
        }

        public init(brands: [Int]?, collections: [Int]?, products: [Int]?) {
            self.brands = brands

            self.collections = collections

            self.products = products
        }

        public func duplicate() -> FollowIdsData {
            let dict = self.dictionary!
            let copy = FollowIdsData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brands = try container.decode([Int].self, forKey: .brands)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                collections = try container.decode([Int].self, forKey: .collections)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                products = try container.decode([Int].self, forKey: .products)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brands, forKey: .brands)

            try? container.encodeIfPresent(collections, forKey: .collections)

            try? container.encodeIfPresent(products, forKey: .products)
        }
    }

    /*
         Model: FollowIdsResponse
         Used By: Catalog
     */
    class FollowIdsResponse: Codable {
        public var data: FollowIdsData?

        public enum CodingKeys: String, CodingKey {
            case data
        }

        public init(data: FollowIdsData?) {
            self.data = data
        }

        public func duplicate() -> FollowIdsResponse {
            let dict = self.dictionary!
            let copy = FollowIdsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode(FollowIdsData.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: LatLong
         Used By: Catalog
     */
    class LatLong: Codable {
        public var type: String?

        public var coordinates: [Double]?

        public enum CodingKeys: String, CodingKey {
            case type

            case coordinates
        }

        public init(coordinates: [Double]?, type: String?) {
            self.type = type

            self.coordinates = coordinates
        }

        public func duplicate() -> LatLong {
            let dict = self.dictionary!
            let copy = LatLong(dictionary: dict)!
            return copy
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
                coordinates = try container.decode([Double].self, forKey: .coordinates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(coordinates, forKey: .coordinates)
        }
    }

    /*
         Model: Store
         Used By: Catalog
     */
    class Store: Codable {
        public var name: String?

        public var address: String?

        public var country: String?

        public var pincode: Int?

        public var latLong: LatLong?

        public var uid: Int?

        public var storeEmail: String?

        public var storeCode: String?

        public var state: String?

        public var city: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case address

            case country

            case pincode

            case latLong = "lat_long"

            case uid

            case storeEmail = "store_email"

            case storeCode = "store_code"

            case state

            case city
        }

        public init(address: String?, city: String?, country: String?, latLong: LatLong?, name: String?, pincode: Int?, state: String?, storeCode: String?, storeEmail: String?, uid: Int?) {
            self.name = name

            self.address = address

            self.country = country

            self.pincode = pincode

            self.latLong = latLong

            self.uid = uid

            self.storeEmail = storeEmail

            self.storeCode = storeCode

            self.state = state

            self.city = city
        }

        public func duplicate() -> Store {
            let dict = self.dictionary!
            let copy = Store(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode(String.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                latLong = try container.decode(LatLong.self, forKey: .latLong)

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
                storeEmail = try container.decode(String.self, forKey: .storeEmail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeCode = try container.decode(String.self, forKey: .storeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode(String.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                city = try container.decode(String.self, forKey: .city)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(latLong, forKey: .latLong)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)
        }
    }

    /*
         Model: StoreListingResponse
         Used By: Catalog
     */
    class StoreListingResponse: Codable {
        public var items: [Store]

        public var page: Page

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [Store], page: Page) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> StoreListingResponse {
            let dict = self.dictionary!
            let copy = StoreListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([Store].self, forKey: .items)

            page = try container.decode(Page.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: StoreDepartments
         Used By: Catalog
     */
    class StoreDepartments: Codable {
        public var name: String?

        public var slug: String?

        public var priorityOrder: Int?

        public var logo: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case slug

            case priorityOrder = "priority_order"

            case logo

            case uid
        }

        public init(logo: String?, name: String?, priorityOrder: Int?, slug: String?, uid: Int?) {
            self.name = name

            self.slug = slug

            self.priorityOrder = priorityOrder

            self.logo = logo

            self.uid = uid
        }

        public func duplicate() -> StoreDepartments {
            let dict = self.dictionary!
            let copy = StoreDepartments(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: StoreAddressSerializer
         Used By: Catalog
     */
    class StoreAddressSerializer: Codable {
        public var longitude: Double?

        public var country: String?

        public var pincode: Int?

        public var address1: String?

        public var address2: String?

        public var latitude: Double?

        public var state: String?

        public var city: String?

        public var landmark: String?

        public enum CodingKeys: String, CodingKey {
            case longitude

            case country

            case pincode

            case address1

            case address2

            case latitude

            case state

            case city

            case landmark
        }

        public init(address1: String?, address2: String?, city: String?, country: String?, landmark: String?, latitude: Double?, longitude: Double?, pincode: Int?, state: String?) {
            self.longitude = longitude

            self.country = country

            self.pincode = pincode

            self.address1 = address1

            self.address2 = address2

            self.latitude = latitude

            self.state = state

            self.city = city

            self.landmark = landmark
        }

        public func duplicate() -> StoreAddressSerializer {
            let dict = self.dictionary!
            let copy = StoreAddressSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                longitude = try container.decode(Double.self, forKey: .longitude)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                latitude = try container.decode(Double.self, forKey: .latitude)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode(String.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                city = try container.decode(String.self, forKey: .city)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(landmark, forKey: .landmark)
        }
    }

    /*
         Model: SellerPhoneNumber
         Used By: Catalog
     */
    class SellerPhoneNumber: Codable {
        public var countryCode: Int

        public var number: String

        public enum CodingKeys: String, CodingKey {
            case countryCode = "country_code"

            case number
        }

        public init(countryCode: Int, number: String) {
            self.countryCode = countryCode

            self.number = number
        }

        public func duplicate() -> SellerPhoneNumber {
            let dict = self.dictionary!
            let copy = SellerPhoneNumber(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            countryCode = try container.decode(Int.self, forKey: .countryCode)

            number = try container.decode(String.self, forKey: .number)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(number, forKey: .number)
        }
    }

    /*
         Model: StoreManagerSerializer
         Used By: Catalog
     */
    class StoreManagerSerializer: Codable {
        public var name: String?

        public var email: String?

        public var mobileNo: SellerPhoneNumber?

        public enum CodingKeys: String, CodingKey {
            case name

            case email

            case mobileNo = "mobile_no"
        }

        public init(email: String?, mobileNo: SellerPhoneNumber?, name: String?) {
            self.name = name

            self.email = email

            self.mobileNo = mobileNo
        }

        public func duplicate() -> StoreManagerSerializer {
            let dict = self.dictionary!
            let copy = StoreManagerSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobileNo = try container.decode(SellerPhoneNumber.self, forKey: .mobileNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(mobileNo, forKey: .mobileNo)
        }
    }

    /*
         Model: CompanyStore
         Used By: Catalog
     */
    class CompanyStore: Codable {
        public var name: String?

        public var uid: Int?

        public var businessType: String?

        public var companyType: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case uid

            case businessType = "business_type"

            case companyType = "company_type"
        }

        public init(businessType: String?, companyType: String?, name: String?, uid: Int?) {
            self.name = name

            self.uid = uid

            self.businessType = businessType

            self.companyType = companyType
        }

        public func duplicate() -> CompanyStore {
            let dict = self.dictionary!
            let copy = CompanyStore(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

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
                businessType = try container.decode(String.self, forKey: .businessType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyType = try container.decode(String.self, forKey: .companyType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(businessType, forKey: .businessType)

            try? container.encodeIfPresent(companyType, forKey: .companyType)
        }
    }

    /*
         Model: AppStore
         Used By: Catalog
     */
    class AppStore: Codable {
        public var name: String?

        public var address: StoreAddressSerializer?

        public var manager: StoreManagerSerializer?

        public var departments: [StoreDepartments]?

        public var contactNumbers: [SellerPhoneNumber]?

        public var uid: Int?

        public var company: CompanyStore?

        public enum CodingKeys: String, CodingKey {
            case name

            case address

            case manager

            case departments

            case contactNumbers = "contact_numbers"

            case uid

            case company
        }

        public init(address: StoreAddressSerializer?, company: CompanyStore?, contactNumbers: [SellerPhoneNumber]?, departments: [StoreDepartments]?, manager: StoreManagerSerializer?, name: String?, uid: Int?) {
            self.name = name

            self.address = address

            self.manager = manager

            self.departments = departments

            self.contactNumbers = contactNumbers

            self.uid = uid

            self.company = company
        }

        public func duplicate() -> AppStore {
            let dict = self.dictionary!
            let copy = AppStore(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode(StoreAddressSerializer.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                manager = try container.decode(StoreManagerSerializer.self, forKey: .manager)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                departments = try container.decode([StoreDepartments].self, forKey: .departments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)

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
                company = try container.decode(CompanyStore.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(company, forKey: .company)
        }
    }

    /*
         Model: ApplicationStoreListing
         Used By: Catalog
     */
    class ApplicationStoreListing: Codable {
        public var filters: [StoreDepartments]?

        public var items: [AppStore]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case filters

            case items

            case page
        }

        public init(filters: [StoreDepartments]?, items: [AppStore]?, page: Page?) {
            self.filters = filters

            self.items = items

            self.page = page
        }

        public func duplicate() -> ApplicationStoreListing {
            let dict = self.dictionary!
            let copy = ApplicationStoreListing(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                filters = try container.decode([StoreDepartments].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([AppStore].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: Time
         Used By: Catalog
     */
    class Time: Codable {
        public var minute: Int?

        public var hour: Int?

        public enum CodingKeys: String, CodingKey {
            case minute

            case hour
        }

        public init(hour: Int?, minute: Int?) {
            self.minute = minute

            self.hour = hour
        }

        public func duplicate() -> Time {
            let dict = self.dictionary!
            let copy = Time(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                minute = try container.decode(Int.self, forKey: .minute)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hour = try container.decode(Int.self, forKey: .hour)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(minute, forKey: .minute)

            try? container.encodeIfPresent(hour, forKey: .hour)
        }
    }

    /*
         Model: StoreTiming
         Used By: Catalog
     */
    class StoreTiming: Codable {
        public var weekday: String?

        public var opening: Time?

        public var open: Bool?

        public var closing: Time?

        public enum CodingKeys: String, CodingKey {
            case weekday

            case opening

            case open

            case closing
        }

        public init(closing: Time?, open: Bool?, opening: Time?, weekday: String?) {
            self.weekday = weekday

            self.opening = opening

            self.open = open

            self.closing = closing
        }

        public func duplicate() -> StoreTiming {
            let dict = self.dictionary!
            let copy = StoreTiming(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                weekday = try container.decode(String.self, forKey: .weekday)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                opening = try container.decode(Time.self, forKey: .opening)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                open = try container.decode(Bool.self, forKey: .open)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                closing = try container.decode(Time.self, forKey: .closing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(weekday, forKey: .weekday)

            try? container.encodeIfPresent(opening, forKey: .opening)

            try? container.encodeIfPresent(open, forKey: .open)

            try? container.encodeIfPresent(closing, forKey: .closing)
        }
    }

    /*
         Model: StoreDetails
         Used By: Catalog
     */
    class StoreDetails: Codable {
        public var name: String?

        public var address: StoreAddressSerializer?

        public var manager: StoreManagerSerializer?

        public var timing: [StoreTiming]?

        public var departments: [StoreDepartments]?

        public var contactNumbers: [SellerPhoneNumber]?

        public var uid: Int?

        public var customJson: [String: Any]?

        public var company: CompanyStore?

        public enum CodingKeys: String, CodingKey {
            case name

            case address

            case manager

            case timing

            case departments

            case contactNumbers = "contact_numbers"

            case uid

            case customJson = "_custom_json"

            case company
        }

        public init(address: StoreAddressSerializer?, company: CompanyStore?, contactNumbers: [SellerPhoneNumber]?, departments: [StoreDepartments]?, manager: StoreManagerSerializer?, name: String?, timing: [StoreTiming]?, uid: Int?, customJson: [String: Any]?) {
            self.name = name

            self.address = address

            self.manager = manager

            self.timing = timing

            self.departments = departments

            self.contactNumbers = contactNumbers

            self.uid = uid

            self.customJson = customJson

            self.company = company
        }

        public func duplicate() -> StoreDetails {
            let dict = self.dictionary!
            let copy = StoreDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode(StoreAddressSerializer.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                manager = try container.decode(StoreManagerSerializer.self, forKey: .manager)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timing = try container.decode([StoreTiming].self, forKey: .timing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                departments = try container.decode([StoreDepartments].self, forKey: .departments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                company = try container.decode(CompanyStore.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(company, forKey: .company)
        }
    }

    /*
         Model: Size
         Used By: Catalog
     */
    class Size: Codable {
        public var isAvailable: Bool?

        public var quantity: Int?

        public var display: String?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case isAvailable = "is_available"

            case quantity

            case display

            case value
        }

        public init(display: String?, isAvailable: Bool?, quantity: Int?, value: String?) {
            self.isAvailable = isAvailable

            self.quantity = quantity

            self.display = display

            self.value = value
        }

        public func duplicate() -> Size {
            let dict = self.dictionary!
            let copy = Size(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isAvailable = try container.decode(Bool.self, forKey: .isAvailable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: Price1
         Used By: Catalog
     */
    class Price1: Codable {
        public var maxMarked: Double?

        public var minMarked: Double?

        public var minEffective: Double?

        public var currency: String?

        public var maxEffective: Double?

        public enum CodingKeys: String, CodingKey {
            case maxMarked = "max_marked"

            case minMarked = "min_marked"

            case minEffective = "min_effective"

            case currency

            case maxEffective = "max_effective"
        }

        public init(currency: String?, maxEffective: Double?, maxMarked: Double?, minEffective: Double?, minMarked: Double?) {
            self.maxMarked = maxMarked

            self.minMarked = minMarked

            self.minEffective = minEffective

            self.currency = currency

            self.maxEffective = maxEffective
        }

        public func duplicate() -> Price1 {
            let dict = self.dictionary!
            let copy = Price1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                maxMarked = try container.decode(Double.self, forKey: .maxMarked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                minMarked = try container.decode(Double.self, forKey: .minMarked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                minEffective = try container.decode(Double.self, forKey: .minEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maxEffective = try container.decode(Double.self, forKey: .maxEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(maxMarked, forKey: .maxMarked)

            try? container.encodeIfPresent(minMarked, forKey: .minMarked)

            try? container.encodeIfPresent(minEffective, forKey: .minEffective)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(maxEffective, forKey: .maxEffective)
        }
    }

    /*
         Model: ProductDetails
         Used By: Catalog
     */
    class ProductDetails: Codable {
        public var description: String?

        public var itemCode: String?

        public var shortDescription: String?

        public var images: [[String: Any]]?

        public var isSet: Bool?

        public var templateTag: String?

        public var brandUid: Int?

        public var outOfStock: Bool?

        public var identifier: [String: Any]?

        public var ratingCount: Int?

        public var hsnCode: Int?

        public var countryOfOrigin: String?

        public var slug: String?

        public var imageNature: String?

        public var rating: Double?

        public var hasVariant: Bool?

        public var name: String?

        public var attributes: [String: Any]?

        public var media: [[String: Any]]?

        public var groupedAttributes: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case description

            case itemCode = "item_code"

            case shortDescription = "short_description"

            case images

            case isSet = "is_set"

            case templateTag = "template_tag"

            case brandUid = "brand_uid"

            case outOfStock = "out_of_stock"

            case identifier

            case ratingCount = "rating_count"

            case hsnCode = "hsn_code"

            case countryOfOrigin = "country_of_origin"

            case slug

            case imageNature = "image_nature"

            case rating

            case hasVariant = "has_variant"

            case name

            case attributes

            case media

            case groupedAttributes = "grouped_attributes"
        }

        public init(attributes: [String: Any]?, brandUid: Int?, countryOfOrigin: String?, description: String?, groupedAttributes: [String: Any]?, hasVariant: Bool?, hsnCode: Int?, identifier: [String: Any]?, images: [[String: Any]]?, imageNature: String?, isSet: Bool?, itemCode: String?, media: [[String: Any]]?, name: String?, outOfStock: Bool?, rating: Double?, ratingCount: Int?, shortDescription: String?, slug: String?, templateTag: String?) {
            self.description = description

            self.itemCode = itemCode

            self.shortDescription = shortDescription

            self.images = images

            self.isSet = isSet

            self.templateTag = templateTag

            self.brandUid = brandUid

            self.outOfStock = outOfStock

            self.identifier = identifier

            self.ratingCount = ratingCount

            self.hsnCode = hsnCode

            self.countryOfOrigin = countryOfOrigin

            self.slug = slug

            self.imageNature = imageNature

            self.rating = rating

            self.hasVariant = hasVariant

            self.name = name

            self.attributes = attributes

            self.media = media

            self.groupedAttributes = groupedAttributes
        }

        public func duplicate() -> ProductDetails {
            let dict = self.dictionary!
            let copy = ProductDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                description = try container.decode(String.self, forKey: .description)

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
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                images = try container.decode([[String: Any]].self, forKey: .images)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                templateTag = try container.decode(String.self, forKey: .templateTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandUid = try container.decode(Int.self, forKey: .brandUid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                outOfStock = try container.decode(Bool.self, forKey: .outOfStock)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifier = try container.decode([String: Any].self, forKey: .identifier)

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
                hsnCode = try container.decode(Int.self, forKey: .hsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

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
                rating = try container.decode(Double.self, forKey: .rating)

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
                name = try container.decode(String.self, forKey: .name)

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
                media = try container.decode([[String: Any]].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                groupedAttributes = try container.decode([String: Any].self, forKey: .groupedAttributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
        }
    }

    /*
         Model: Products
         Used By: Catalog
     */
    class Products: Codable {
        public var autoSelect: Bool?

        public var sizes: [Size]?

        public var price: Price1?

        public var productDetails: ProductDetails?

        public var minQuantity: Int?

        public var autoAddToCart: Bool?

        public var productUid: Int?

        public var maxQuantity: Int?

        public var allowRemove: Bool?

        public enum CodingKeys: String, CodingKey {
            case autoSelect = "auto_select"

            case sizes

            case price

            case productDetails = "product_details"

            case minQuantity = "min_quantity"

            case autoAddToCart = "auto_add_to_cart"

            case productUid = "product_uid"

            case maxQuantity = "max_quantity"

            case allowRemove = "allow_remove"
        }

        public init(allowRemove: Bool?, autoAddToCart: Bool?, autoSelect: Bool?, maxQuantity: Int?, minQuantity: Int?, price: Price1?, productDetails: ProductDetails?, productUid: Int?, sizes: [Size]?) {
            self.autoSelect = autoSelect

            self.sizes = sizes

            self.price = price

            self.productDetails = productDetails

            self.minQuantity = minQuantity

            self.autoAddToCart = autoAddToCart

            self.productUid = productUid

            self.maxQuantity = maxQuantity

            self.allowRemove = allowRemove
        }

        public func duplicate() -> Products {
            let dict = self.dictionary!
            let copy = Products(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                autoSelect = try container.decode(Bool.self, forKey: .autoSelect)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizes = try container.decode([Size].self, forKey: .sizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(Price1.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productDetails = try container.decode(ProductDetails.self, forKey: .productDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                minQuantity = try container.decode(Int.self, forKey: .minQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                autoAddToCart = try container.decode(Bool.self, forKey: .autoAddToCart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productUid = try container.decode(Int.self, forKey: .productUid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowRemove = try container.decode(Bool.self, forKey: .allowRemove)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(productDetails, forKey: .productDetails)

            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)

            try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)

            try? container.encodeIfPresent(productUid, forKey: .productUid)

            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)

            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)
        }
    }

    /*
         Model: GetGroupedProducts
         Used By: Catalog
     */
    class GetGroupedProducts: Codable {
        public var name: String?

        public var meta: [String: Any]?

        public var pageVisibility: [String]?

        public var choice: String?

        public var companyId: Int?

        public var active: Bool?

        public var slug: String?

        public var logo: String?

        public var sameStoreAssignment: Bool?

        public var products: [Products]?

        public enum CodingKeys: String, CodingKey {
            case name

            case meta

            case pageVisibility = "page_visibility"

            case choice

            case companyId = "company_id"

            case active

            case slug

            case logo

            case sameStoreAssignment = "same_store_assignment"

            case products
        }

        public init(active: Bool?, choice: String?, companyId: Int?, logo: String?, meta: [String: Any]?, name: String?, pageVisibility: [String]?, products: [Products]?, sameStoreAssignment: Bool?, slug: String?) {
            self.name = name

            self.meta = meta

            self.pageVisibility = pageVisibility

            self.choice = choice

            self.companyId = companyId

            self.active = active

            self.slug = slug

            self.logo = logo

            self.sameStoreAssignment = sameStoreAssignment

            self.products = products
        }

        public func duplicate() -> GetGroupedProducts {
            let dict = self.dictionary!
            let copy = GetGroupedProducts(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pageVisibility = try container.decode([String].self, forKey: .pageVisibility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                choice = try container.decode(String.self, forKey: .choice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                products = try container.decode([Products].self, forKey: .products)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(products, forKey: .products)
        }
    }

    /*
         Model: ProductBundle
         Used By: Catalog
     */
    class ProductBundle: Codable {
        public var items: [GetGroupedProducts]?

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: [GetGroupedProducts]?) {
            self.items = items
        }

        public func duplicate() -> ProductBundle {
            let dict = self.dictionary!
            let copy = ProductBundle(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([GetGroupedProducts].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: ProductStockPriceV2
         Used By: Catalog
     */
    class ProductStockPriceV2: Codable {
        public var effective: Double?

        public var marked: Double?

        public var currency: String?

        public enum CodingKeys: String, CodingKey {
            case effective

            case marked

            case currency
        }

        public init(currency: String?, effective: Double?, marked: Double?) {
            self.effective = effective

            self.marked = marked

            self.currency = currency
        }

        public func duplicate() -> ProductStockPriceV2 {
            let dict = self.dictionary!
            let copy = ProductStockPriceV2(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                effective = try container.decode(Double.self, forKey: .effective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marked = try container.decode(Double.self, forKey: .marked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }

    /*
         Model: StoreV2
         Used By: Catalog
     */
    class StoreV2: Codable {
        public var name: String?

        public var uid: Int?

        public var count: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case uid

            case count
        }

        public init(count: Int?, name: String?, uid: Int?) {
            self.name = name

            self.uid = uid

            self.count = count
        }

        public func duplicate() -> StoreV2 {
            let dict = self.dictionary!
            let copy = StoreV2(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

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
                count = try container.decode(Int.self, forKey: .count)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(count, forKey: .count)
        }
    }

    /*
         Model: ArticleAssignmentV2
         Used By: Catalog
     */
    class ArticleAssignmentV2: Codable {
        public var level: String?

        public var strategy: String?

        public enum CodingKeys: String, CodingKey {
            case level

            case strategy
        }

        public init(level: String?, strategy: String?) {
            self.level = level

            self.strategy = strategy
        }

        public func duplicate() -> ArticleAssignmentV2 {
            let dict = self.dictionary!
            let copy = ArticleAssignmentV2(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                level = try container.decode(String.self, forKey: .level)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                strategy = try container.decode(String.self, forKey: .strategy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(level, forKey: .level)

            try? container.encodeIfPresent(strategy, forKey: .strategy)
        }
    }

    /*
         Model: ReturnConfigSchemaV2
         Used By: Catalog
     */
    class ReturnConfigSchemaV2: Codable {
        public var unit: String?

        public var time: Int?

        public var returnable: Bool?

        public enum CodingKeys: String, CodingKey {
            case unit

            case time

            case returnable
        }

        public init(returnable: Bool?, time: Int?, unit: String?) {
            self.unit = unit

            self.time = time

            self.returnable = returnable
        }

        public func duplicate() -> ReturnConfigSchemaV2 {
            let dict = self.dictionary!
            let copy = ReturnConfigSchemaV2(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                unit = try container.decode(String.self, forKey: .unit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                time = try container.decode(Int.self, forKey: .time)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnable = try container.decode(Bool.self, forKey: .returnable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(time, forKey: .time)

            try? container.encodeIfPresent(returnable, forKey: .returnable)
        }
    }

    /*
         Model: SellerV2
         Used By: Catalog
     */
    class SellerV2: Codable {
        public var name: String?

        public var uid: Int?

        public var count: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case uid

            case count
        }

        public init(count: Int?, name: String?, uid: Int?) {
            self.name = name

            self.uid = uid

            self.count = count
        }

        public func duplicate() -> SellerV2 {
            let dict = self.dictionary!
            let copy = SellerV2(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

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
                count = try container.decode(Int.self, forKey: .count)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(count, forKey: .count)
        }
    }

    /*
         Model: ProductSetDistributionSizeV2
         Used By: Catalog
     */
    class ProductSetDistributionSizeV2: Codable {
        public var size: String?

        public var pieces: Int?

        public enum CodingKeys: String, CodingKey {
            case size

            case pieces
        }

        public init(pieces: Int?, size: String?) {
            self.size = size

            self.pieces = pieces
        }

        public func duplicate() -> ProductSetDistributionSizeV2 {
            let dict = self.dictionary!
            let copy = ProductSetDistributionSizeV2(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pieces = try container.decode(Int.self, forKey: .pieces)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(pieces, forKey: .pieces)
        }
    }

    /*
         Model: ProductSetDistributionV2
         Used By: Catalog
     */
    class ProductSetDistributionV2: Codable {
        public var sizes: [ProductSetDistributionSizeV2]?

        public enum CodingKeys: String, CodingKey {
            case sizes
        }

        public init(sizes: [ProductSetDistributionSizeV2]?) {
            self.sizes = sizes
        }

        public func duplicate() -> ProductSetDistributionV2 {
            let dict = self.dictionary!
            let copy = ProductSetDistributionV2(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sizes = try container.decode([ProductSetDistributionSizeV2].self, forKey: .sizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sizes, forKey: .sizes)
        }
    }

    /*
         Model: ProductSetV2
         Used By: Catalog
     */
    class ProductSetV2: Codable {
        public var quantity: Int?

        public var sizeDistribution: ProductSetDistributionV2?

        public enum CodingKeys: String, CodingKey {
            case quantity

            case sizeDistribution = "size_distribution"
        }

        public init(quantity: Int?, sizeDistribution: ProductSetDistributionV2?) {
            self.quantity = quantity

            self.sizeDistribution = sizeDistribution
        }

        public func duplicate() -> ProductSetV2 {
            let dict = self.dictionary!
            let copy = ProductSetV2(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizeDistribution = try container.decode(ProductSetDistributionV2.self, forKey: .sizeDistribution)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sizeDistribution, forKey: .sizeDistribution)
        }
    }

    /*
         Model: StrategyWiseListingSchemaV2
         Used By: Catalog
     */
    class StrategyWiseListingSchemaV2: Codable {
        public var pincode: Int?

        public var quantity: Int?

        public var tat: Int?

        public var distance: Int?

        public enum CodingKeys: String, CodingKey {
            case pincode

            case quantity

            case tat

            case distance
        }

        public init(distance: Int?, pincode: Int?, quantity: Int?, tat: Int?) {
            self.pincode = pincode

            self.quantity = quantity

            self.tat = tat

            self.distance = distance
        }

        public func duplicate() -> StrategyWiseListingSchemaV2 {
            let dict = self.dictionary!
            let copy = StrategyWiseListingSchemaV2(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tat = try container.decode(Int.self, forKey: .tat)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                distance = try container.decode(Int.self, forKey: .distance)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(tat, forKey: .tat)

            try? container.encodeIfPresent(distance, forKey: .distance)
        }
    }

    /*
         Model: DetailsSchemaV2
         Used By: Catalog
     */
    class DetailsSchemaV2: Codable {
        public var type: String?

        public var value: String?

        public var key: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case value

            case key
        }

        public init(key: String?, type: String?, value: String?) {
            self.type = type

            self.value = value

            self.key = key
        }

        public func duplicate() -> DetailsSchemaV2 {
            let dict = self.dictionary!
            let copy = DetailsSchemaV2(dictionary: dict)!
            return copy
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
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(key, forKey: .key)
        }
    }

    /*
         Model: MarketPlaceSttributesSchemaV2
         Used By: Catalog
     */
    class MarketPlaceSttributesSchemaV2: Codable {
        public var details: [DetailsSchemaV2]?

        public var title: String?

        public enum CodingKeys: String, CodingKey {
            case details

            case title
        }

        public init(details: [DetailsSchemaV2]?, title: String?) {
            self.details = details

            self.title = title
        }

        public func duplicate() -> MarketPlaceSttributesSchemaV2 {
            let dict = self.dictionary!
            let copy = MarketPlaceSttributesSchemaV2(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                details = try container.decode([DetailsSchemaV2].self, forKey: .details)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }

    /*
         Model: ProductSizePriceResponseV2
         Used By: Catalog
     */
    class ProductSizePriceResponseV2: Codable {
        public var itemType: String?

        public var price: ProductStockPriceV2?

        public var store: StoreV2?

        public var sellerCount: Int?

        public var pincode: Int?

        public var articleAssignment: ArticleAssignmentV2?

        public var quantity: Int?

        public var specialBadge: String?

        public var discount: String?

        public var articleId: String?

        public var longLat: [Double]?

        public var returnConfig: ReturnConfigSchemaV2?

        public var seller: SellerV2?

        public var set: ProductSetV2?

        public var strategyWiseListing: [StrategyWiseListingSchemaV2]?

        public var marketplaceAttributes: [MarketPlaceSttributesSchemaV2]?

        public var pricePerPiece: ProductStockPriceV2?

        public enum CodingKeys: String, CodingKey {
            case itemType = "item_type"

            case price

            case store

            case sellerCount = "seller_count"

            case pincode

            case articleAssignment = "article_assignment"

            case quantity

            case specialBadge = "special_badge"

            case discount

            case articleId = "article_id"

            case longLat = "long_lat"

            case returnConfig = "return_config"

            case seller

            case set

            case strategyWiseListing = "strategy_wise_listing"

            case marketplaceAttributes = "marketplace_attributes"

            case pricePerPiece = "price_per_piece"
        }

        public init(articleAssignment: ArticleAssignmentV2?, articleId: String?, discount: String?, itemType: String?, longLat: [Double]?, marketplaceAttributes: [MarketPlaceSttributesSchemaV2]?, pincode: Int?, price: ProductStockPriceV2?, pricePerPiece: ProductStockPriceV2?, quantity: Int?, returnConfig: ReturnConfigSchemaV2?, seller: SellerV2?, sellerCount: Int?, set: ProductSetV2?, specialBadge: String?, store: StoreV2?, strategyWiseListing: [StrategyWiseListingSchemaV2]?) {
            self.itemType = itemType

            self.price = price

            self.store = store

            self.sellerCount = sellerCount

            self.pincode = pincode

            self.articleAssignment = articleAssignment

            self.quantity = quantity

            self.specialBadge = specialBadge

            self.discount = discount

            self.articleId = articleId

            self.longLat = longLat

            self.returnConfig = returnConfig

            self.seller = seller

            self.set = set

            self.strategyWiseListing = strategyWiseListing

            self.marketplaceAttributes = marketplaceAttributes

            self.pricePerPiece = pricePerPiece
        }

        public func duplicate() -> ProductSizePriceResponseV2 {
            let dict = self.dictionary!
            let copy = ProductSizePriceResponseV2(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemType = try container.decode(String.self, forKey: .itemType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(ProductStockPriceV2.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                store = try container.decode(StoreV2.self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerCount = try container.decode(Int.self, forKey: .sellerCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleAssignment = try container.decode(ArticleAssignmentV2.self, forKey: .articleAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                specialBadge = try container.decode(String.self, forKey: .specialBadge)

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
                articleId = try container.decode(String.self, forKey: .articleId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                longLat = try container.decode([Double].self, forKey: .longLat)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnConfig = try container.decode(ReturnConfigSchemaV2.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                seller = try container.decode(SellerV2.self, forKey: .seller)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                set = try container.decode(ProductSetV2.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                strategyWiseListing = try container.decode([StrategyWiseListingSchemaV2].self, forKey: .strategyWiseListing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marketplaceAttributes = try container.decode([MarketPlaceSttributesSchemaV2].self, forKey: .marketplaceAttributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pricePerPiece = try container.decode(ProductStockPriceV2.self, forKey: .pricePerPiece)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(sellerCount, forKey: .sellerCount)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(specialBadge, forKey: .specialBadge)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(articleId, forKey: .articleId)

            try? container.encodeIfPresent(longLat, forKey: .longLat)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(seller, forKey: .seller)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)

            try? container.encodeIfPresent(marketplaceAttributes, forKey: .marketplaceAttributes)

            try? container.encodeIfPresent(pricePerPiece, forKey: .pricePerPiece)
        }
    }

    /*
         Model: ProductSizeSellerFilterSchemaV2
         Used By: Catalog
     */
    class ProductSizeSellerFilterSchemaV2: Codable {
        public var name: String?

        public var isSelected: Bool?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case isSelected = "is_selected"

            case value
        }

        public init(isSelected: Bool?, name: String?, value: String?) {
            self.name = name

            self.isSelected = isSelected

            self.value = value
        }

        public func duplicate() -> ProductSizeSellerFilterSchemaV2 {
            let dict = self.dictionary!
            let copy = ProductSizeSellerFilterSchemaV2(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isSelected = try container.decode(Bool.self, forKey: .isSelected)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isSelected, forKey: .isSelected)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: ProductSizeSellersResponseV2
         Used By: Catalog
     */
    class ProductSizeSellersResponseV2: Codable {
        public var sortOn: [ProductSizeSellerFilterSchemaV2]?

        public var items: [ProductSizePriceResponseV2]?

        public var page: Page

        public enum CodingKeys: String, CodingKey {
            case sortOn = "sort_on"

            case items

            case page
        }

        public init(items: [ProductSizePriceResponseV2]?, page: Page, sortOn: [ProductSizeSellerFilterSchemaV2]?) {
            self.sortOn = sortOn

            self.items = items

            self.page = page
        }

        public func duplicate() -> ProductSizeSellersResponseV2 {
            let dict = self.dictionary!
            let copy = ProductSizeSellersResponseV2(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sortOn = try container.decode([ProductSizeSellerFilterSchemaV2].self, forKey: .sortOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([ProductSizePriceResponseV2].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            page = try container.decode(Page.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
