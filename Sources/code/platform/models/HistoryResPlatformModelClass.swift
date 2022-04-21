

import Foundation
public extension PlatformClient {
    /*
         Model: HistoryRes
         Used By: Rewards
     */

    class HistoryRes: Codable {
        public var items: [HistoryPretty]?

        public var page: Page?

        public var points: Double?

        public enum CodingKeys: String, CodingKey {
            case items

            case page

            case points
        }

        public init(items: [HistoryPretty]? = nil, page: Page? = nil, points: Double? = nil) {
            self.items = items

            self.page = page

            self.points = points
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([HistoryPretty].self, forKey: .items)

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

            do {
                points = try container.decode(Double.self, forKey: .points)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(points, forKey: .points)
        }
    }
}
