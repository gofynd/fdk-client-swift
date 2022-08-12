

import Foundation
public extension PlatformClient {
    /*
         Model: EntityRegionViewResponse
         Used By: Serviceability
     */

    class EntityRegionViewResponse: Codable {
        public var data: [EntityRegionViewItems]

        public var success: Bool

        public var error: EntityRegionViewError

        public var page: EntityRegionViewPage

        public enum CodingKeys: String, CodingKey {
            case data

            case success

            case error

            case page
        }

        public init(data: [EntityRegionViewItems], error: EntityRegionViewError, page: EntityRegionViewPage, success: Bool) {
            self.data = data

            self.success = success

            self.error = error

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode([EntityRegionViewItems].self, forKey: .data)

            success = try container.decode(Bool.self, forKey: .success)

            error = try container.decode(EntityRegionViewError.self, forKey: .error)

            page = try container.decode(EntityRegionViewPage.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
