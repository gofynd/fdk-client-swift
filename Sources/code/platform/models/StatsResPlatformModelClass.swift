import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: StatsRes
         Used By: Analytics
     */

    class StatsRes: Codable {
        public var key: String?

        public var title: String?

        public var type: String?

        public var data: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case key

            case title

            case type

            case data
        }

        public init(data: [String: Any]?, key: String?, title: String?, type: String?) {
            self.key = key

            self.title = title

            self.type = type

            self.data = data
        }

        public func duplicate() -> StatsRes {
            let dict = self.dictionary!
            let copy = StatsRes(dictionary: dict)!
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
                title = try container.decode(String.self, forKey: .title)

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
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
