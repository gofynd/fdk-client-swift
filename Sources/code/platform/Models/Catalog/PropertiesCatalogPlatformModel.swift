

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: Properties
         Used By: Catalog
     */

    class Properties: Codable {
        public var categorySlug: [String: Any]?

        public var highlights: [String: Any]?

        public var itemType: [String: Any]?

        public var multiSize: [String: Any]?

        public var variants: [String: Any]?

        public var command: [String: Any]?

        public var productPublish: [String: Any]?

        public var sizes: [String: Any]?

        public var countryOfOrigin: [String: Any]?

        public var noOfBoxes: [String: Any]?

        public var shortDescription: [String: Any]?

        public var productGroupTag: [String: Any]?

        public var description: [String: Any]?

        public var isActive: [String: Any]?

        public var returnConfig: [String: Any]?

        public var isDependent: [String: Any]?

        public var hsnCode: [String: Any]?

        public var currency: [String: Any]?

        public var slug: [String: Any]?

        public var itemCode: [String: Any]?

        public var tags: [String: Any]?

        public var brandUid: [String: Any]?

        public var traderType: [String: Any]?

        public var name: [String: Any]?

        public var teaserTag: [String: Any]?

        public var media: [String: Any]?

        public var trader: [String: Any]?

        public var customOrder: [String: Any]?

        public var sizeGuide: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case categorySlug = "category_slug"

            case highlights

            case itemType = "item_type"

            case multiSize = "multi_size"

            case variants

            case command

            case productPublish = "product_publish"

            case sizes

            case countryOfOrigin = "country_of_origin"

            case noOfBoxes = "no_of_boxes"

            case shortDescription = "short_description"

            case productGroupTag = "product_group_tag"

            case description

            case isActive = "is_active"

            case returnConfig = "return_config"

            case isDependent = "is_dependent"

            case hsnCode = "hsn_code"

            case currency

            case slug

            case itemCode = "item_code"

            case tags

            case brandUid = "brand_uid"

            case traderType = "trader_type"

            case name

            case teaserTag = "teaser_tag"

            case media

            case trader

            case customOrder = "custom_order"

            case sizeGuide = "size_guide"
        }

        public init(brandUid: [String: Any]? = nil, categorySlug: [String: Any]? = nil, command: [String: Any]? = nil, countryOfOrigin: [String: Any]? = nil, currency: [String: Any]? = nil, customOrder: [String: Any]? = nil, description: [String: Any]? = nil, highlights: [String: Any]? = nil, hsnCode: [String: Any]? = nil, isActive: [String: Any]? = nil, isDependent: [String: Any]? = nil, itemCode: [String: Any]? = nil, itemType: [String: Any]? = nil, media: [String: Any]? = nil, multiSize: [String: Any]? = nil, name: [String: Any]? = nil, noOfBoxes: [String: Any]? = nil, productGroupTag: [String: Any]? = nil, productPublish: [String: Any]? = nil, returnConfig: [String: Any]? = nil, shortDescription: [String: Any]? = nil, sizes: [String: Any]? = nil, sizeGuide: [String: Any]? = nil, slug: [String: Any]? = nil, tags: [String: Any]? = nil, teaserTag: [String: Any]? = nil, trader: [String: Any]? = nil, traderType: [String: Any]? = nil, variants: [String: Any]? = nil) {
            self.categorySlug = categorySlug

            self.highlights = highlights

            self.itemType = itemType

            self.multiSize = multiSize

            self.variants = variants

            self.command = command

            self.productPublish = productPublish

            self.sizes = sizes

            self.countryOfOrigin = countryOfOrigin

            self.noOfBoxes = noOfBoxes

            self.shortDescription = shortDescription

            self.productGroupTag = productGroupTag

            self.description = description

            self.isActive = isActive

            self.returnConfig = returnConfig

            self.isDependent = isDependent

            self.hsnCode = hsnCode

            self.currency = currency

            self.slug = slug

            self.itemCode = itemCode

            self.tags = tags

            self.brandUid = brandUid

            self.traderType = traderType

            self.name = name

            self.teaserTag = teaserTag

            self.media = media

            self.trader = trader

            self.customOrder = customOrder

            self.sizeGuide = sizeGuide
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                categorySlug = try container.decode([String: Any].self, forKey: .categorySlug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                highlights = try container.decode([String: Any].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemType = try container.decode([String: Any].self, forKey: .itemType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                multiSize = try container.decode([String: Any].self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                command = try container.decode([String: Any].self, forKey: .command)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productPublish = try container.decode([String: Any].self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizes = try container.decode([String: Any].self, forKey: .sizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                countryOfOrigin = try container.decode([String: Any].self, forKey: .countryOfOrigin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                noOfBoxes = try container.decode([String: Any].self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shortDescription = try container.decode([String: Any].self, forKey: .shortDescription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productGroupTag = try container.decode([String: Any].self, forKey: .productGroupTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode([String: Any].self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode([String: Any].self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnConfig = try container.decode([String: Any].self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDependent = try container.decode([String: Any].self, forKey: .isDependent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hsnCode = try container.decode([String: Any].self, forKey: .hsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode([String: Any].self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode([String: Any].self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemCode = try container.decode([String: Any].self, forKey: .itemCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String: Any].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandUid = try container.decode([String: Any].self, forKey: .brandUid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                traderType = try container.decode([String: Any].self, forKey: .traderType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode([String: Any].self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                teaserTag = try container.decode([String: Any].self, forKey: .teaserTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                media = try container.decode([String: Any].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trader = try container.decode([String: Any].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customOrder = try container.decode([String: Any].self, forKey: .customOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizeGuide = try container.decode([String: Any].self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(command, forKey: .command)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(traderType, forKey: .traderType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: Properties
         Used By: Catalog
     */

    class Properties: Codable {
        public var categorySlug: [String: Any]?

        public var highlights: [String: Any]?

        public var itemType: [String: Any]?

        public var multiSize: [String: Any]?

        public var variants: [String: Any]?

        public var command: [String: Any]?

        public var productPublish: [String: Any]?

        public var sizes: [String: Any]?

        public var countryOfOrigin: [String: Any]?

        public var noOfBoxes: [String: Any]?

        public var shortDescription: [String: Any]?

        public var productGroupTag: [String: Any]?

        public var description: [String: Any]?

        public var isActive: [String: Any]?

        public var returnConfig: [String: Any]?

        public var isDependent: [String: Any]?

        public var hsnCode: [String: Any]?

        public var currency: [String: Any]?

        public var slug: [String: Any]?

        public var itemCode: [String: Any]?

        public var tags: [String: Any]?

        public var brandUid: [String: Any]?

        public var traderType: [String: Any]?

        public var name: [String: Any]?

        public var teaserTag: [String: Any]?

        public var media: [String: Any]?

        public var trader: [String: Any]?

        public var customOrder: [String: Any]?

        public var sizeGuide: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case categorySlug = "category_slug"

            case highlights

            case itemType = "item_type"

            case multiSize = "multi_size"

            case variants

            case command

            case productPublish = "product_publish"

            case sizes

            case countryOfOrigin = "country_of_origin"

            case noOfBoxes = "no_of_boxes"

            case shortDescription = "short_description"

            case productGroupTag = "product_group_tag"

            case description

            case isActive = "is_active"

            case returnConfig = "return_config"

            case isDependent = "is_dependent"

            case hsnCode = "hsn_code"

            case currency

            case slug

            case itemCode = "item_code"

            case tags

            case brandUid = "brand_uid"

            case traderType = "trader_type"

            case name

            case teaserTag = "teaser_tag"

            case media

            case trader

            case customOrder = "custom_order"

            case sizeGuide = "size_guide"
        }

        public init(brandUid: [String: Any]? = nil, categorySlug: [String: Any]? = nil, command: [String: Any]? = nil, countryOfOrigin: [String: Any]? = nil, currency: [String: Any]? = nil, customOrder: [String: Any]? = nil, description: [String: Any]? = nil, highlights: [String: Any]? = nil, hsnCode: [String: Any]? = nil, isActive: [String: Any]? = nil, isDependent: [String: Any]? = nil, itemCode: [String: Any]? = nil, itemType: [String: Any]? = nil, media: [String: Any]? = nil, multiSize: [String: Any]? = nil, name: [String: Any]? = nil, noOfBoxes: [String: Any]? = nil, productGroupTag: [String: Any]? = nil, productPublish: [String: Any]? = nil, returnConfig: [String: Any]? = nil, shortDescription: [String: Any]? = nil, sizes: [String: Any]? = nil, sizeGuide: [String: Any]? = nil, slug: [String: Any]? = nil, tags: [String: Any]? = nil, teaserTag: [String: Any]? = nil, trader: [String: Any]? = nil, traderType: [String: Any]? = nil, variants: [String: Any]? = nil) {
            self.categorySlug = categorySlug

            self.highlights = highlights

            self.itemType = itemType

            self.multiSize = multiSize

            self.variants = variants

            self.command = command

            self.productPublish = productPublish

            self.sizes = sizes

            self.countryOfOrigin = countryOfOrigin

            self.noOfBoxes = noOfBoxes

            self.shortDescription = shortDescription

            self.productGroupTag = productGroupTag

            self.description = description

            self.isActive = isActive

            self.returnConfig = returnConfig

            self.isDependent = isDependent

            self.hsnCode = hsnCode

            self.currency = currency

            self.slug = slug

            self.itemCode = itemCode

            self.tags = tags

            self.brandUid = brandUid

            self.traderType = traderType

            self.name = name

            self.teaserTag = teaserTag

            self.media = media

            self.trader = trader

            self.customOrder = customOrder

            self.sizeGuide = sizeGuide
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                categorySlug = try container.decode([String: Any].self, forKey: .categorySlug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                highlights = try container.decode([String: Any].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemType = try container.decode([String: Any].self, forKey: .itemType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                multiSize = try container.decode([String: Any].self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                command = try container.decode([String: Any].self, forKey: .command)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productPublish = try container.decode([String: Any].self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizes = try container.decode([String: Any].self, forKey: .sizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                countryOfOrigin = try container.decode([String: Any].self, forKey: .countryOfOrigin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                noOfBoxes = try container.decode([String: Any].self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shortDescription = try container.decode([String: Any].self, forKey: .shortDescription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productGroupTag = try container.decode([String: Any].self, forKey: .productGroupTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode([String: Any].self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode([String: Any].self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnConfig = try container.decode([String: Any].self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDependent = try container.decode([String: Any].self, forKey: .isDependent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hsnCode = try container.decode([String: Any].self, forKey: .hsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode([String: Any].self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode([String: Any].self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemCode = try container.decode([String: Any].self, forKey: .itemCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String: Any].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandUid = try container.decode([String: Any].self, forKey: .brandUid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                traderType = try container.decode([String: Any].self, forKey: .traderType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode([String: Any].self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                teaserTag = try container.decode([String: Any].self, forKey: .teaserTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                media = try container.decode([String: Any].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trader = try container.decode([String: Any].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customOrder = try container.decode([String: Any].self, forKey: .customOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizeGuide = try container.decode([String: Any].self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(command, forKey: .command)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(traderType, forKey: .traderType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)
        }
    }
}
