

import Foundation
public extension PlatformClient {
    /*
         Model: CategoryData
         Used By: Lead
     */

    class CategoryData: Codable {
        public var id: String?

        public var timestamps: [String: Any]?

        public var list: CategorySchema?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case timestamps

            case list
        }

        public init(list: CategorySchema? = nil, timestamps: [String: Any]? = nil, id: String? = nil) {
            self.id = id

            self.timestamps = timestamps

            self.list = list
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timestamps = try container.decode([String: Any].self, forKey: .timestamps)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                list = try container.decode(CategorySchema.self, forKey: .list)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(timestamps, forKey: .timestamps)

            try? container.encodeIfPresent(list, forKey: .list)
        }
    }
}
