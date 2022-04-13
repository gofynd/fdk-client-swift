import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ConfigurationListingFilterValue
         Used By: Catalog
     */

    class ConfigurationListingFilterValue: Codable {
        public var map: [String: Any]?

        public var bucketPoints: [ConfigurationBucketPoints]?

        public var condition: String?

        public var sort: String?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case map

            case bucketPoints = "bucket_points"

            case condition

            case sort

            case value
        }

        public init(bucketPoints: [ConfigurationBucketPoints]?, condition: String?, map: [String: Any]?, sort: String?, value: String?) {
            self.map = map

            self.bucketPoints = bucketPoints

            self.condition = condition

            self.sort = sort

            self.value = value
        }

        public func duplicate() -> ConfigurationListingFilterValue {
            let dict = self.dictionary!
            let copy = ConfigurationListingFilterValue(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                map = try container.decode([String: Any].self, forKey: .map)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bucketPoints = try container.decode([ConfigurationBucketPoints].self, forKey: .bucketPoints)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                condition = try container.decode(String.self, forKey: .condition)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sort = try container.decode(String.self, forKey: .sort)

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

            try? container.encodeIfPresent(map, forKey: .map)

            try? container.encodeIfPresent(bucketPoints, forKey: .bucketPoints)

            try? container.encodeIfPresent(condition, forKey: .condition)

            try? container.encodeIfPresent(sort, forKey: .sort)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}
