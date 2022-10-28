

import Foundation
public extension PlatformClient {
    /*
         Model: EntityRegionViewResponse
         Used By: Serviceability
     */

    class EntityRegionViewResponse: Codable {
        public var success: Bool

        public var data: [EntityRegionViewItems]

        public var page: EntityRegionViewPage

        public var error: EntityRegionViewError

        public enum CodingKeys: String, CodingKey {
            case success

            case data

            case page

            case error
        }

        public init(data: [EntityRegionViewItems], error: EntityRegionViewError, page: EntityRegionViewPage, success: Bool) {
            self.success = success

            self.data = data

            self.page = page

            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode([EntityRegionViewItems].self, forKey: .data)

            page = try container.decode(EntityRegionViewPage.self, forKey: .page)

            error = try container.decode(EntityRegionViewError.self, forKey: .error)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }
}
