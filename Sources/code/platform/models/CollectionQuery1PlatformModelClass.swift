

import Foundation
public extension PlatformClient {
    /*
         Model: CollectionQuery1
         Used By: Catalog
     */

    class CollectionQuery1: Codable {
        public var discount: CollectionPrice?

        public var storeIds: [Int]?

        public var sizes: [String]?

        public var imageNature: [String]?

        public var departments: [String]?

        public var genders: [String]?

        public var price: CollectionPrice?

        public var categories: [Int]?

        public var brands: [Int]?

        public var sortOn: String?

        public enum CodingKeys: String, CodingKey {
            case discount

            case storeIds = "store_ids"

            case sizes

            case imageNature = "image_nature"

            case departments

            case genders

            case price

            case categories

            case brands

            case sortOn = "sort_on"
        }

        public init(brands: [Int]? = nil, categories: [Int]? = nil, departments: [String]? = nil, discount: CollectionPrice? = nil, genders: [String]? = nil, imageNature: [String]? = nil, price: CollectionPrice? = nil, sizes: [String]? = nil, sortOn: String? = nil, storeIds: [Int]? = nil) {
            self.discount = discount

            self.storeIds = storeIds

            self.sizes = sizes

            self.imageNature = imageNature

            self.departments = departments

            self.genders = genders

            self.price = price

            self.categories = categories

            self.brands = brands

            self.sortOn = sortOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                discount = try container.decode(CollectionPrice.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeIds = try container.decode([Int].self, forKey: .storeIds)

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
                imageNature = try container.decode([String].self, forKey: .imageNature)

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
                genders = try container.decode([String].self, forKey: .genders)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(CollectionPrice.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                categories = try container.decode([Int].self, forKey: .categories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brands = try container.decode([Int].self, forKey: .brands)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sortOn = try container.decode(String.self, forKey: .sortOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(genders, forKey: .genders)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(categories, forKey: .categories)

            try? container.encodeIfPresent(brands, forKey: .brands)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)
        }
    }
}
