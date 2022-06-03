

import Foundation
public extension PlatformClient {
    /*
         Model: CollectionQuery1
         Used By: Catalog
     */

    class CollectionQuery1: Codable {
        public var sizes: [String]?

        public var brands: [Int]?

        public var sortOn: String?

        public var genders: [String]?

        public var imageNature: [String]?

        public var departments: [String]?

        public var discount: CollectionPrice?

        public var price: CollectionPrice?

        public var storeIds: [Int]?

        public var categories: [Int]?

        public enum CodingKeys: String, CodingKey {
            case sizes

            case brands

            case sortOn = "sort_on"

            case genders

            case imageNature = "image_nature"

            case departments

            case discount

            case price

            case storeIds = "store_ids"

            case categories
        }

        public init(brands: [Int]? = nil, categories: [Int]? = nil, departments: [String]? = nil, discount: CollectionPrice? = nil, genders: [String]? = nil, imageNature: [String]? = nil, price: CollectionPrice? = nil, sizes: [String]? = nil, sortOn: String? = nil, storeIds: [Int]? = nil) {
            self.sizes = sizes

            self.brands = brands

            self.sortOn = sortOn

            self.genders = genders

            self.imageNature = imageNature

            self.departments = departments

            self.discount = discount

            self.price = price

            self.storeIds = storeIds

            self.categories = categories
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sizes = try container.decode([String].self, forKey: .sizes)

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

            do {
                genders = try container.decode([String].self, forKey: .genders)

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
                discount = try container.decode(CollectionPrice.self, forKey: .discount)

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
                storeIds = try container.decode([Int].self, forKey: .storeIds)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(brands, forKey: .brands)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(genders, forKey: .genders)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(categories, forKey: .categories)
        }
    }
}
