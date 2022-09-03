

import Foundation
public extension PlatformClient {
    /*
         Model: EntityRegionViewResponse
         Used By: Serviceability
     */

    class EntityRegionViewResponse: Codable {
        public var error: EntityRegionViewError

        public var page: EntityRegionViewPage

        public var data: [EntityRegionViewItems]

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case error

            case page

            case data

            case success
        }

        public init(data: [EntityRegionViewItems], error: EntityRegionViewError, page: EntityRegionViewPage, success: Bool) {
            self.error = error

            self.page = page

            self.data = data

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            error = try container.decode(EntityRegionViewError.self, forKey: .error)

            page = try container.decode(EntityRegionViewPage.self, forKey: .page)

            data = try container.decode([EntityRegionViewItems].self, forKey: .data)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
