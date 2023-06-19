

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: Feature
         Used By: Theme
     */
    class Feature: Codable {
        public var category: String?

        public var list: [FeatureItem]?

        public enum CodingKeys: String, CodingKey {
            case category

            case list
        }

        public init(category: String? = nil, list: [FeatureItem]? = nil) {
            self.category = category

            self.list = list
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                category = try container.decode(String.self, forKey: .category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                list = try container.decode([FeatureItem].self, forKey: .list)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(list, forKey: .list)
        }
    }
}
